
#include "LimitedLinkedList.hpp"

LimitedLinkedList::LimitedLinkedList(int withLimit) {
    _count = 0;
    _limit = withLimit;
    headPtr = tailPtr = nullptr;
}

bool LimitedLinkedList::isListValidated() {
    if (_count == _limit) {
        node *toDelete = tailPtr;
        tailPtr = toDelete->prev;
        tailPtr->next = nullptr;
        delete toDelete;
        
        return false;
    } else {
        return true;
    }
}

void LimitedLinkedList::push(string data) {
    node *newNode = new node();
    newNode->data = data;
    newNode->next = headPtr;
    headPtr = newNode;
    
    //assign prev pointer on old node
    node *nextNode = newNode->next;
    if (nextNode != nullptr) {
        nextNode->prev = newNode;
    }
    
    //after adding a new node, check if the size of the list has exceeded the limit
    if (isListValidated()) {
        _count += 1;
    } else {
        //do not increment or decrement the count since one node came in, +1 and
        //then at most one node, the tail node, came out -1. Thus, +1 -1 = 0
    }
    
    if (_count == 1) {
        tailPtr = newNode;
    }
}

void LimitedLinkedList::pop() {
    node *toDelete = headPtr;
    if (toDelete != nullptr) { //safe-checking if the list is empty
        //set pointer to the new head pointer node before popping the top-most node */
        headPtr = toDelete->next;
        if (headPtr != nullptr)
            headPtr->prev = nullptr;
        delete toDelete;
        _count -= 1;
    }
}

void LimitedLinkedList::print() {
    node *currentPtr = headPtr;
    while (currentPtr != nullptr) {
        std::cout << currentPtr->data << endl;
        currentPtr = currentPtr->next;
    }
}

void LimitedLinkedList::reverse() {
    node *currentPtr = headPtr;
    node *previousPtr = nullptr;
    node *nextPtr = currentPtr->next;
    while (currentPtr != nullptr) {
        currentPtr->next = previousPtr;
        previousPtr = currentPtr;
        currentPtr = nextPtr;
        
        if (nextPtr != nullptr) {
            nextPtr = nextPtr->next;
        }
    }
    
    headPtr = previousPtr;
}
