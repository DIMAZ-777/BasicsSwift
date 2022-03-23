import Foundation
/*
 1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
 6. Вывести значения свойств экземпляров в консоль.
 */
// MARK: -

enum conditionEngine {
    case run, stop
}

enum conditionWindows {
    case open, close
}

struct Car {
    let brand: String
    let color: String
    let places: Int
    let maxSpeed: Int
    let loadWeight: Int
    let radiusWheel: Int
    var age: Int
    let bodyVolume: Int
    var cargoVolume: Double
    var statusEngine: conditionEngine {
        willSet {
            if newValue == .run {
                print("Двигатель запущен")
            } else {
                print("Двигатель остановлен")
            }
        }
    }
    var statusWindows: conditionWindows {
        willSet {
            if newValue == .open {
                print("Окна открыты")
            } else {
                print("Окна закрыты")
            }
        }
    }
    mutating func engineStart() {
        self.statusEngine = .stop
    }
    mutating func openWindow() {
        self.statusWindows = .close
    }
}

var sportCar = Car(brand: "audi",
                   color: "black",
                   places: 5,
                   maxSpeed: 250,
                   loadWeight: 900,
                   radiusWheel: 18,
                   age: 1,
                   bodyVolume: 0,
                   cargoVolume: 250,
                   statusEngine: .run,
                   statusWindows: .open)

                   
var truck = Car (brand: "skania",
                color: "red",
                places: 3,
                maxSpeed: 120,
                loadWeight: 25000,
                radiusWheel: 16,
                age: 5,
                bodyVolume: 1000,
                cargoVolume: 0,
                 statusEngine: .stop,
                 statusWindows: .close)

print(sportCar)

truck.statusEngine = .run

print(sportCar)

print(sportCar.brand)
print(sportCar.color)
print(sportCar.places)
print(sportCar.maxSpeed)
print(sportCar.loadWeight)
print(sportCar.radiusWheel)
print(sportCar.age)
print(sportCar.bodyVolume)
print(sportCar.cargoVolume)
print(sportCar.statusEngine)
print(sportCar.statusWindows)
print(truck.brand)
print(truck.color)
print(truck.places)
print(truck.maxSpeed)
print(truck.loadWeight)
print(truck.radiusWheel)
print(truck.age)
print(truck.bodyVolume)
print(truck.cargoVolume)
print(truck.statusEngine)
print(truck.statusWindows)

sportCar.statusEngine = .run
sportCar.statusWindows = .close
truck.statusEngine = .stop
truck.statusWindows = .close
