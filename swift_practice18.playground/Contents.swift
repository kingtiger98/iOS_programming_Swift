// ================================ 클로저 표현식 ================================
// 클로저 표현식은 매개변수를 받거나, 값을 반환하도록 만들 수도 있음

// 클로저 표현식 사용법
// { (<매개변수 이름>: <매개변수 타입>, ... ) -> <반환 타입> in
//    클로저 표현식 코드
// }

// 실습1 : add() 함수를 클로저로 바꿔 상수 add1에 넣어 사용해보자 =========================
func add(x: Int, y: Int) -> Int {
    return(x+y)
}

// 1. 클로저는 익명함수이기 때문에 함수 이름을 지운다 : func add삭제
// 2. 함수의 시작 블록 "{"을 앞으로 가져온다(함수의 이름이 있던 자리 )
// 3. 함수의 시작 블록이 있던 자리에 in을 써준다
// 클로저를 상수 add1()에 대입
let add1 = { (x: Int, y: Int) -> Int in
  return(x+y)
}

// 일급 객체와 비슷하게 외부매개변수 사용 안함!
print(add1(10,20))    // 30
print(type(of: add1)) // (Int, Int) -> Int

// 실습2 : 두 개의 정수를 곱해주는 클로저 ==============================================

let result = {(num1 : Int, num2 : Int) -> Int in
    return num1*num2
} // 여기서 result의 자료형은 (Int, Int) -> Int

// 주의 :매개변수 자료형 안씀!
print(result(30,40)) // 1200

// ================================== 후행 클로저 ===================================
// 클로저가 함수의 마지막 argument라면 마지막 매개변수명(cl)을 생략한 후 함수 소괄호 외부에 클로저를 작성
func someFun(cl: () -> Void) {
}
// trailing closure를 사용 안하면
someFun(cl: {
  //closure’s body
})
// trailing closure 사용
someFun() {
  //trailing closure's body goes here
}


// 클로저 처음부터 한 번 더 정리!
// 클로저 add, substract, divide 생성 ============================
let add:(Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a+b
}

let substract:(Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a-b
}

let divide:(Int, Int) -> Int = {(a:Int, b:Int) -> Int in
    return a/b
}

// 메소드를 인자로 받는 함수 생성
func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int

calculated = calculate(a: 10, b: 20, method: add)
print(calculated)

// 함수 뒤에 클로저를 바로 작성 할 수도 있다. ============================================
calculated = calculate(a: 10, b: 20, method: {(left: Int, right: Int) -> Int in
    return left * right
})
print(calculated)

// 후행 클로저 ===========================================================
// 함수의 전달인자 마지막에 클로저가 오면 함수 바깥으로 뺄 수 있다!
calculated = calculate(a: 10, b: 20) {(left: Int, right: Int) -> Int in
    return left*right
}

// 반환타입 생략가능 =============================================================
// 이미 컴파일러가 알고 있기떄문(calculate함수의 선언부에 이미 method함수의 타입이 이미 나와있음)
calculated = calculate(a: 10, b: 20, method: {(left: Int, right: Int) in
    return left*right
})
// 후행클로저에 적용 가능
calculated = calculate(a: 10, b: 20) {(left: Int, right: Int) in
    return left*right
}

// 단축 인자이름 =================================
// 클로저의 매개변수 이름이 불필요할 때 사용합니다.
calculated = calculate(a: 10, b: 20, method: {
    return $0 * $1
})
// 후행 클로저와 같이 사용 가능
calculated = calculate(a: 10, b: 20) {
    return $0 * $1
}

// 암시적 반환 표현 ======================================================
// 클로저가 반환하는 값이 있다면 마지막 줄은 당연히 반환값으로 취급하여 return이 생략 가능
calculated = calculate(a: 10, b: 20) { $0 * $1 }
