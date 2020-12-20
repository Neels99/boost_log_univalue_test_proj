
class A:
    
    def Test():
        print('A')

    def Write():
        TYPE.b.Test()

class B:
    
    def Test():
        print('B')

    def Write():
        TYPE.a.Test()

class TYPE_type(type):
    
    def __getattr__(cls, key):
        return getattr(cls, key+'1')

    @classmethod
    def get_type(cls, key):
        return getattr(cls, key, "error")

    def get(type_name):
        return TYPE[type_name]
    

    a1 = A
    b1 = B

class TYPE(metaclass = TYPE_type):
    pass


getattr(TYPE_type, "a1").Write()
TYPE_type.get_type('a1').Write()
TYPE.a.Write()
TYPE.b.Write()
#TYPE.key