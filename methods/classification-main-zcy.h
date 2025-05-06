#ifndef  CLASSIFICATIONMAINZCY_H
#define  CLASSIFICATIONMAINZCY_H

#include "../elementary.h"
#include "../io/io.h"
#include "../methods/dynamictuple/dynamictuple.h"
#include "../methods/multilayertuple/multilayertuple.h"
#include "../methods/pextcuts/pextcuts.h"
#include "../methods/pextcuts/multipextcuts.h"

using namespace std;

int ClassificationMainZcy(CommandStruct command, ProgramState *program_state, ProgramState *program_state_tree, vector<Rule*> &rules, vector<Rule*> &rule_tree, 
                          vector<Trace*> &traces, vector<int> &ans);

#endif