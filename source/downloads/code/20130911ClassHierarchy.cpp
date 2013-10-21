class BaseA
{
public:
    virtual void foo()=0;
};

class BaseB
{
public:
    virtual void bar(int a)=0;
};

class Child: public BaseA, public BaseB
{
public:
    void foo()
    {
        cout<<"i'm foo in Child!"<<endl;
    };
    void bar(int a)
    {
        cout<<"i'm bar in Child!"<<endl;
    };
};