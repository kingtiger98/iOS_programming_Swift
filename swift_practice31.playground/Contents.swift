// extension
// 클래스, 구조체, 열거형, protocol에 새로운 기능을 추가하는 기능입니다.
// 기존 클래스에 메서드, 생성자, 계산 프로퍼티 등을 추가하기 위해 사용합니다.

// 사용 예)
// extension 기존타입이름 {
//     새로운 기능
//}

// 실습 예) 표준 자료형 Int 구조체에 두 배의 값을 반환하는 메서드 추가
// 참고) 기본 자료형들은 모두 구조체 형태임!
extension Int {
    func multiple(num: Int) -> Int {
        return num * 2
    }
}

var aaa: Int = Int()
aaa.multiple(num: 10)
