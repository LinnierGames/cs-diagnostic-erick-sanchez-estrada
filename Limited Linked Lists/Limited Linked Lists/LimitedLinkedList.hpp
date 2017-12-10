#pragma once
#include <iostream>
#include <string>

using namespace std;

class LimitedLinkedList {
public:
    LimitedLinkedList(int withLimit);
    
    /* Adds a new node to the top of the stack */
    void push(string data);
    /* Removes the top-most node for the stack */
    void pop();
    /* iterates throughout the stack using a local iterator */
    void print();
    /* return the count of the stack */
    int count();
    /* reverses the linked list */
    void reverse();
    
private:
    struct node {
        node *next = nullptr;
        node *prev = nullptr;
        string data;
    };
    
    node *headPtr;
    node *tailPtr;
    int _count;
    int _limit;
    /*
     a side-effect method to remove any extra nodes that are exceeding the limit of the list
     @precondition a new node has been pushed to the stack using ::push(string data)
     @warning do not call this unless you're expecting a new node before this call
     @return if no changes were made, returns true. Otherwise, if the list exceeded the limit, return false
     */
    bool isListValidated();
};



