// 옵셔널 체이닝

// 옵셔널 프로퍼티들은 모두 nil상태임,
// 꼭 필요한 프로퍼티들만 생성자를 통해 받도록함
class Person {
    var name: String
    var job: String?
    var home: Apartment?
    init(name: String) {
        self.name = name
    }
}

class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

// 인스턴스 생성
let jaeha = Person(name: "jaeha")
let house = Apartment(dong: "110", ho: "1002")
let superman = Person(name: "superman")

// 옵셔널 체이닝이 실행 후 결과값이 nil일 수 있으므로 결과 타입도 옵셔널이다

// 만약 우리집 경비원의 직업이 궁금하다면?
// 옵셔널 체이닝을 하지 않았을 때의 예
func guardJob(owner: Person?) {
    if let owner = owner { // 사람이 존재하는지 if let 으로 확인
        if let home = owner.home { // 사람의 집이 있는지 확인
            if let `guard` = home.`guard` { // 경비원이 있는지 확인
                if let guardJob = `guard`.job { // 경비원의 직업이 있는지 확인
                    print("우리 집 경비원의 직업은 \(guardJob)입니다.")
                } else {
                    print("우리 집은 경비원이 없어요")
                }
            }
        }
    }
}

// 위 예를 옵셔널 체이닝 한 예, 간결하게 표현 가능, 올바른 접근으로 연쇄적으로 옵셔널 값을 추출해온다
func guardJobOptionalChaining(owner: Person?) {
    if let guardJob = owner?.home?.guard?.job {
        print("우리 집 경비원의 직업은 \(guardJob)입니다.")
    } else {
        print("우리 집은 경비원이 없어요")
    }
}

guardJobOptionalChaining(owner: jaeha) // 우리 집은 경비원이 없어요

jaeha.home = house
jaeha.home?.`guard` = superman
jaeha.home?.`guard`?.job = "아버지"

guardJobOptionalChaining(owner: jaeha) // 우리 집 경비원의 직업은 아버지입니다.

// nil 병합 연산자, ??의 앞의 값이 nil이면 ?? 뒤의 값을 변수에 넣음
var guardJob: String

guardJob = jaeha.home?.`guard`?.job ?? "슈퍼맨"
print(guardJob) // 아버지

jaeha.home?.`guard`?.job = nil
guardJob = jaeha.home?.`guard`?.job ?? "슈퍼맨"
print(guardJob) // 슈퍼맨


