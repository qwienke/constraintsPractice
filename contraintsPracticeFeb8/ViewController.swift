//
//  ViewController.swift
//  contraintsPracticeFeb8
//
//  Created by Quinn Wienke on 2/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var switches: [UISwitch]!
    
    
    @IBOutlet weak var buttonBottomContraint: NSLayoutConstraint!
    
    
    
    @IBAction func buttonToggles(_ sender: UISwitch) {
        switches.forEach {
            aSwitch in
            if sender === aSwitch {
                return
            }
            
            aSwitch.setOn(Bool.random(), animated: true)
        }
        
        
        let allOff =
        switches.allSatisfy({!$0.isOn})
        
        if allOff{
           showButton()
        }
    }
    func showButton() {
        buttonBottomContraint.constant = 38
        UIView.animate(withDuration: 1, delay: 0.0, usingSpringWithDamping: 12.9, initialSpringVelocity: 53, options: .curveEaseInOut) {
            self.view.layoutIfNeeded()
        }
        
    }
}
