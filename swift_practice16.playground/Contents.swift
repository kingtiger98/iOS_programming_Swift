// ======================== 1급 객체 : first class object, 세 가지 조건 ========================

// 1급 객체 : first class object의 조건 3가지 ===================
// 첫 번째 : 함수를 변수에 저장할 수 있다.
// 두 번째 : 함수를 매개변수로 사용할 수 있다.
// 세 번째 : 함수를 리턴값으로 사용할 수 있다.


// 실습 => 첫 번째 : 함수를 변수에 저장할 수 있다.===================================================
// 스위프트는 함수를 데이터 타입처럼 사용할 수 있다. 즉 함수를 변수나 변수나 상수에 넣을 수 있다.

func toDoubleValue( value : Int ) -> Int {
    return value*2
}

// 함수를 자료형처럼 사용해 -> 변수에 함수를 저장했음!
// 함수를 자료형에 저장할 땐 함수명만 쓰고 다 생략한다!
var toDouble = toDoubleValue

// 변수에 저장하여 함수를 사용할 땐 외부매개변수명을 쓰지 않고(오류발생함)
// 인자만 넣습니다!
print(toDouble(10)) // 20

// 실습 => 두 번째 : 함수를 매개변수로 사용할 수 있다. ================================================

// 3을 곱해주는 toTripleNum() 정의
func toTripleNum( num : Int ) -> Int { // (Int) -> Int
    return num*3
}

// 상수 toTriple에 toTripleNum함수 대입 <= 1급 객체 첫 번째 조건
let toTriple = toTripleNum

// 함수를 매개변수로 tripleOutput받는 함수 정의
// 함수를 매개변수로 쓸 땐 => 함수가 올 매개변수명 : 받을 매개변수 함수의 자료형 => convertFunc : (Int)->Int
func tripleOutput(convertFunc : (Int)->Int, num : Int) {
    let result = convertFunc(num)
    print("결과는 \(result)")
}

// 첫 번째 매개변수의 인자는 함수를 담은 변수인 toTriple
tripleOutput(convertFunc: toTriple, num: 10) // 결과는 30

// 실습 => 세 번째 : 함수를 리턴값으로 사용할 수 있다. =================================================

//inchesToFeet(), inchesToYards() 정의 후 상수 toFeet, toYards에 대입
func inchesToFeet (inches: Float) -> Float {
    return inches * 0.0833333
}
func inchesToYards (inches: Float) -> Float {
return inches * 0.0277778
}
let toFeet = inchesToFeet
let toYards = inchesToYards

// 단위를 변환하고 콘솔에 결과를 출력하는 다른 함수
func outputConversion(funcConversin : (Float)->Float, value : Float) {
    let converse =  funcConversin(value)
    print("결과는 \(converse)")
}

// outputConversion 함수를 호출할 때 선언된 데이터 타입과 일치하는 함수를 전달
// 매개변수로 적절한 변환 함수를 전달하면 인치를 피트 또는 야드로 변환하기 위하여 동일한 함수가 호출될 수 있음
outputConversion(funcConversin:toYards, value: 10) // 야드로 변환하는 inchesToYards함수 호출
outputConversion(funcConversin:toFeet, value: 10) // 피트로 변환하는 inchesToFeet함수 호출

// 반환 타입으로 함수의 타입을 선언하면 함수도 반환될 수 있음
// 함수는 Boolean 매개변수의 값에 따라 toFeet 함수 또는 toYards 함수를 반환
// 사용 예)
//func decideFunction (feet: Bool) -> ()
//
//{
//        if feet {
//            return toFeet //함수를 리턴
//        } else {
//            return toYards
//    }
//}
