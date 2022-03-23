import Foundation
//Квадратное уравнение
//AX^2+BX+C=0

var xOne = Double()
var xTwo = Double()

print("Введите A")
let A = Double(readLine() ?? "0") ?? Double(0)

print("Введите B")
let B = Double(readLine() ?? "0") ?? Double(0)

print("Введите C")
let C = Double(readLine() ?? "0") ?? Double(0)

var Discr = (pow(B, 2)) - (4*A*C)

if Discr > 0 {
xOne = (-B + sqrt(Discr)) / (2*A)
    print(xOne)
xTwo = (-B - sqrt(Discr)) / (2*A)
    print(xTwo)
}

if Discr == 0 {
xOne = -B / 2*A
    print(xOne)
xTwo = -B / 2*A
    print(xTwo)
}

if Discr < 0 {
    print("Корней уравнения нет")
}
