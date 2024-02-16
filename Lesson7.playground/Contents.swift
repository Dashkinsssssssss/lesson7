import UIKit

var greeting = "Hello, playground"

class Person {
    var name: String
    var surname: String
    var age: Int
   
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}
class School {
    var students: [String]
    var name: String
    var address: Address
    var director: Director
    
    init(students: [String], name: String, address: Address, director: Director) {
        self.students = students
        self.name = name
        self.address = address
        self.director = director
    }
    func printSchoolInfo() {
        print("name: \(name)")
        print("adress: \(adress.streetname),\(adress.x), \(adress.y)")
        print("director: \(director.name), \(director,surname),age: \(director.age), experience: \(director.experience),rating: \(director.rating)")
        print (" school students")
        for student in students {
            student.printStudInfo()
        }
    }
}



class Address {
    var x: Double
    var y: Double
    var streetname: String
    
    init(x: Double, y: Double, streetname: String) {
        self.x = x
        self.y = y
        self.streetname = streetname
    }
}

class Director: Person {
    var experience: Int
    var rating: Double
    
    init (name: String, surname: String, age: Int, experience: Int, rating: Double) {
        self.experience = experience
        self.rating = rating
        super.init(name:name, surname: name, age: age)
    }
}


class Student: Person {
    var classnumber: Int
    var subject: [(String, Int)]

    init(name: String, surname: String, age: Int = 14, classnumber: Int = 8, subject: [(String, Int)] = [("math", 5), ("biology",3)]) {
        self.classnumber = classnumber
        self.subject = subject
        super.init(name: name, surname: surname, age: age )
    }
    func printStudInfo() {
        print()
        print("\(surname) \(name) (Class: \(classnumber))")
        for subject in subject {
            print("\(subject.0):(\(subject.1)")
        }
    }
}

let director = Director(name: "Mike", surname: "Fallson", age: 46, experience: 13, rating: 8.5)
let student = Student(name: "Alex", surname: "Anderson", age: 13, classnumber: 6, subject: [("Math",5), ("Biology", 7)])
let student1 = Student(name: "Mark", surname: "Wolfskin", age: 18, classnumber: 11, subject: [("Math",7), ("Biology", 10)])
let addres = Address(x: 157.55, y: 456.23, streetname: "Main Street")
let school = School(students: [student,student1], name: "Economic school", address: Address, director: Director)


school.printSchoolInfo()
