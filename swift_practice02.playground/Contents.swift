import UIKit

// ======================== Optional 타입 ===============================
// 스위프트는 기본 자료형이 nil값( 아무런 값도 없는 값 )을 저장할 수 없습니다.
// nil 값은 반환될 때 오류를 발생시킬 수 있는 값으로 인식하기 때문입니다.
// 즉, 값을 반환할 때 오류가 발생할 수 있는 값은 Optional 객체로 감싸서 반환해야 합니다.

// 옵셔널 변수는 자료형 뒤에 ?을 추가해 만들 수 있습니다.
var a : Int?

// 옵셔널 변수에 값이 있으면 Optional(값)으로 감싸져 나옵니다.
// 이를 wrapped : 래핑되었다 라고 합니다.
var x : Int? = 10
print(x) // Optional(10)

// ======== 옵셔널 타입을 forced unwrapping1 : 강제 언래핑 ===============================

// 깔끔하게 정수만 출력하고 싶다면 forced unwrapping : 강제 언래핑 해주면 됩니다.
// 강제 언래핑은 변수명 뒤에 !을 붙히면 됩니다.
print(x!) // 10

// 문제1) 가능할까?
x = x! + 2
print(x) // Optional(12)

// 문제2) 가능할까?
var y : Int = 0;
// 만약 x를 강제언래핑 하지않았으면 옵셔널 타입이 기본 자료형 Int로 들어갈 수 없기 때문에 오류 발생!
y = x!
print(y) // 12

// if-else문 : aaa가 nil이 아니면 강제언래핑 후 출력, nil이면 경고문 출력
var aaa : Int? = 10
if aaa != nil {
    print(aaa!)
} else {
    print("nil입니다.")
}

// if-else문 : bbb가 nil이 아니면 강제언래핑 후 출력, nil이면 경고문 출력
var bbb : Int?
if bbb != nil {
    print(bbb!)
} else {
    print("nil입니다.")
}

//  ======== 옵셔널 타입을 forced unwrapping2 : Optional binding(옵셔널 바인딩) ==================

//  강제 언래핑의 두 번쨰 방법으로 "옵셔널 바인딩"은 옵셔널에 할당된 값을 => 임시변수나 임시상수에 할당합니다.

//  if let constantName = optionalName {
//     옵셔녈 변수가 값이 있다면(nil값이 아니다) 언래핑하며 임시상수에 할당합니다.
//      nil값이라면 if문의 조건이 거짓이 되어 if문을 실행하지 않습니다.
//  }
//
//  if var variableName = optinalName {
//      옵셔널 변수가 값이 있다면 임시변수에 값을 언래핑하여 할당하고 if문을 실행합니다.
//      값이 없다면 if 문의 조건이 거짓이 되어 if문을 실행하지 않습니다.
//  }

// ====================Optional binding(옵셔널 바인딩) 실습=======================

// 변수일 때
var box1 : Int? = 100
if var box2 = box1 {
    print(box2)
} else {
    print("nil입니다")
}

// 상수일 때
var optbox : Int? = 200
if let etbox = optbox {
    print(etbox)
} else {
    print("nil입니다")
}

// 여러 옵셔널 변수를 한 번애 언래핑(옵셔널 바인딩)
var optBox1 : Int? = 111
var optBox2 : Int? = 222
if let letBox1 = optBox1, let letBox2 = optBox2 {
    print(letBox1, letBox2) // 111 222
} else {
    print("nil입니다.")
}

//=========================================================
