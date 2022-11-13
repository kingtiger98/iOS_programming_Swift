import UIKit

// ======================== 함수 =====================================
// 함수 : 매개변수(parameter,인자)와 인수(argument)의 차이점
// 함수 정의부의 값을 => parameter, 함수 호출시의 값을 => argument라고 합니다.

// 인자와 리턴형이 생략된 함수를 만들자 =============================================
func Hello() { // func 함수명(인자1, 인자2, ... 인자 생략 가능), "-> void" 생략가능
    print("Hello welcome swift!")
}
Hello() // 호출, Hello welcome swift! 출력

// 인자가 없고 리턴형이 void면 자료형을 출력하면 비어서 나옴
print(type(of: Hello)) // () -> ()

 // 두 수를 곱하는 함수를 만들자 ==================================================
func gop(x:Int, y:Int) -> Int { // 함수의 타입인 "-> Int"를 명시해 주어야함
    return x * y
}
print(gop(x:23,y:43)) // 989 출력

// 함수의 자료형 => (인자1의 자료형, 인자2의 자료형) -> 리턴형
print(type(of: gop)) // (Int, Int) -> Int

// 내부 매개변수(parameter name) 이름과 외부 매개변수(argument label) 이름==============================
// 힘수를 정의할 떈 -> 내부 매개변수(parameter name)명을 사용
// 함수를 호출할 떈 -> 외부 매개변수(argument label)명을 사용
// 외부 매개변수명 생략하면 내부 매개변수명이 외부 매개변수명까지 겸함

// 두 수를 뺴는 함수를 만들어 실습해보자 ===============================================================

// 외부매개변수(argument lable) :first, second , 내부매개변수(parameter lable) : x, y, 리턴형 : -> Int
func minus(first x:Int, second y:Int) -> Int {
    return x - y // 함수 정의부에서는 내부매개변수(parameter lable) : x, y 사용
}

// 함수 선언부에서는 외부매개변수(argument lable) :first, second 사용
print(minus(first:10, second: 5)) // 5
print(type(of: minus)) // (Int, Int) -> Int



// =================================== 함수의 타입과 이름 4가지 =======================================

// 외부매개변수생략하고 내부매개변수만 사용했다 -> 내부매개변수가 외부매개변수까지 겸함 ===========================
func plus1( x:Int, y:Int ) -> Int {
    print(#function) // 함수명 출력하는 법, plus1(x:y:)
    return x+y
}
print(plus1(x:10,y: 10)) // 20
print(type(of: plus1)) // (Int, Int) -> Int


// 외부매개변수(호출시 사용)와 내부매개변수(정의시 함수 내부에서 사용) 사용 ===================================
func plus2(first x:Int, second y:Int ) -> Int {
    print(#function) // plus2(first:second:)
    return x+y
}
print(plus2(first:10,second: 10)) // 20
print(type(of: plus2)) // (Int, Int) -> Int

// _로 외부매개변수를 생략할 수 있다(추천방법아님)=======================================================
func plus3(_ x:Int, _ y:Int ) -> Int {
    print(#function) // plus3(_:_:)
    return x+y
}
print(plus3(10, 10)) // 20
print(type(of: plus3)) // (Int, Int) -> Int


// 첫번째 외부매개변수명만 생략하는 경우가 많음, 두번째 매개변수부터는 외부매개변수 사용! 제일 많이 쓰는 방법 ===========
func plus4(_ x:Int, second y:Int ) -> Int {
    print(#function) // plus4(_:second:)
    return x+y
}
print(plus4(10, second: 10)) // 20
print(type(of: plus4)) // (Int, Int) -> Int


// ============================= 함수 디폴트 매개변수(아규먼트) 정하기 ================================
func sayHello(count: Int, name: String = "길동") -> String {
    return ("\(name), 너의 번호는 \(count)")
}
var message1 = sayHello(count:10, name: "소프트")
print(message1) //소프트, 너의 번호는 10

var message2 = sayHello(count:100)
print(message2) //길동, 너의 번호는 100
