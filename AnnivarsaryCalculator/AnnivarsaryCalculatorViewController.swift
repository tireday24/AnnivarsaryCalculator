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
    @IBOutlet var annivarsaryYear: [UILabel]!
    
    @IBOutlet weak var d100Label: UILabel!
    @IBOutlet weak var d200Label: UILabel!
    @IBOutlet weak var d300Label: UILabel!
    @IBOutlet weak var d400Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnDesign()
        numDesign()
        yearDesign()
    }
    
    func btnDesign() {
        for btn in dButton {
            btn.layer.cornerRadius = 10
            btn.clipsToBounds = true
            btn.layer.borderWidth = 2
            btn.layer.borderColor = UIColor.white.cgColor
            dayDesign(d100Label, labelFont: .systemFont(ofSize: 20), labelColor: .white, labelText: "03월 27일")
            dayDesign(d200Label, labelFont: .systemFont(ofSize: 20), labelColor: .white, labelText: "07월 05일")
            dayDesign(d300Label, labelFont: .systemFont(ofSize: 20), labelColor: .white, labelText: "10월 13일")
            dayDesign(d400Label, labelFont: .systemFont(ofSize: 20), labelColor: .white, labelText: "01월 21일")
            
        }
    }
    
    func numDesign() {
        for num in dLabel {
            num.font = .boldSystemFont(ofSize: 25)
            num.textColor = .white
        }
    }
    
    func yearDesign() {
        for yr in annivarsaryYear {
            yr.font = .systemFont(ofSize: 20)
            yr.textColor = .white
        }
    }
    
    func dayDesign(_ labelName: UILabel, labelFont: UIFont, labelColor: UIColor, labelText: String) {
        
    }
    

    

}
