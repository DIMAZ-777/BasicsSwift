/*
 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 6. Вывести значения свойств экземпляров в консоль.
 */
import Foundation
class AllCar {
    var colour: String
    var age: Int
    var isConditioner: Bool
    
    init (colour: String, age: Int, isConditioner: Bool) {
        self.colour = colour
        self.age = age
        self.isConditioner = isConditioner
    }
    func someMetod() -> String {
    return ""
    }
}

enum sportModeEngine {
    case on
    case off
}

enum statusLoadingBody {
    case loading
    case unloading
}

final class TrunkCar: AllCar {
    var body: statusLoadingBody {
        willSet {
            if newValue == .loading {
                print("Кузов загружен")
            }else {
                print("Кузов выгружен")
            }
        }
    }
    override func someMetod() -> String {
        return """
            Цвет авто \(colour)
            Возраст \(age)
            Наличие кондиционера \(isConditioner)
            """
    }
    init(colour: String, age: Int, isConditioner: Bool, body: statusLoadingBody) {
        self.body = body
        super .init(colour: "black", age: 5, isConditioner: false)
    }
}

let skania = TrunkCar(colour: "red", age: 2, isConditioner: true, body: statusLoadingBody.unloading)
print(skania.someMetod())
skania.body = statusLoadingBody.unloading

final class SportCar: AllCar {
    var engine: sportModeEngine {
        willSet {
            if newValue == .on {
                print("Спортивный режим включен")
            } else {
                print("Спортивный режим выключен")
            }
        }
    }
    override func someMetod() -> String {
        return """
        Цвет авто \(colour)
        Возраст авто \(age)
        Наличие кндиционера \(isConditioner)
        """
    }
    init(colour: String, age: Int, isConditioner: Bool, engine: sportModeEngine) {
        self.engine = engine
        super .init(colour: "red", age: 1, isConditioner: true)
    }
}

let lambo = SportCar(colour: "red", age: 1, isConditioner: true, engine: sportModeEngine.off)
print(lambo.someMetod())
lambo.engine = sportModeEngine.on
skania.isConditioner = false

