//
// Created by Lange, Felix on 2019-04-29.
//

#include <iostream>
#include <string>
#include <vector>
#include <sstream>

using namespace std;

struct Operation{
    string operationType;
    int transaction;
    string variable;
};

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

}