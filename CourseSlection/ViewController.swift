//
//  ViewController.swift
//  CourseSlection
//
//  Created by Giselle Salvador on 2022-04-10.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var helloLabel: UILabel!
    let userDefaults = UserDefaults()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let fNamevalue = userDefaults.value(forKey: "fname") as? String {
            helloLabel.text = "Hello, " + fNamevalue + "!"
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let fNamevalue = userDefaults.value(forKey: "fname") as? String {
            helloLabel.text = "Hello, " + fNamevalue + "!"
        }
        
    }


}

