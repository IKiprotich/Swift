struct Student{
    
    //propereties
    var firstName:String
    var lastName: String
    var age:Int
    var email:String
    var phoneNumber: String
    var course:String
    var feePaid: Double
    var courseCost: Double
    var fee: Double{
        courseCost - feePaid
    }
    
    
    
    
    //register units
    func registerUnits()->String{
        return “You have registered for the units."
    }
    
    //download progress reports
    func downloadProgress()->String{
        return "Download progress reports"
        
    }
    
    //check fee
    func checkFee()->String{
        return "Your Fee Balance is \(fee)"
    }
    
    // Register for graduation
    func registerForGraduation()->String{
        
        return "You have registered for graduation."
        
    }
    
    //print exam card
    func printExamCard()-> String{
        return "Print Exam Card"
    }
}
//creating instance of a student
let firstStudent = Student(firstName: "John", lastName: "Doe", age: 23, email: "johndoe@example.com", phoneNumber: "0789564352", course: "Bachelor of Science in Computer Science", feePaid: 100000, courseCost: 300000)
print(firstStudent.registerUnits(), "\n")
print(firstStudent.downloadProgress(), "\n")
print(firstStudent.checkFee(), "\n")
print(firstStudent.registerForGraduation(), "\n")
print("Hi \(firstStudent.firstName) \(firstStudent.lastName)! Welcome to the virtual graduation ceremony.")


