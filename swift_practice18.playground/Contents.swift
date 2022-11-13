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
