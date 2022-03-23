//Cумма вклада
import Foundation

print("Введите сумму вклада")
var a = Double(readLine() ?? "0") ?? Double (0)
print("Введите % по вкладу")
var b = Double(readLine() ?? "0") ?? Double (0)
print("Введите количество лет вложения")
var c = Double(readLine() ?? "0") ?? Double (0)

var d = pow(a * (1 + (b/100)), c)

print("Сумма вклада через" + " " + String(c) + " " + "=" + " " + String(d))
