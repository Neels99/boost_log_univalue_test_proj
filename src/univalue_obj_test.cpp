#include <iostream>
#include <univalue.h>
#include <algorithm>
#include <memory>
#include <tuple>
#include <vector>

#include <ctime>

class TestObj
{
public:
    int y;
    std::vector<int> list;

    operator UniValue()
    {
        UniValue value(UniValue::VOBJ);
        value.pushKV("y", y);

        UniValue _list(UniValue::VARR);
        for (int i = 0; i < 10; i++){
            list.push_back(i);
        }
        for (auto i : list)
        {
            _list.push_back(i);
        }

        value.pushKV("list", _list);
        return value;
    }

    TestObj& operator=(UniValue univalue){
        y = univalue["y"].get_int();

        for (auto list_v : univalue["list"].get_array().getValues()){
            list.push_back(list_v.get_int());
        }
        return *this;
    } 
};

class TestSecondObj
{
public:
    TestSecondObj()
    {
        _y = std::make_shared<TestObj>();
    }

    TestSecondObj(int __x, int __y)
    {
        x = __x;
        _y = std::make_shared<TestObj>();
        std::cout << "test" << std::endl;
        _y->y = __y;
        std::cout << "test1" << std::endl;
    }

    int x;
    std::shared_ptr<TestObj> _y;

    UniValue ToJson()
    {
        UniValue value(UniValue::VOBJ);
        value.pushKV("x", x);
        std::cout << "tes4" << std::endl;
        value.pushKV("_y", *_y);
        std::cout << "test5" << std::endl;

        return value;
    }

    TestSecondObj& operator=(UniValue univalue){
        x = univalue["x"].get_int();
        std::cout << "test2" << std::endl;
        *_y = univalue["_y"].get_obj();
        std::cout << "test3" << std::endl;
        return *this;
    } 
};

int main()
{

    TestSecondObj obj(5, 2);

    std::string json = obj.ToJson().write();

    std::cout << json << std::endl;

    UniValue obj_json;
    obj_json.read(json);

    TestSecondObj obj2;

    obj2 = obj_json;

    std::cout << obj2.x << std::endl;
    std::cout << obj2._y->y << std::endl;
    
    for(auto i : obj2._y->list){
        std::cout << i << std::endl;
    }



    return 0;
}