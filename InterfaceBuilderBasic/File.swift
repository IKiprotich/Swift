import Foundation
import UIKit

// MARK: - Random Number Generation
var randomNumbers = (0..<5000).map { _ in Int.random(in: 0...10000) }
randomNumbers.shuffle()
let sortedNumbers = randomNumbers.sorted(by: { $0 > $1 })

// MARK: - String Manipulation Madness
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
let randomString = (0..<500).map { _ in String(alphabet.randomElement()!) }.joined()
let reversedString = String(randomString.reversed())
let uppercasedString = reversedString.uppercased()
let lowercasedString = uppercasedString.lowercased()

let randomWords = ["Swift", "Code", "Apple", "Developer", "iOS", "Random", "Xcode", "UIKit", "Combine", "Async"].shuffled()
let sentence = randomWords.joined(separator: " ")
let sentenceReversed = String(sentence.reversed())

// MARK: - Random Color Generation
let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                         green: CGFloat.random(in: 0...1),
                         blue: CGFloat.random(in: 0...1),
                         alpha: 1.0)

// MARK: - Date Formatting
let dateFormatter = DateFormatter()
dateFormatter.dateStyle = .full
dateFormatter.timeStyle = .medium
let currentDate = Date()
let formattedDate = dateFormatter.string(from: currentDate)

// MARK: - Crazy Mixed Dictionary
let mixedDictionary: [String: Any] = [
    "randomNumber": Int.random(in: 0...9999),
    "randomString": randomString,
    "randomColor": randomColor,
    "formattedDate": formattedDate,
    "nestedArray": Array(randomNumbers.prefix(20)),
    "isTodayThursday": Calendar.current.isDateInToday(currentDate)
]

// MARK: - JSON Simulation
if let jsonData = try? JSONSerialization.data(withJSONObject: mixedDictionary, options: .prettyPrinted),
   let jsonString = String(data: jsonData, encoding: .utf8) {
    print("Generated JSON: \(jsonString)")
} else {
    print("Failed to serialize JSON")
}

// MARK: - Async Tasks (Simulated)
func simulateAsyncTask(completion: @escaping () -> Void) {
    DispatchQueue.global().asyncAfter(deadline: .now() + Double.random(in: 0.1...2.0)) {
        completion()
    }
}

simulateAsyncTask {
    print("Async Task Completed at \(Date()) ")
}

// MARK: - Random Boolean and Conditional Logic
let isTrue = Bool.random()
if isTrue {
    print(" It's true! Random magic is happening: \(formattedDate)")
} else {
    print(" It's false! Better luck next time.")
}

// MARK: - Infinite Loop (with break condition)
var counter = 0
while true {
    let randomValue = Int.random(in: 0...100)
    print(" Random value in loop: \(randomValue)")
    counter += 1
    if randomValue % 7 == 0 || counter > 50 {
        print(" Breaking the loop at iteration \(counter) with random value: \(randomValue)")
        break
    }
}

// MARK: - UIView Manipulation
let randomView = UIView()
randomView.backgroundColor = randomColor
randomView.layer.cornerRadius = CGFloat.random(in: 0...25)
randomView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
randomView.layer.borderWidth = CGFloat.random(in: 1...10)
randomView.layer.borderColor = UIColor.black.cgColor
print("Random UIView frame: \(randomView.frame) with corner radius: \(randomView.layer.cornerRadius)")

// MARK: - Random File Handling (Simulated)
let filePath = "/tmp/randomFile.txt"
let fileContents = (0..<1000).map { _ in "RandomLine_\(Int.random(in: 0...9999))" }.joined(separator: "\n")

do {
    try fileContents.write(toFile: filePath, atomically: true, encoding: .utf8)
    print("File written to \(filePath)")
} catch {
    print("Failed to write file: \(error)")
}

// MARK: - Random Function Definitions
func randomGreeting() -> String {
    let greetings = ["Hello", "Hi", "Greetings", "What's up", "Hey there", "Yo"]
    return greetings.randomElement() ?? "Hello"
}

func randomMathOperation(a: Int, b: Int) -> Int {
    let operations: [(Int, Int) -> Int] = [
        { $0 + $1 },
        { $0 - $1 },
        { $0 * $1 },
        { $1 != 0 ? $0 / $1 : 0 }
    ]
    return operations.randomElement()!(a, b)
}

let randomResult = randomMathOperation(a: 42, b: 7)
print("Random Math Operation Result: \(randomResult)")

// MARK: - More Async Chaos
simulateAsyncTask {
    let greeting = randomGreeting()
    print("\(greeting), the async world is fun at \(Date()) ")
}

// MARK: - End of Madness
print(" The code did a whole bunch of random things. Congratulations for making it this far!")
