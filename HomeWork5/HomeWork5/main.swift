/*
 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 6. Вывести сами объекты в консоль.
*/
//print("Машина \(brand) имеет \(allWheelsDrive)  и капот сейчас \(statusHood)")

import Foundation

//MARK: - перечисления для свойств протокола
enum Hood {
    case openHood
    case closeHood
}

enum WheelsDrive {
    case fullDrive
    case frontDrive
}

enum StatusWorkEngine {
    case work
    case stop
}

//MARK: - протокол некоторых свойств авто с пустыми методами
protocol Car {
    var allWheelsDrive: WheelsDrive {get set}
    var statusHood: Hood {get set}
    var statusEngine: StatusWorkEngine {get set}
    
    mutating func closeHood()
    mutating func openHood()
    mutating func startEngine()
    mutating func stopEngine()
    mutating func onFullDrive()
    mutating func offFullDrive()
}

//MARK: - расширение методов протокола для конкретных действий
extension Car {
    
    mutating func closeHood() {
        statusHood = Hood.closeHood
        print("Капот закрыт")
    }
    
    mutating func openHood() {
        statusHood = Hood.openHood
        print("Капот открыт")
    }
    
    mutating func startEngine() {
        statusEngine = StatusWorkEngine.work
        print("Двигатель запущен")
    }
    
    mutating func stopEngine() {
        statusEngine = StatusWorkEngine.stop
        print("Двигатель заглушен")
    }
    
    mutating func onFullDrive() {
        allWheelsDrive = WheelsDrive.fullDrive
        print("Полный привод включен")
    }
    
    mutating func offFullDrive() {
        allWheelsDrive = WheelsDrive.frontDrive
        print("Полный привод выключен")
    }
}

//MARK: - создание классов имплементирующих протокол
final class TrunkCar: Car {

    var allWheelsDrive: WheelsDrive
    var statusHood: Hood
    var statusEngine: StatusWorkEngine
    let tankVolum: Double
    let tankLength: Double
    let tankColour: String
    
    init(allWheelsDrive: WheelsDrive,
         statusHood: Hood,
         statusEngine: StatusWorkEngine,
         tankVolum: Double,
         tankLength: Double,
         tankColour: String) {
        self.allWheelsDrive = allWheelsDrive
        self.statusHood = statusHood
        self.statusEngine = statusEngine
        self.tankVolum = tankVolum
        self.tankLength = tankLength
        self.tankColour = tankColour
    }
}

final class SportСar: Car {
    var allWheelsDrive: WheelsDrive
    var statusHood: Hood
    var statusEngine: StatusWorkEngine
    let discDiameter: Double
    let powerEngine: Double
    let seats: Int
    
    init(allWheelsDrive: WheelsDrive,
         statusHood: Hood,
         statusEngine: StatusWorkEngine,
         discDiameter: Double,
         powerEngine: Double,
         seats: Int) {
        self.allWheelsDrive = allWheelsDrive
        self.statusHood = statusHood
        self.statusEngine = statusEngine
        self.discDiameter = discDiameter
        self.powerEngine = powerEngine
        self.seats = seats
    }
}

//MARK: - создание расширение классов с имплементацией CustomStringConvertible
extension TrunkCar: CustomStringConvertible{
    var description: String {
        return "В экземмляр класса TrunkCar имплементирован протокол Car"
    }
}

extension SportСar: CustomStringConvertible{
    var description: String {
        return "В экземмляр класса SportСar имплементирован протокол Car"
    }
}

//MARK: - создание объектов классов
var skania = TrunkCar(allWheelsDrive: .fullDrive,
                      statusHood: .closeHood,
                      statusEngine: .stop,
                      tankVolum: 1597.12,
                      tankLength: 13.4,
                      tankColour: "White")

var daf = TrunkCar(allWheelsDrive: .frontDrive,
                   statusHood: .closeHood,
                   statusEngine: .stop,
                   tankVolum: 1900,
                   tankLength: 16,
                   tankColour: "Black")

var bmw = SportСar(allWheelsDrive: .frontDrive,
                   statusHood: .openHood,
                   statusEngine: .work,
                   discDiameter: 21,
                   powerEngine: 550,
                   seats: 2)

var lada = SportСar(allWheelsDrive: .frontDrive,
                    statusHood: .closeHood,
                    statusEngine: .work,
                    discDiameter: 15,
                    powerEngine: 105.2,
                    seats: 5)

skania.openHood()
skania.startEngine()
daf.onFullDrive()
bmw.stopEngine()
lada.openHood()
print(skania)
