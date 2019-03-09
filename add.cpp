#include "add.h"

int main(int argc, char const *argv[])
{
    Box box1;
    double volume =0.0;
    box1.breadth=10;
    box1.height=10;
    box1.length=10;
    volume=box1.breadth*box1.height*box1.length;
    std::cout<<"volume of the box1:"<<volume<<std::endl;
    system("pause");
    return 0;
}

