import UIKit

// ======================= switch - case에서 where절 사용 ============================
// where절을 switch case에 부가적인 조건을 추가하기 위하여 사용
// switch, catch, while, guard, for 등에서 사용 가

// 실습 : 값이 속하는 범위뿐만 아니라 그 숫자가 홀수인지 짝수인지도 검사
var temperature = 60

switch (temperature)
 {
 case 0...49 where temperature % 2 == 0:
   print("Cold and even")
 case 50...79 where temperature % 2 == 0:
   print("Warm and even")
 case 80...110 where temperature % 2 == 0:
print("Hot and even") default:
   print("Temperature out of range or odd")
 }
// Warm and even


// ======================= fallthrough =========================
// case별로 빠져 나가지 않고 아래로 계속 내려가게 하려면 fallthrough 문 사용

var value = 4
     switch (value)
     {
     case 4:
print("4")
      fallthrough
     case 3:
print("3")
      fallthrough
     case 2:
print("2")
     default:
print("1") }
// 4
// 3
// 2

