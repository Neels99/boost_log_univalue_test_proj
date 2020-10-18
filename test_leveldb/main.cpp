#include <iostream>
#include <sstream>
#include <string>
// #include <assert>
#include "leveldb/db.h"

using namespace std;

int main()
{

    leveldb::DB *db;
    leveldb::Options options;
    options.create_if_missing = true;
    leveldb::Status status = leveldb::DB::Open(options, "./testdb", &db);

    //db->Put(leveldb::WriteOptions(), "key2", "value");
    // delete db;
    // assert(status.ok());

    std::string value;

    leveldb::Slice k1 = "key1";
    leveldb::Slice v1 = "value1";

    // cout << "OK1!" << endl;
    // leveldb::Status s = db->Put(leveldb::WriteOptions(), k1, v1);
    // cout << s.ToString() << endl;


    leveldb::Status s2 = db->Get(leveldb::ReadOptions(), k1, &value);
    cout << value << endl;
    if (!s2.ok())
    {
        cout << s2.ToString() << endl;
    }
    else
    {
        cout << value << endl;
    }

    std::stringstream ss;
    ss << v1.ToString();
    ss << 1;
    std::string value2;
    v1 = value2;
    leveldb::Status s = db->Put(leveldb::WriteOptions(), k1, v1);

    //if (s.ok())
    cout << "OK2!" << endl;
    //db->Delete(leveldb::WriteOptions(), "key1");
    return 0;
}