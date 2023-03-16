// 상속 ============================================================
class Human {
    
    var name: String
    
    func printInfo(){
        print("이름 : \(name)")
    }
    
    init(inputName: String) {
        self.name = inputName
    }
}
class Man: Human {
    
    var age: Int
    
    // override하여 부모와 같은 이름의 함수를 만들어 내용을 바꿈
    // 부모 자식간 같은 이름의 메서드가 있으면 자식이 우선 실행 되게 해줌
    override func printInfo(){
        print("이름 : \(name) 나이 : \(age)")
    }
    
    init(inputName1: String, inputAge: Int) {
        // self는 Man 클래스의 age변수임을 표시함
        self.age = inputAge
        // 부모의 생성자를 가져옴, super사용
        super.init(inputName: inputName1)
    }
}

var hwang: Man = Man(inputName1: "jaeha", inputAge: 26)
hwang.printInfo() // 이름 : jaeha 나이 : 26

