// =========================== 함수 : 여러 개의 값 반환받기 (튜플사용) =============================
// 함수는 여러 결과값들을 튜플로 감싸서 반환 할 수 있다.
// 리턴형이 여러 개이기 때문에 ()로 감싸고 따로 따로 자료형을 표기한다.

// 실습1 : 인치 단위의 수를 매개변수로 받아 야드,센티미터,미터로 변환하고 이 세 개의 값을 하나의 튜플에 넣어 반환
func converter(length : Float) -> ( yards : Float, centimeters : Float, meters : Float ) {
    let yards = length * 0.0277778
    let centimeters = length * 2.54
    let meters = length * 0.0254
    return (yards, centimeters, meters)
}

var lengthTuple = converter(length: 178.8)
print(lengthTuple) // (yards: 4.966671, centimeters: 454.152, meters: 4.54152)
print(lengthTuple.yards) // 4.966671
print(lengthTuple.centimeters) // 454.152
print(lengthTuple.meters) // 4.54152


// 실습2 : 2개의 정수를 입력받아 가감승제 리턴
import Foundation

func pmd(first x:Int, second y:Int) -> (plus:Int, minus:Int, div:Double, gop:Double) {
    let plus : Int = x+y
    let minus : Int = x-y
    let div : Double = Double(x)/Double(y)
    let gop : Double = Double(x)*Double(y)
    return (plus, minus, div, gop)
}

var result = pmd(first: 178, second: 82)
print(result)
print(result.plus) // 260
print(result.minus) // 96
print(String(format:"%0.2f", result.div)) // 2.17
print(String(format:"%0.2f", result.gop)) // 14596.00


// ================================= 가변 매개변수 ======================================
// 함수가 가변 매개변수를 받는다는 것을 가리키기 위해서 세 개의 점(...)을 매개변수 자료형 표시 뒤에 붙혀서 사용!

// 실습 : 지정되지 않은 개수의 String 값을 매개변수로 받아서 콘솔에 출력
func displayStrings(words x:String...) -> Void {  // 매개변수의 자료형 뒤에 ...을 붙혀서 가변매개변수임을 표시!
    for word in x {
        print(word)
    }
}

displayStrings(words: "일", "이", "삼", "사") // 일 이 삼 사
displayStrings(words: "one", "two") // one two
