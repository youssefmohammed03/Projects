#pragma once
#ifndef videoLinkedList_H
#define videoLinkedList_H

#include "Video.h"
#include <iostream>
#include <string>
using namespace std;
typedef Video ElementType;

class VideoPlayer;
class VideoList;
class AddressList;

class videoLinkedList
{
private:
    class Node {
    public:

        ElementType data;
        Node* next;
        Node* prev;

        Node() : next(0), prev(0) {}
        Node(ElementType& dataValue) : data(dataValue), next(0), prev(0) {}
    };

    int mySize;
    typedef Node* NodePointer;
    NodePointer first;
    NodePointer last;

    friend class VideoPlayer;
    friend class VideoList;
    friend class AddressList;

public:
    videoLinkedList();
    videoLinkedList(const videoLinkedList& origList);
    ~videoLinkedList();
    const videoLinkedList& operator=(const videoLinkedList& rightSide);
    bool empty();
    void insert(ElementType& dataVal, int index);
    void push(ElementType& dataVal);
    void erase(int index);
    void pop();
    int searchByName(const string& name);
    int searchByPath(const string& path);
    string searchByIndex(int index);
    void display(ostream& out) const;
    int nodeCount();
    void swap(const string& path1, const string& path2);
    NodePointer getElementPtrByIndex(int index);
};

ostream& operator<<(ostream& out, const videoLinkedList& aList);

#endif