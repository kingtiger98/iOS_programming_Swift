// 타입캐스팅
// 타입캐스팅의 목적은,
// 인스턴스의 타입 확인, 클래스의 인스턴스를 자식 또는 부모 클래스의 타입으로 사용할 수 았는지 확인하는 용도
// is 나 as를 사용

// 타입 캐스팅을 위한 클래스들 정의
class Person {
    var name: String = ""
    func breath() {
        print("숨을 쉰다")
    }
}

class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("등교를 한다")
    }
}

// Student를 상속 받은 UniversityStudent 클래스
class UniversityStudent: Student {
    var major: String = ""
    func goToMT() {
        print("멤버쉽 트레이닝을 갑니다")
    }
}
// 인스턴스들의 타입 확인해보기 : is 연산자 사용 ==========================
var jaeha: Person = Person()
var seoyeon: Student = Student()
var young: UniversityStudent = UniversityStudent()

var typeCheck: Bool

// jaeha 인스턴스는 아무것도 상속받지 않았기 때문에 Person타입에만 true
typeCheck = jaeha is Person            // true
typeCheck = jaeha is Student           // false
typeCheck = jaeha is UniversityStudent // false

// seoyeon 인스턴스는 Person의 클래스를 상속받은 Student의 인스턴스 이기 때문에
// Person과 Student에 true
typeCheck = seoyeon is Person            // true
typeCheck = seoyeon is Student           // true
typeCheck = seoyeon is UniversityStudent // false

// 고로 UniversityStudent의 인스턴스 yagom은 모든 클래스의 특성을 가지고 있다
typeCheck = young is Person            // true
typeCheck = young is Student           // true
typeCheck = young is UniversityStudent // true

// 업캐스팅 =================================================================================
// as를 사용하여 부모클래스의 인스턴스로 사용할 수 있도록 타입전환, 사용 많이 안함
// Any 혹은 AnyObject로도 타입정보 변환이 가능함

// Person타입이라도 UniversityStudent의 인스턴스가 들어올 수 있음
var mike: Person = UniversityStudent() as Person // 클래스 UniversityStudent의 인스턴스 mike생성
var jenny: Student = UniversityStudent() 
var jina: Any = Person()// as Any는 생략 가능, 클래스 Person의 인스턴스 jina생성



// 다운캐스팅 중요!! ==========================================================================
// 조건부 다운캐스팅인 as? 와 강제 다운캐스팅 as! 가 있습니다
// 자식 클래스의 인스턴스로 사용할 수 있게 타입 전환,
// 위 클래스의 예로는 Person(부모)이 Student(자식)인 척을 할 수 있는가

// as? : 조건부 다운 캐스팅
var optionalCasted: Student?

optionalCasted = mike as? UniversityStudent // 성공 : UniversityStudent
optionalCasted = jenny as? UniversityStudent // nil
optionalCasted = jina as? UniversityStudent // nil
optionalCasted = jina as? Student // nil

// as! : 강제 다운 캐스팅
var forcedCasted: Student

optionalCasted = mike as! UniversityStudent // 성공 : UniversityStudent
//optionalCasted = jenny as! UniversityStudent // 오류
//optionalCasted = jina as! UniversityStudent // 오류
//optionalCasted = jina as! Student // 오류

//// 활용1
//func doSomethingWithSwitch(someone: Person) {
//    switch someone {
//    case is UniversityStudent:
//        (someone as! UniversityStudent).goToMT()
//    case is Student:
//        (someone as! Student).goToSchool()
//    case is Person:
//        (someone as! Person).breath()
//    }
//}
//
//doSomethingWithSwitch(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다 신남!
//doSomethingWithSwitch(someone: mike) // 멤버쉽 트레이닝을 갑니다 신남!
//doSomethingWithSwitch(someone: jenny) // 등교를 합니다

// 활용2
func doSomething(someone: Person) {
    if let universityStudent = someone as? UniversityStudent {
        universityStudent.goToMT()
    } else if let student = someone as? Student {
        student.goToSchool()
    } else if let person = someone as? Person {
        person.breath()
    }
}

doSomething(someone: mike as Person) // 멤버쉽 트레이닝을 갑니다 신남!
doSomething(someone: mike) // 멤버쉽 트레이닝을 갑니다 신남!
doSomething(someone: jenny) // 멤버쉽 트레이닝을 갑니다 신남!


