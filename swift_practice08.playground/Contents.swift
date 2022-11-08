import UIKit


//===================BMI계산기 : 다중 if-else 문 사용===================
let weight = 82.0
let height = 178.8
let bmi = weight / (height*height*0.0001) // kg/m*m
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

print("BMI:\(bmi), 판정:\(body)")
// BMI:25.64949526798092, 판정:1단계 비만

//=========================BMI계산기 : switch-case 문 사용========================
import Foundation

let weight1 = 82.0
let height1 = 178.8
let bmi1 = weight1 / (height1*height1*0.0001) // kg/m*m
let shortBmi = String(format: "%0.2f", bmi1) // "%0.2f" 2로 소숫점아래 2자리까지 출력
var body1 = ""

switch bmi1 {
case 40... :
  body1 = "3단계 비만"
case 30..<40:
  body1 = "2단계 비만"
case 25..<30:
  body1 = "1단계 비만"
case 18.5..<25:
  body1 = "정상"
default:
  body1 = "저체중"
}
print("BMI:\(shortBmi), 판정:\(body1)") // BMI:25.65, 판정:1단계 비만
