#ifndef PY_BASE_H
#define PY_BASE_H
//#include "Python.h"

// namespace c2pool::python
// {
//     class Py
//     {
//     public:
//         static bool _ready;
//         static void Initialize();

//         static void Finalize();
//     };
// } // namespace c2pool::python

namespace c2p
{
    void Test();
} // namespace c2p

namespace c2pool::python
{

    class PythonBase
    {
    public:
        static void Test();

        static char *GetCallFunctionResult(char *pyObj);
        // static auto GetMethodObject(const char *method_name, const char *filename = "packtypes")
        // {
        //     Py::Initialize();

        //     PyObject *pObjct = nullptr;

        //     // Загрузка модуля sys
        //     auto sys = PyImport_ImportModule("sys");
        //     auto sys_path = PyObject_GetAttrString(sys, "path");
        //     // Путь до наших исходников Python
        //     auto folder_path = PyUnicode_FromString("/src/util");
        //     PyList_Append(sys_path, folder_path);

        //     // Загрузка py файла
        //     auto pName = PyUnicode_FromString(filename);
        //     if (!pName)
        //     {
        //         return pObjct;
        //     }

        //     // Загрузить объект модуля
        //     auto pModule = PyImport_Import(pName);
        //     if (!pModule)
        //     {
        //         return pObjct;
        //     }

        //     // Словарь объектов содержащихся в модуле
        //     auto pDict = PyModule_GetDict(pModule);
        //     if (!pDict)
        //     {
        //         return pObjct;
        //     }

        //     pObjct = PyDict_GetItemString(pDict, method_name);
        //     if (!pObjct)
        //     {
        //         return pObjct;
        //     }

        //     // Проверка pObjct на годность.
        //     if (!PyCallable_Check(pObjct))
        //     {
        //         return pObjct;
        //     }

        //     return pObjct;
        // }

        // template <typename PyObjectType>
        // static char *GetCallFunctionResult(PyObjectType *pyObj);
    };
} // namespace c2pool::python

#endif // PY_BASE_H