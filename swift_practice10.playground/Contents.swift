import UIKit

// ========================= guard~let의 활용 ============================

// ==================================함수 안에서의 if~let과 guard~let 비교하기
// printName_if() 안의 if~let
func printName_if(firstName:String, lastName:String?){
    
    if let lName = lastName {
        print(lName, firstName)
    }
    else {
        print("성이 nil값 입니다")
    }
}
printName_if(firstName:"재하", lastName:"황") // 황 재하
printName_if(firstName:"재하", lastName:nil) // 성이 nil값 입니다

// printName_guard() 안의 guard~let
func printName_guard(firstName:String, lastName:String?){
    guard let lName = lastName else {
        print("성이 nil값 입니다")
        return
    }
    print(firstName, lName)
}
printName_guard(firstName: "재하", lastName: "황") // 황 재하
printName_guard(firstName:"재하", lastName:nil)   // 성이 nil값 입니다


// ============================== guard문에서 언래핑된 값의 특징! =================================
// guard문 안에서 언래핑 된 값은 => guard문 밖에서도 사용할 수 있는 특징이 있다 중요! (if문으로 언래핑 한 건 안됨!)

// 이해를 돕기위한 예
func multiPly(value:Int?) { // 파라매타를 옵셔널 변수로 지정
    guard let number = value, number < 10 else { // 옵셔널 바인딩을 이용, 인자를 guard문 내에 number 상수에 대입하고 number로 조건식 지정
        print("값이 10보다 크거나 nil입니다")
        return
    }
    print(number*10) // guard문 밖에서도 number변수 사용가능!
}
multiPly(value: 10) // 값이 10보다 크거나 nil입니다
multiPly(value: nil) // 값이 10보다 크거나 nil입니다
multiPly(value: 9)  // 90


