// ===================== call by value(값에 의한 호출) 와 call by reference(참조에 의한 호출) ========================
// Swift는 기본적으로 call by value입니다.

// call by value란? ====================================================
// 함수 호출시 전달되는 변수의 값을 복사하여 함수의 인자로 전달한다.
// 즉, 원래의 값이 보존되어 안전하다.

// call by value 실습
var myValue1 = 10

func twicevalue1 (value1 : Int) -> Int {
    var value1 = value1 + value1
    return value1
}

print(myValue1)                      // 10
print(twicevalue1(value1: myValue1)) // 20
print(myValue1)                      // 10

// call by reference란?==================================================
// 함수 호출시 인자로 전달되는 변수의 레퍼런스(주소)를 전달한다. 그래서 직접 값에 영향을 줍니다.
// 즉, 복사하지 않고 직접 참조해 빠르고 원래 값이 영향을 받습니다.
// 따라서 함수 안에서 인자의 값이 변경되면, 아규먼트로 전달된 객체의 값도 함께 변경된다

// call by value 구현 실습 : inout매개변수를 이용한 call by value 구현
var myValue2 = 100
func twicevalue2 (value2 : inout Int) -> Int {
    value2 = value2 + value2
    return (value2)
}

print(myValue2)                        // 100
print(twicevalue2(value2 : &myValue2)) // 200
print(myValue2)                        // 200

// ===========================================================================================================
