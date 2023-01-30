// ======================== 클래스 : 클래스_메서드( = 타입_메서드 ), 생성자 : init()  =========================
// 클래스_메서드( = 타입_메서드 )는 클래스 레벨에서 동작합니다. ====================================================
// 타입 메서드는 인스턴스 메서드와 동일한 방법으로 선언하지만, class 나 static 키워드를 앞에 붙여서 선언
// class키워드로 만든 클래스 메서드는 자식 클래스에서 override가능 함
// 사용법 => 클래스명.클래스메서드()

class Man{
    var age : Int = 25 // 저장_프로퍼티
    var weight : Double = 82.3 // 저장_프로퍼티
    func display(){ // 인스턴스_메서드
        print("나이 : \(age), 몸무게 : \(weight)")
    }
    class func cM(){
        print("클래스 메서드 입니다.")
    }
    static func scM(){
        print("static 클래스 메서드 입니다.")
    }
}

var hwang : Man = Man() // hwang 인스턴스 생성
hwang.age // 인스턴스로 프로퍼티 접근
hwang.display() // 인스턴스로 프로퍼티_메소드 접근, 나이 : 25, 몸무게 : 82.3
Man.cM() // 클래스_메서드는 클래스가 호출, 클래스 메서드 입니다.
Man.scM() // 클래스_메서드는 클래스가 호출, static 클래스 메서드 입니다.

// 인스턴스 초기화하기_initialization : init() => 생성자 함수 ===============================================
// 생성자는 모든 프로퍼티를 초기화합니다.
// 생성자는 인스턴스가 만들어지면서 자동 호출되고 default initializer 라고도 함 => init() { } // func 사용하지 않음!
// 만약 init()을 직접 만들면(designated initializer) => default initializer는 사라짐

class Woman{
    // 생성자를 따로 만들면 프로퍼티에 초깃값을 주지 않아도 된다 또한 옵셔널이 아니어도 됨
    var name : String = "서연이"
    var age : Int = 25
    func display(){
        print("이름은 \(name) 나이는 \(age)")
    }
    
    // designated initializer 생성하기, default initializer는 사라짐
    init(joName:String, joAge:Int){
        // 생성자 내의 매개변수와 클래스의 메서드, 프로퍼티를 구분하기 위해 프로퍼티 앞에 self.을 붙히기도 한다.
        // 만약 생성자의 매개변수와 클래스의 메서드, 프로퍼티의 이름이 같으면 self.을 꼭 써줘야 한다!!!
        self.name = joName
        self.age = joAge
    }
}
// var jo = Woman() <= 오류남, Woman()는 사라진 default initializer를 호출하는 것이기 때문
var jo = Woman(joName: "서연", joAge: 25) // 내가 만든 designated initializer 양식에 맞게 인자 전달
jo.display() // 이름은 서연 나이는 25
