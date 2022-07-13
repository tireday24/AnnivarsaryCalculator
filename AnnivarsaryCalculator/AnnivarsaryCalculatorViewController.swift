//
//  AnnivarsaryCalculatorViewController.swift
//  AnnivarsaryCalculator
//
//  Created by 권민서 on 2022/07/13.
//

import UIKit

class AnnivarsaryCalculatorViewController: UIViewController {

    
   
    
    @IBOutlet var dButton: [UIButton]!
    @IBOutlet var dLabel: [UILabel]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func btnDesign() {
        for btn in dButton {
            btn.layer.cornerRadius = 10
            btn.clipsToBounds = true
            btn.layer.borderWidth = 2
            btn.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    func numDesign() {
        for num in dLabel {
            num.font = .boldSystemFont(ofSize: 25)
            num.textColor = UIColor.white
        }
    }
    

    

}
