//
//  main.cpp
//  Limited Linked Lists
//
//  Created by Erick Sanchez on 11/22/17.
//  Copyright © 2017 Erick Sanchez. All rights reserved.
//

#include <iostream>

#include "LimitedLinkedList.hpp"

int main(int argc, const char * argv[]) {
    // insert code here...
    LimitedLinkedList myList = LimitedLinkedList(50);
    int count = 0;
    do {
        myList.push(to_string(count));
        count += 1;
    } while (count <= 75);
    
    myList.print();
    cout << "***" << endl;
    myList.reverse();
    myList.print();
    
    // should print numbers 26 through 75
    //myList.print();
    count = 1;
    do {
        myList.pop();
        count += 1;
    } while (count < 75);
    //myList.print();
    
    return 0;
}
