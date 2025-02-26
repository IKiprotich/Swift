//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Student3 on 11/02/2025.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var toggle: UISwitch!
    
    
    @IBOutlet var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Oh NO, you GOT hAcKed!")
        
        if toggle.isOn{
            print("Switch is on")
        }
        else{
            print("The switch is off")
        }
    }
    
    
    @IBAction func SwitchToogled(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is ON")
        }
        
        else{
            print("The switch is OFF")
        }
    }
    
    @IBAction func sliderValuechange(_ sender: UISlider) {
        print("The slider value is: \(sender.value)")
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
        
    }
    
    @IBAction func tapAnywhere(_ sender: UITapGestureRecognizer) {
        
        print("You tapped at \(sender.location(in: view))")
    }
    
    
}

