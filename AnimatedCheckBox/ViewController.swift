//
//  ViewController.swift
//  AnimatedCheckBox
//
//  Created by Khaled Marouani on 4/10/19.
//  Copyright © 2019 Khaled Marouani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var btnCheckBox: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        btnCheckBox.setImage(UIImage(named: "Checkmarkempty"), for: .normal)
        btnCheckBox.setImage(UIImage(named: "Checkmark"), for: .selected)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func checkMarkTapped(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0.1, options:  .curveLinear, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (succes) in
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveLinear, animations: {
                sender.isSelected = !sender.isSelected
                sender.transform = .identity
            } , completion: nil)
        }
        
    }
    
}

