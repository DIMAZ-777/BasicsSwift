//Прямоугольный треугольник
import Foundation

print("Введите длинну катета A")
var katetA = Double(readLine() ?? "0") ?? Double(0)
print("Введите длинну катета B")
var katetB = Double(readLine() ?? "0") ?? Double(0)
var gipotenuza = sqrt(pow(katetA, 2) + pow(katetB, 2))
var perimetr = katetA + katetB + gipotenuza
var ploshad = (katetA + katetB) / 2

print("Площадь треугольника" + " " + String(ploshad))
print("Периметр треугольника" + " " + String(perimetr))
print("Гипотенуза треугольника" + " " + String(gipotenuza))

