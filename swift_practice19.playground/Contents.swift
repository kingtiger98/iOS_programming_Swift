// =============================== 클로저와 후행 클로저의 축약 표현들 =================================

// 클로저 표현1 ===============================================================
let multiply = {(val1: Int, val2: Int) -> Int in
    return val1 * val2
}
var result = multiply(10, 20)
print(result) // 200

// 클로저 표현2 ===============================================================
let add = {(val1: Int, val2: Int) -> Int in
    return val1 + val2
}
result = add(10, 20)
print(result) // 30

// 마지막 매개변수로 함수를 받는 함수를 만들어보자 ======================================
func math(x: Int, y: Int, cal: (Int, Int) -> Int) -> Int {
    return cal(x, y)
}
result = math(x: 10, y: 20, cal: add)
print(result) // 30
result = math(x: 10, y: 20, cal: multiply)
print(result) // 200

// 클로저 표현3 : 클로저를 함수매개변수 자리에 직접 작성함 ================================
result = math(x: 10, y: 20, cal: {(val1: Int, val2: Int) -> Int in
    return val1 + val2
})
print(result) // 30

// 클로저 표현3을 후행 클로저로 변환 =============================================================
// 클로저가 함수의 마지막 argument라면 마지막 매개변수 이름(cal:)을 생략한 후 함수 소괄호 외부에  후행클로저를 구현
result = math(x: 10, y: 20) {(val1: Int, val2: Int) -> Int in
    return val1 + val2
}
print(result) // 30

// ================================== math()의 클로저와 후행클로저를 축약해보자 =====================================

// 클로저 축약1 : 리턴형 생략 =======================================================
result = math(x:10, y:20, cal: {(val1: Int, val2: Int) in // 리턴형 "-> Int" 생략
    return val1 + val2
})

// 후행 클로저 축약1 : 리턴형 생략  ==================================================
result = math(x: 10, y: 20){(val1 : Int, val2 : Int) in // 리턴형 "-> Int" 생략
    return val1 + val2
}


// 클로저 축약2 : 매개변수 생략하고 단축인자(shorthand argument name) : $인덱스번호 사용 ===============
result = math(x: 10, y: 20, cal: { // 매개변수 "(val1: Int, val2: Int) in" 생략
    return $0 + $1 // 단축인자기호($)와 매개변수 인덱스 번호(0부터 시작)를 결합해 리턴문 만듦
})

// 후행 클로저 축약2 : 매개변수 생략하고 단축인자(shorthand argument name) : $인덱스번호 사용 ============
result = math(x: 10, y: 20){
    return $0 + $1
}

// 클로저 축약3 : 클로저에 리턴값이 있으면 마지막 줄을 리턴하므로 return생략
result = math(x: 10, y: 20, cal: { // 매개변수 "(val1: Int, val2: Int) in" 생략
    $0 + $1 // 단축인자기호($)와 매개변수 인덱스 번호(0부터 시작)를 결합해 리턴문 만듦
})

// 후행 클로저 축약3 : 클로저에 리턴값이 있으면 마지막 줄을 리턴하므로 return생략
result = math(x: 10, y: 20){
    $0 + $1
}









