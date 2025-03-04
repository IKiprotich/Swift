import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!  // Link this to your UILabel in Storyboard

    var currentNumber: String = ""  // Tracks user input
    var previousNumber: Double = 0  // Stores first operand
    var isTypingNumber = false  // Tracks whether user is typing
    var operation: String? = nil  // Stores the operation selected

    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = "0"  // Initialize display label with "0"
    }

    // MARK: - Handle Number Button Press (0-9)
    @IBAction func zeroPressed(_ sender: UIButton) {
        appendNumber("0")
    }

    @IBAction func onePressed(_ sender: UIButton) {
        appendNumber("1")
    }

    @IBAction func twoPressed(_ sender: UIButton) {
        appendNumber("2")
    }

    @IBAction func threePressed(_ sender: UIButton) {
        appendNumber("3")
    }

    @IBAction func fourPressed(_ sender: UIButton) {
        appendNumber("4")
    }

    @IBAction func fivePressed(_ sender: UIButton) {
        appendNumber("5")
    }

    @IBAction func sixPressed(_ sender: UIButton) {
        appendNumber("6")
    }

    @IBAction func sevenPressed(_ sender: UIButton) {
        appendNumber("7")
    }

    @IBAction func eightPressed(_ sender: UIButton) {
        appendNumber("8")
    }

    @IBAction func ninePressed(_ sender: UIButton) {
        appendNumber("9")
    }

    // MARK: - Handle Operator Button Press (+, -, x, ÷)
    @IBAction func plusPressed(_ sender: UIButton) {
        setOperation("+")
    }

    @IBAction func minusPressed(_ sender: UIButton) {
        setOperation("-")
    }

    @IBAction func multiplyPressed(_ sender: UIButton) {
        setOperation("x")
    }

    @IBAction func dividePressed(_ sender: UIButton) {
        setOperation("/")
    }

    // MARK: - Handle "=" Button Press
    @IBAction func equalsPressed(_ sender: UIButton) {
        let secondNumber = Double(currentNumber) ?? 0
        if let op = operation {
            var result: Double = 0

            switch op {
            case "+": result = previousNumber + secondNumber
            case "-": result = previousNumber - secondNumber
            case "x": result = previousNumber * secondNumber
            case "÷": result = secondNumber != 0 ? previousNumber / secondNumber : 0
            default: break
            }

            displayLabel.text = String(result)
            currentNumber = String(result)
            isTypingNumber = false
            operation = nil
        }
    }

    // MARK: - Handle "C" (Clear) Button
    @IBAction func clearPressed(_ sender: UIButton) {
        currentNumber = "0"
        previousNumber = 0
        operation = nil
        isTypingNumber = false
        displayLabel.text = "0"
    }

    // MARK: - Helper Methods
    func appendNumber(_ number: String) {
        if isTypingNumber {
            currentNumber += number
        } else {
            currentNumber = number
            isTypingNumber = true
        }
        displayLabel.text = currentNumber
    }

    func setOperation(_ op: String) {
        operation = op
        previousNumber = Double(currentNumber) ?? 0
        isTypingNumber = false
    }
}

