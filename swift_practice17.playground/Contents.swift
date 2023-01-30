// ================================== 일급 객체 실습 =================================

// ============== 일급 객체의 첫 번째 조건 : 함수를 변수나 상수에 넣을 수 있다 ==================
func up(num:Int) -> Int {
    return num+1
}

func down(num:Int) -> Int {
    return num-1
}

// 주의점 : 함수를 변수나 상수에 넣을 땐 함수명만 쓰고 다 생략한다.
let toUp = up
let toDown = down

// 주의점 : 함수를 변수에 담아 사용할 떈 자료형을 표시하지 않는다.
print(toDown(1)) // 0
print(toUp(1))   // 2

// ============== 일급 객체의 두 번째 조건 : 함수를 매개변수로 사용 ===========================
func upDown(Fun: (Int)->Int, value: Int) {
    let result = Fun(value)
    print("결과는 \(result)")
}

upDown(Fun: toUp, value: 10)    // 결과는 11
upDown(Fun: toDown, value: 10) // 결과는 9

// ============== 일급 객체의 세 번째 조건 : 함수를 리턴값으로 사용 ===========================
func decideFun(x: Bool) -> (Int) -> Int {// 리턴형이 함수의 데이터 타입임 : -> (Int) -> Int
    if x {
        return toUp
    } else {
        return toDown
    }
}

let r = decideFun(x:true) // let r = toUp
print(type(of:r))         //(Int) -> Int
print(r(10))              // toUp(10)
