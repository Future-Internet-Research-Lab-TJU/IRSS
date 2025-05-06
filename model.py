import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import Dataset, DataLoader
from sklearn.model_selection import train_test_split
from sklearn.metrics import roc_auc_score
from sklearn.preprocessing import LabelEncoder
import pandas as pd


# 自定义数据集类
class CustomDataset(Dataset):
    def __init__(self, data, labels):
        self.data = torch.tensor(data.values, dtype=torch.float32)
        self.labels = torch.tensor(labels.values, dtype=torch.float32).unsqueeze(1)

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        return self.data[idx], self.labels[idx]


# 定义自注意力模块
class SelfAttention(nn.Module):
    def __init__(self, input_dim):
        super(SelfAttention, self).__init__()
        self.W = nn.Linear(input_dim, input_dim)
        self.softmax = nn.Softmax(dim=-1)

    def forward(self, x):
        scores = self.W(x)
        attention_weights = self.softmax(scores)
        output = attention_weights * x
        return output


# 定义分类模型（原版，包含嵌入模块和自注意力模块）
class ClassificationModel(nn.Module):
    def __init__(self, input_dim, embedding_dim):
        super(ClassificationModel, self).__init__()
        self.embedding = nn.Linear(input_dim, embedding_dim)
        self.mlp = nn.Sequential(
            nn.Linear(embedding_dim, 64),
            nn.ReLU(),
            nn.Linear(64, 32),
            nn.ReLU()
        )
        self.attention = SelfAttention(embedding_dim)
        self.fc = nn.Linear(32, 1)
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        embedded = self.embedding(x)
        mlp_output = self.mlp(embedded)
        attention_output = self.attention(embedded)
        combined_output = mlp_output + attention_output[:, :32]
        output = self.fc(combined_output)
        output = self.sigmoid(output)
        return output


# 定义没有嵌入模块的分类模型
class ClassificationModelWithoutEmbedding(nn.Module):
    def __init__(self, input_dim):
        super(ClassificationModelWithoutEmbedding, self).__init__()
        self.input_dim = input_dim  # 保存 input_dim 为类的属性
        self.mlp = nn.Sequential(
            nn.Linear(input_dim, 32),
            nn.ReLU(),
            nn.Linear(32, 32),
            nn.ReLU()
        )
        self.attention = SelfAttention(input_dim)
        self.fc = nn.Linear(32, 1)
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        mlp_output = self.mlp(x)
        attention_output = self.attention(x)
        # 使用 self.input_dim 确保 attention_output 维度与 mlp_output 一致
        attention_output = nn.Linear(self.input_dim, 32)(attention_output)
        combined_output = mlp_output + attention_output
        output = self.fc(combined_output)
        output = self.sigmoid(output)
        return output


# 定义没有自注意力模块的分类模型
class ClassificationModelWithoutAttention(nn.Module):
    def __init__(self, input_dim, embedding_dim):
        super(ClassificationModelWithoutAttention, self).__init__()
        self.embedding = nn.Linear(input_dim, embedding_dim)
        self.mlp = nn.Sequential(
            nn.Linear(embedding_dim, 64),
            nn.ReLU(),
            nn.Linear(64, 32),
            nn.ReLU()
        )
        self.fc = nn.Linear(32, 1)
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        embedded = self.embedding(x)
        mlp_output = self.mlp(embedded)
        output = self.fc(mlp_output)
        output = self.sigmoid(output)
        return output


# 训练模型
def train_model(model, train_loader, criterion, optimizer, epochs):
    model.train()
    for epoch in range(epochs):
        running_loss = 0.0
        for inputs, labels in train_loader:
            optimizer.zero_grad()
            outputs = model(inputs)
            loss = criterion(outputs, labels)
            loss.backward()
            optimizer.step()
            running_loss += loss.item()
        print(f'Epoch {epoch + 1}/{epochs}, Loss: {running_loss / len(train_loader)}')


# 评估模型
def evaluate_model(model, test_loader):
    model.eval()
    all_labels = []
    all_predictions = []
    with torch.no_grad():
        for inputs, labels in test_loader:
            outputs = model(inputs)
            all_labels.extend(labels.cpu().numpy())
            all_predictions.extend(outputs.cpu().numpy())
    auc = roc_auc_score(all_labels, all_predictions)
    print(f'AUC: {auc}')
    return auc


# 主函数
def main():
    try:
        data = pd.read_csv('./merged_label', sep='\t')
    except Exception:
        try:
            # 尝试使用不同的编码格式读取文件
            data = pd.read_csv('./merged_label', sep='\t', encoding='utf-8-sig')
        except Exception as e:
            print(f"读取文件时出错: {e}")
            return

    # 查看列名，去除首尾空格
    columns = [col.strip() for col in data.columns]
    data.columns = columns
    print("文件的列名：", columns)

    # 标签列名
    label_column = 'is_tree'
    try:
        # 分离特征和标签
        X = data.drop(label_column, axis=1)
        y = data[label_column]
    except KeyError:
        print(f"错误：文件中不存在 {label_column} 列，请检查列名。")
        return

    # 对非数值列进行编码
    non_numeric_columns = X.select_dtypes(include=['object']).columns
    for col in non_numeric_columns:
        le = LabelEncoder()
        X[col] = le.fit_transform(X[col])

    # 划分训练集和测试集
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

    # 创建数据集和数据加载器
    train_dataset = CustomDataset(X_train, y_train)
    test_dataset = CustomDataset(X_test, y_test)
    train_loader = DataLoader(train_dataset, batch_size=2000, shuffle=True)
    test_loader = DataLoader(test_dataset, batch_size=2000, shuffle=False)

    # 初始化原版模型、损失函数和优化器
    input_dim = X_train.shape[1]
    embedding_dim = 128
    model = ClassificationModel(input_dim, embedding_dim)
    criterion = nn.BCELoss()
    optimizer = optim.Adam(model.parameters(), lr=0.0001)

    # 训练原版模型
    epochs = 10
    print("训练原版模型：")
    train_model(model, train_loader, criterion, optimizer, epochs)

    # 评估原版模型
    print("评估原版模型：")
    auc = evaluate_model(model, test_loader)

    # 保存原版模型
    torch.save(model.state_dict(), 'classification_model.pt')
    print("原版模型已保存为 classification_model.pt")

    # 初始化没有嵌入模块的模型、损失函数和优化器
    model_without_embedding = ClassificationModelWithoutEmbedding(input_dim)
    optimizer_without_embedding = optim.Adam(model_without_embedding.parameters(), lr=0.0001)

    # 训练没有嵌入模块的模型
    print("训练没有嵌入模块的模型：")
    train_model(model_without_embedding, train_loader, criterion, optimizer_without_embedding, epochs)

    # 评估没有嵌入模块的模型
    print("评估没有嵌入模块的模型：")
    auc_without_embedding = evaluate_model(model_without_embedding, test_loader)

    # 保存没有嵌入模块的模型
    torch.save(model_without_embedding.state_dict(), 'model_without_embedding.pt')
    print("没有嵌入模块的模型已保存为 model_without_embedding.pt")

    # 初始化没有自注意力模块的模型、损失函数和优化器
    model_without_attention = ClassificationModelWithoutAttention(input_dim, embedding_dim)
    optimizer_without_attention = optim.Adam(model_without_attention.parameters(), lr=0.0001)

    # 训练没有自注意力模块的模型
    print("训练没有自注意力模块的模型：")
    train_model(model_without_attention, train_loader, criterion, optimizer_without_attention, epochs)

    # 评估没有自注意力模块的模型
    print("评估没有自注意力模块的模型：")
    auc_without_attention = evaluate_model(model_without_attention, test_loader)

    # 保存没有自注意力模块的模型
    torch.save(model_without_attention.state_dict(), 'model_without_attention.pt')
    print("没有自注意力模块的模型已保存为 model_without_attention.pt")


if __name__ == "__main__":
    main()