import UIKit
// ======================= 두 가지의 옵셔널 타입 : ? 과 ! =============================
// 옵셔널 타입 !은 => 옵셔널이 항상 유효한 값을 가질 경우 => 옵셔널이 암묵적 언래핑(implicitly unwrapped)이 되도록 선언할 수 있습니다.
// 옵셔널 타입이 !인 옵셔널 변수는 => 강제 언래핑이나 옵셔널 바인딩을 하지 않아도 값에 접근할 수 있습니다.
// 즉 값이 Optional로 사용되지 않으면 자동으로 언래핑()하여 사용합니다!

// 옵셔널 타입 '?' 과 '!' 를 비교해보자
// 옵셔널 타입 '?'
let x : Int? = 1
let y : Int = x!
let z = x
print(x,y,z) // Optional(1), 1, Optional(1)
print(type(of: x),type(of: y), type(of: z)) // Optional<Int> Int Optional<Int>

// 옵셔널 타입 '!'
let a : Int! = 1 // implicitly unwrapped optional
let b : Int = a // Optional로 사용되지 않으면 자동으로 unwrap함 즉, 자동으로 let c : Int = a!로 해석하는 것
let c : Int = a!
let d = a // Optional로 사용될 수 있으므로 Optional형임
let e = a + 1
print(a,b,c,d,e) // Optional(1), 1, 1, Optional(1), 2
print(type(of:a),type(of:b),type(of:c),type(of:d),type(of:e)) // Optional<Int> Int Int Optional<Int> Int

