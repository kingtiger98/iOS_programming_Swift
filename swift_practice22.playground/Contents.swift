// ============== computed property : 계산 프로퍼티, getter, setter 메소드 ===============
// computed property(계산 프로퍼티)는 property가 설정되거나 검색되는 시점에서 계산 또는 파생된 값이다.
// computed property(계산 프로퍼티)는 두 가지가 있다.
// 1. 값을 리턴하는 게터(getter) 메서드, 2. 값을 대입하는 세터(setter) 메서드

// 실습 : 1. 값을 리턴하는 게터(getter) 메서드 =============================================
class Man{
    // 저장 프로퍼티
    var age : Int = 20
    var weight : Double = 80
    
    // 계산 프로퍼티(getter 메서드) 생성, setter가 없으면 get{ } 생략가능
    var manAge : Int{
    // get{ 생략
            return age-1
    // } 생략
    }
    
    // 인스턴스_메서드
    func display(){
        print("나이는 \(age) 몸무게는 \(weight)")
    }
    // 생성자 정의 :
    init(age:Int, weight:Double){
        self.age = age
        self.weight = weight
    }
}
var hwang = Man(age: 25, weight: 82) // 인스턴스 "hwang" 생성, : Man 생략
hwang.display() // 나이는 25 몸무게는 82.0
print(hwang.manAge) // 24


// 실습 : 2. 값을 대입하는 세터(setter) 메서드 =============================================
class Woman{
    var age : Int = 1
    var weight : Double = 48.2
    
    var manAge : Int{
        get{
            return age - 1
        }
        // 미국 기준 나이를 age에 대입해주는 세터(setter) 메서드
        // 방법_1
        set(usAge){
            age.self = usAge + 1
        }
        // 방법_2 : 만약 매개변수명이 newValue면 set 옆에 "(newValue)"를 생략할 수 있다.
        // => set{ age = newValue + 1 }
    }
    func display(){
        print("나이 : \(age), 몸무게 : \(weight)")
    }
    init(age : Int, weight : Double){
        self.age = age
        self.weight = weight
    }
}

var hwang2 = Woman(age:25, weight: 82.2)
hwang2.display() // 나이 : 25, 몸무게 : 82.2
// computed property의 getter메서드 접근
print(hwang2.manAge) // 24

// computed property의 setter메서드 접근
hwang2.manAge = 25 // 인스턴스.계산_프로퍼티 로 접근하고 = 로 값 대입
print(hwang2.age) // 26














