import Cocoa

/* КВАДРАТНОЕ УРАВНЕНИЕ */

/* Исходные данные: a, b, c */
let a:Double = 2.0
let b:Double = -11.0
let c:Double = -21.0

let dblDiscr:Double = b*b - 4*a*c
var x1:Double
var x2:Double

/* Еслт дескрименант >= 0, то корни есть, иначе нет*/
if (dblDiscr < 0) {
    print("Корней нет")
} else {
    /* вычисляем корни */
    x1 = (-b + dblDiscr.squareRoot())/(2*a)
    x2 = (-b - dblDiscr.squareRoot())/(2*a)
    if (x1==x2) {
        print("У уравнения один корень равный \(x1)")
    } else {
        print("У уравнения два корня: \(x1) и \(x2)")
    }
}

/* ПРО ПРЯМОУГОЛЬНЫЙ ТРЕУГОЛЬНИК */

/* Исходные данные: катеты a и b */
let dblLegA:Double = 3
let dblLegB:Double = 4

/* Вычисляем гипотенузу, периметр и площадь*/

let dblHypotenuse2:Double = dblLegA*dblLegA + dblLegB*dblLegB
let dblHypotenuse = dblHypotenuse2.squareRoot()

print("Гипотенуза равна \(dblHypotenuse)")
print("Периметр тругольника \(dblLegA+dblLegB+dblHypotenuse)")

let dblArea:Double = dblLegA * dblLegB / 2
print("Площадь тругольника \(dblArea)")



/* ПРО БАНКОВСКИЙ ДЕПОЗИТ */

/* Исходные данные: сумма вклада, срок, % в год */
let intDepositTerm:Int = 5 // Срок вклада
var dblDepositAmount:Double = 1000.00 //  сумма депозита
let dblDepositPercent:Double = 0.1 //  банковский процент: 1 - это 100%

var dblAccruedInterest:Double = 0.00; // Начисленные проценты за календарный год

/* Расчитываем по годам */
for i in 1...intDepositTerm {
    dblAccruedInterest = dblDepositAmount * dblDepositPercent
    dblDepositAmount = dblDepositAmount + dblAccruedInterest
    print("Закончился \(i) - й год: остаток на счете \(dblDepositAmount) прирост за год \(dblAccruedInterest).")
}


