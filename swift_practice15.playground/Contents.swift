// ==================================== BMI계산기 함수 만들기 =====================================
import Foundation

// ==================================== if-else문 사용 =========================================
func calBmi( height : Double, weight : Double) -> String {
    let bmi = weight / (height*height*0.0001)
    let shortbmi = String(format: "%0.2f", bmi)
    var body = ""

    if bmi >= 40.0 {
        body = "3단계 비만"
    } else if bmi >= 30.0 && bmi < 40.0 {
        body = "2단계 비만"
    } else if bmi >= 25.0 && bmi < 30.0 {
        body = "1단계 비만"
    } else if bmi >= 18.5 && bmi < 25.0 {
        body = "정상"
    } else {
        body = "저체중"
    }

    return ("BMI : \(shortbmi), 판정 : \(body)")
}
print(calBmi(height: 178.8, weight: 82.2)) // BMI : 25.71, 판정 : 1단계 비만


// ==================================== switch-case문 사용 =======================================
func calBmi2(height : Double, weight: Double) -> String {
    let bmi = weight / (height*height*0.0001)
    let shortbmi = String(format: "%0.2f", bmi)
    var body = ""
    
    switch bmi {
    case 0.0 ..< 18.5:
        body = "저체중"
    case 18.5 ..< 25.0:
        body = "정상"
    case 25.5 ..< 30.0:
        body = "1단게 비만"
    case 30.0 ..< 40.0:
        body = "2단계 비만"
    default:
        body = "3단계 비만"
    }
    return ("BMI : \(shortbmi), 판정 : \(body)")
}
print(calBmi2(height: 178.8, weight: 82.2)) // BMI : 25.71, 판정 : 1단계 비만
