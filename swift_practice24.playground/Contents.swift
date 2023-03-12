// enum : 열거형
// enum은 하나의 타입이므로 대문자 카멜케이스로 이름을 설정한다.
// 각각의 case가 고유의 값으로 취급되고 소문자 카멜케이스로 이름을 설정한다.

enum Days {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

// 열거형 Days가 하나의 타입이 됨
var day : Days = Days.tue // 변수 day에 열거형 Days의 mon값 대입
print(day) // tue 출력

// 열거형을 이용해 switch-case 문을 사용하려면?
// 스위치 문에 case들 중 빠진 부분이 있으면 default문을 구현 해줘야함,
// 빠진 부분이 없으면 default문 생략가능
switch day {
case .mon, .tue, .wed, .thu:
    print("평일")
case .sat, .sun:
    print("공휴일")
default:
    print("금요일이 빠졌네")
}

// =====================================================================
// 열거형의 자료형을 Int로 주면 c언어처럼 자동으로 정수값을 순서대로 가질 수도 있다
enum Beverage : Int {
    case coffee = 0
    case latte = 1
    case lemonade // 기본값이 없으면 자동으로 2가 할당됨(번호순임)
}
//  rawValue를 사용해 lemonade의 값이 2인지 확인
print("Beverage의 lemonade의 값은 2일까? => \(Beverage.lemonade.rawValue)")

// ======================================================================
// 만약 열거형의 자료형이 String이면 어떻게 될까?
enum Level: String {
    case first = "easy"
    case second = "normal"
    case third // 기본값이 없으면 자동으로 자신의 case이름인 third로 지정됨
}
// rawValue를 이용해 third의 값이 third인지 확인
print("third의 값은 어떻게 지정되어 있을까? => \(Level.third.rawValue)")

// =======================================================================
// 만약 열거형의 case에 없는 rawValue값에 실수로 접근하면 어떻게 처리해야할까?
enum Fruits:Int {
    case apple = 1
    case grape
    case orange
    case pineapple
}
// 옵셔널 바인딩을 이용해 접근할 수 있다
// rawValue를 통해 초기화한 인스턴스는 옵셔널 타입이기 때문!
if let rawValueFruit : Fruits = Fruits(rawValue: 7) {
    print("rawValue값 7에 해당하는 case는 \(rawValueFruit)입니다.")
} else {
    print("rawValue 7에 해당하는 과일은 없다")
}
// rawValue 7에 해당하는 과일은 없다 출력

// ========================================================================
// 열거형안에 메소드 사용가능!
enum Month{
    case aug
    case december
    case april
    
    func printWeather() {
        switch self{
        case .aug:
            print("덥다")
        case .december:
            print("춥다")
        case .april:
            print("따뜻하다")
        }
    }
}

Month.aug.printWeather() // 덥다 출력
