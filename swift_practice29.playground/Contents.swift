//  상속2 : overloading, convenience initializer

class Man {
    var age: Int
    var weight: Double
    func display(){
        print("나이 : \(age) 무게 : \(weight)")
    }
    
    // 생성자 1번, designated initializer
    init(){
        self.age = 26
        self.weight = 85
    }
    
    // 생성자 2번, designated initializer, 생성자 1번을 overloading해 만듬
    // overloading : 메소드의 이름은 같고 매개변수의 갯수나 자료형이 다름
    init(age: Int, weight: Double){
        self.age = age
        self.weight = weight
    }
    
    // convenience initializer : 일부 프로퍼티만 초기화한다
    convenience init(weight: Double){ // weight만 초기화
        
        // convenience를 사용하려면 초기화 위임을 제일 먼저 해줘야함: initializer delegation
        self.init()
        // 자신의 초기화 코드, weight만 초기화함
        self.weight = weight
        // age의 값은 자동으로 init()생성자의 26으로 됨
    }
}

var jaeha: Man = Man()
var jaeha2: Man = Man(age: 25, weight: 80)
var jaeha3: Man = Man(weight: 88)

jaeha.display()
jaeha2.display()
jaeha3.display()
//나이 : 26 무게 : 85.0
//나이 : 25 무게 : 80.0
//나이 : 26 무게 : 88.0
