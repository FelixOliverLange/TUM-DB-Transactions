//
// Created by Lange, Felix on 2019-04-29.
//

#include <iostream>
#include <string>
#include <vector>
#include <sstream>
#include <algorithm>

using namespace std;

struct Operation{
    string operationType;
    int transaction;
    string variable;
};

bool isHistoryConflict(Operation op1, Operation op2){
    bool isConflict = false;
    bool sameVariableUsed = (op1.variable == op2.variable);
    bool writeInvolved = (op1.operationType.compare("w") == 0 || op2.operationType.compare("w") == 0);
    bool differentTransaction = (op1.transaction != op2.transaction);
    isConflict = sameVariableUsed && writeInvolved && differentTransaction;
    return isConflict;
}

bool cycleFromPositionOn(bool *graphMatrix, int dimension, int start, vector<int> visitedTransactions){
    bool isCycle = false;

    //outer loop, defining starting point
    for(int i = start; i < dimension; i++){

        //add own transaction to set of visited transactions
        visitedTransactions.push_back(i);

        //traverse other nodes
        for(int j = 0; j < dimension; j++){

            //check rather they are connected
            if(graphMatrix[i*dimension + j]){

                //connection existent, does it lead to a cycle? (early stopping)
                if(find(visitedTransactions.begin(), visitedTransactions.end(), j) != visitedTransactions.end()) {

                    //cycle detected: we already visited j once!
                    return true;

                } else {

                    //no cycle detected: carry on
                    cycleFromPositionOn(graphMatrix, dimension, j, visitedTransactions);

                }
            }
        }
    }
    return isCycle;
}

int main(){
    //input and re-prompt of history to analyze
    string history;
    cout << "please insert history in folowing format: w 1 x r 2 x w 2 y r 3 y w 3 z r 1 z \n";
    getline(cin,history);
    cout << "evaluating history:" << endl << history << endl;

    //split input
    istringstream historyBuffer(history);
    istream_iterator<std::string> beg(historyBuffer), end;
    vector<string> historyVector(beg, end);

    //itterate the vector, parsing it into a vector of our struct
    vector<Operation> operationVector;
    for (int i=0; i < historyVector.size(); i=i+3) {
        Operation op;
        op.operationType = historyVector[i];
        op.transaction = stoi(historyVector[i+1]);
        op.variable = historyVector[i+2];

        operationVector.push_back(op);
    }

    //build graph
    //define matrix of nodes, by determining number of nodes
    int highestTransactionNumber = 0;
    for(auto & op : operationVector){
        if(op.transaction > highestTransactionNumber){
            highestTransactionNumber = op.transaction;
        }
    }
    bool graphMatrix[highestTransactionNumber][highestTransactionNumber];

    //fill matrix
    for(int i = 0; i < operationVector.size() - 1; i++){
        for(int j = i+1; j < operationVector.size(); j++){
            if(isHistoryConflict(operationVector[i], operationVector[j])){
                graphMatrix[highestTransactionNumber][highestTransactionNumber] = true;
            };
        }
    }

    //detect cycles
    vector<int> visitedTransactions;
    bool cylcePresent = cycleFromPositionOn((bool *)graphMatrix, highestTransactionNumber, 0, visitedTransactions);

    //if a cycle is present, we are not serializable -> invert output
    bool serializable = !cylcePresent;

    //output result
    cout << "is history serializable?" << endl;
    cout << std::boolalpha;
    cout << serializable <<endl;

    //wipe data
    memset(graphMatrix, false, sizeof(graphMatrix));
    highestTransactionNumber = 0;

}

