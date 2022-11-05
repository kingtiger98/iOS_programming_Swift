import UIKit

//===============================변수_상수_자료형=================================

var a = "var는 변수" // 변수에 할당된 값은 나중에 변경할 수 있다.
let b = "let는 상수" // 상수에 할당된 값은 나중에 변경할 수 없다.

// 변수나 상수에 초기값이 없으면 변수 앞에 ": 자료형"을 추가해 "type annotation"합니다.
var c : Int
// 초기값이 있으면 "타입 추론"을 하므로 자료형을 생략해도 됩니다.
var d = 10
// 초기값과 자료형을 모두 써도 됩니다
var cd : Int = 100

// 변수나 상수의 자료형을 알 수 있는 명령어 => type(of:변수명)
print(type(of: d)) // Int
// 변수, 상수, 자료형의 크기를 알수 있는 명령어
print(MemoryLayout.size(ofValue: d)) // 8

// 자료형 즉, 데이터 타입들
var e : Int = 10
var f : Double = 10.1
var g : Float = 10.2
var h : String = "String은 자료형 명시를 생략해도 됩니다."
// Character형은 초기값이 없어도 자료형을 꼭 써줘야함 아니면 자동으로 String 자료형으로 인식합니다.
var i : Character = "a"
var j : Bool = true // Bool데이터형은 값이 true 아니면 false입니다.

//==================================튜플=================================

// 튜플 : 여러 값을 하나의 개체에 일시적으로 묶는 방법
// 각 값들은 자료형이 달라도 상관없다.
// 첫 번째 요소부터 인덱스 값 0, 1, 2 ... 으로 접근 가능
let jaehaTuple = ("황재하", 25, 178.8)

// ex) jaehaTuple의 인덱스2 위치를 추출하고 그 값을 새로운 문자열 변수에 할당
var newTuple = jaehaTuple.2
print(newTuple) // 178.8

// 튜플 : jaehaTuple 의 자료형은??
print(type(of: jaehaTuple)) // (String, Int, Double)

// 한 줄로 튜플안의 값을 각각 새로운 변수에 할당하는 법
var (jhName1, jhAge1, jhHeight1) = jaehaTuple
print(jhName1, jhAge1, jhHeight1) // 황재하 25 178.8

// "_" => 밑 줄로 원하는 값만 생략하고 넣을 수도 있다.
var (jhName2, _, jhHeight2) = jaehaTuple
print(jhName2, jhHeight2)

// 튜플 생성시 각 값에 이름을 지정할 수 있다.
var jeahaTuple2 = ( name:"황재하", age:25, height:178.8 )
// 튜플의 값들에게 이름을 줬을 때 jeahaTuple2의 자료형은?
print(type(of: jeahaTuple2)) // (name: String, age: Int, height: Double)

//요점 : 튜플의 가장 강력한 점은 함수에서 여러 값들을 한 번에 반환하는 것!
