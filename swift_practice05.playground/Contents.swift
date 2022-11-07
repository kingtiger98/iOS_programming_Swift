import UIKit

// ==============Nil-Coalescing Operator (Nil합병연산자)===============
// 사용법 : 옵셔널변수 ?? nil일 때 할당되는 값
// 옵셔널 변수의 값이 nil이면 ?? 다음 값으로 할당됨
// 옵셔널 변수의 값이 nil이 아니면 언래핑된 값이 나옴

// 실습
let defaultColor = "초록색"
var userpickColor : String?

var nowColor = userpickColor ?? defaultColor
print("현재 선택되어 있는 색은 \(nowColor)입니다") // 현재 선택되어 있는 색은 초록색입니다
// userpickColor가 nil값이기 때문에, nowColor에 ?? 뒤에 값인 defaultColor의 "초록색"이 들어감

userpickColor = "소라색"
nowColor = userpickColor ?? defaultColor
print("현재 선택되어 있는 색은 \(nowColor)입니다") // 현재 선택되어 있는 색은 소라색입니다
// userpickColor에 "소라색"값을 넣어줬기 때문에, nowColor에 ?? 앞에 값인 userpickColor의 "소라색"이 들어감
// 그리고 언래핑되어 출력됨

