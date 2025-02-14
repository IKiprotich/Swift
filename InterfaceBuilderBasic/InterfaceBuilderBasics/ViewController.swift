//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Student3 on 03/02/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "This App rocks!"
    }
    
}

