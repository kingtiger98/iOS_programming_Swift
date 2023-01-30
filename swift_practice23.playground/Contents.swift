// ======================== method overloading : 생성자 중첩 ==========================
// 오버로딩이란?
// => 매개변수의 개수와 자료형이 다른, 같은 이름의 함수를 여러 개 정의 하는 것

// method overloading : 생성자 중첩 이란?
// => 매개변수와 자료형이 다르고, 이름이 같은 생성자를 여러 개 만들어, 여러 방법으로 인스턴스를 만들 수 있다.
// 장점 => 원하는 인스턴스만 접근해서 초기화 할 수 있다.
// 실습 : 생성자 중첩 두 개 만들기, 메소드 오버로딩

class Man{
    var age :Int = 1
    var weight : Double = 2
    func display(){
        print("나이 : \(age), 몸무게 : \(weight)")
    }
    
    // 생성자_1 : age, weight 초기화
    init(age:Int, weight:Double) {
        self.age = age
        self.weight=weight
    }
    
    // 생성자_2 : weight 초기화, 메소드 오버로딩(함수 이름만 동일)
    init(weight:Double){
        self.weight = weight
    }
}

// 생성자_1 사용, 인스턴스 hwang1 생성
var hwang1 = Man(age: 25, weight: 82.1)
hwang1.display() // 나이 : 25, 몸무게 : 82.1

// 생성자_2 사용, 인스턴스 hwang2 생성
var hwang2 = Man(weight: 82.2)
hwang2.display() // 나이 : 1, 몸무게 : 82.2
