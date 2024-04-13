import Foundation

// Super Class Ship

class Ship {
    var name: String
    var year: Int
    var countryOfOrigin: String
    
// Initializer of Super class Ship
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

// Sub Class CruiseShip

class CruiseShip: Ship {
    var maxCapacity: Int
    var oceanOfOperation: String
    var currentPassengerCount: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String, currentPassengerCount: Int) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = currentPassengerCount
        
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    // Method to add a passenger if the ship is not at max capacity
    
    func addPassenger() -> Void {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("Congratulations! Passengers have been added. It currently has \(currentPassengerCount) passenger/s.")
        } else {
            print("Sorry! Couldn't add the passengers as the Ship is at maximum capacity.")
        }
    }
    
    // Method to print the current passenger count
    
    func printCurrentPassengerCount() -> Void {
        print("The ship currently has \(currentPassengerCount) passenger/s.")
    }
}

// Sub Class CargoShip

class CargoShip: Ship {
    var maxCargoCapacity: Int
    var currentCargoCount: Int
    var isInternational: Bool
    
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = 0
        self.isInternational = isInternational
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    // Method to add cargo if the ship is not at max capacity
    
    func addCargo(amount: Int) -> Void {
        let remainingCapacity = maxCargoCapacity - currentCargoCount
        if remainingCapacity >= amount {
            currentCargoCount += 1
            print("Congratulations! Your cargo has been added. It currently has \(currentCargoCount) cargo/s.")
        } else {
            print("Sorry! Couldn't add the cargo as the Ship is at maximum capacity.")
        }
    }
        
    // Method to print the current cargo count
    
    func printCurrentCargoCount() -> Void {
        print("The Ship currently has \(currentCargoCount) cargo/s.")
    }
}

// Sub Class PirateShip


class PirateShip: Ship {
    var maxTreasureCapacity: Int
    var currentTreasureCount: Int
    var numberOfCannons: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.currentTreasureCount = 0
        self.numberOfCannons = numberOfCannons
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    // Method to add treasure if the ship is not at max capacity
    
    func addTreasure(amount: Int) -> Void {
        let remainingCapacity = maxTreasureCapacity - currentTreasureCount
        if remainingCapacity >= amount {
            currentTreasureCount += 1
            print("Congratulations! Your treasure has been added. It currently has \(currentTreasureCount) treasure/s." )
        } else {
            print("Sorry! Couldn't add the treasure as the Ship is at maximum capacity.")
        }
    }
        
    // Method to print the current treasure count

    func printCurrentTreasureCount() -> Void {
        print("The Ship currenly has \(currentTreasureCount) treasure/s.")
    }
}

// An instance of CruiseShip

let cruiseShipInstance = CruiseShip(name: "Pokhara Paradise", year: 2020, countryOfOrigin: "Nepal", maxCapacity: 100, oceanOfOperation: "Pokhara", currentPassengerCount: 20)

// Properties and Methods of CruiseShip subclass as well as Super class Ship

print("""
    Cruise Ship Details:
    The Name of the Ship is "\(cruiseShipInstance.name)".
    The Ship was built in the year \(cruiseShipInstance.year).
    The Ship was originally made in \(cruiseShipInstance.countryOfOrigin).
    The max passenger this Ship can hold is \(cruiseShipInstance.maxCapacity).
    The Ship operates in the \(cruiseShipInstance.oceanOfOperation) ocean.
    The Ship currently has \(cruiseShipInstance.currentPassengerCount) passenger/s.

""")

cruiseShipInstance.addPassenger()
cruiseShipInstance.printCurrentPassengerCount()


