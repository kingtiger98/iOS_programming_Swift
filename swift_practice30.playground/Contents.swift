// 생성자 상속의 특징
class Human {
     var age: Int
     var weight: Double
     func display(){
         print("나이 : \(age) 무게 : \(weight)")
     }

     init(age: Int, weight: Double){
         self.age = age
         self.weight = weight
     }

    convenience init(weight: Double){
        self.init(age: 26, weight: weight)
    }
    
 }

// 특징1. 자식 클래스에 designated 생성자가 없거나, 초기화가 필요한 프로퍼티가 없으면? ===================
// 부모 클래스의 ,designated 생성자나 convenience 생성자 모두를 상속 받습니다!
// ex)
class Man :Human {
  // 생성자도 없고, 프로퍼티도 없으니 부모 클래스의 모든 생성자가 상속됨
}
// 인스턴스 생성해 부모의 생성자 모두 상속된 것 확인!
var jaeha: Man = Man(age: 10, weight: 55)
var jaeha2: Man = Man(weight: 66)
jaeha.display()
jaeha2.display()
//나이 : 10 무게 : 55.0
//나이 : 26 무게 : 66.0


// 특징2. 자식 클래스에 designated 생성자나 초기화할 프로퍼티가 있으면? ================================
// 부모 클래스의 생성자가 상속되지 않음!

// 그리고 자식 클래스의 designated 생성자는, 코드 작성 순서가 있습니다. 중요!!!!!
// 자식 클래스의 프로퍼티 초기화 -> 부모 클래스의 designated 생성자 위임, super.init() -> 나머지 초기화 소스
// 순으로 작성되어야 합니다.
class Man2 :Human {
    // 초기화 되야할 프로퍼티 name 추가
    var name: String
    
    // Man2의 designated 생성자 작성!
    init(age: Int, weight: Double, name: String) { // 부모에 필요한 프로퍼티(age, weight)도 매개변수에 넣어야함
        self.name = name
        super.init(age: age, weight: weight) // initializer delegation, 부모의 생성자를 위임
    }
}
var jaeha3: Man2 = Man2(age: 23, weight: 77, name: "황재하")
jaeha3.display() // 나이 : 23 무게 : 77.0


// 특징3. 자식이 부모 클래스의 designated 생성자를 override 하는 경우 ==================================
// 부모 클래스의 convenience 생성자가 상속됩니다!
//
// override란? 부모 클래스에서 상속할 메서드, 프로퍼티, 서브스크립트를 자식 클래스에서 원하는대로 구현(재정의)
// overloading이란? 함수의 이름만 같고 매개변수, 리턴타입 등을 다르게 하여 함수를 중복으로 선언할 수 있다

class Man3 :Human{
    var name: String
    override init(age: Int, weight: Double) {
        self.name = "hwang"
        super.init(age: age, weight: weight)
    }
}

var jaeha4: Man3 = Man3(age: 30, weight: 80)
var jaeha5: Man3 = Man3(weight: 99)
jaeha4.display()
jaeha5.display()
//나이 : 30 무게 : 80.0
//나이 : 26 무게 : 99.0

// 부모 클래스 생성자 앞에 required이란?
// 자식 클래스에서 반드시 required 키워드로 재정의 되어야 합니다.
