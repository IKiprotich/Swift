//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Student3 on 20/02/2025.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var segueSwitch: UISwitch!
    
    
    
    @IBOutlet weak var yellowButtonTapped: UIButton!
    
    
    
    @IBOutlet weak var greenButtonTapped: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
}


