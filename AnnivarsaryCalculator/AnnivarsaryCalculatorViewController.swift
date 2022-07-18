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
    @IBOutlet var annivarsaryMonthDay: [UILabel]!
    
    
    @IBOutlet weak var dPlus100Label: UILabel!
    @IBOutlet weak var dPlus200Label: UILabel!
    @IBOutlet weak var dPlus300Label: UILabel!
    @IBOutlet weak var dPlus400Label: UILabel!
    
    @IBOutlet weak var d100Label: UILabel!
    @IBOutlet weak var d200Label: UILabel!
    @IBOutlet weak var d300Label: UILabel!
    @IBOutlet weak var d400Label: UILabel!
    
    @IBOutlet weak var d100YearLabel: UILabel!
    @IBOutlet weak var d200YearLabel: UILabel!
    @IBOutlet weak var d300YearLabel: UILabel!
    @IBOutlet weak var d400YearLabel: UILabel!
    
    @IBOutlet weak var dDayDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnDesign()
        numDesign()
        yearDesign()
        calculteDays()
    }
    
    func btnDesign() {
        for btn in dButton {
            btn.layer.cornerRadius = 10
            btn.clipsToBounds = false
            btn.layer.borderWidth = 2
            btn.layer.borderColor = UIColor.white.cgColor
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
    
    func monthAndDayDesign() {
        for md in annivarsaryMonthDay {
            md.font = .systemFont(ofSize: 20)
            md.textColor = .white
        }
    }
    
    func calculteDays() {
        handleDateCalculation(currentDate: dDayDatePicker.date)
    }

    @IBAction func dDayDatePickerAction(_ sender: UIDatePicker) {
        handleDateCalculation(currentDate: sender.date)
    }
    
    func handleDateCalculation(currentDate: Date)  {
        let calendar = Calendar.current
        let dateFormatter = DateFormatter()
        let yearFormatter = DateFormatter()
        
        yearFormatter.dateFormat = "yyyy"
        dateFormatter.dateFormat = "MM월 dd일"
        
        // 1. get date from date picker
        // 2. add 100, 200, 300, 400 to formatted date
        var dateComponent = DateComponents()
        dateComponent.day = 100
        let hundredDays = calendar.date(byAdding: dateComponent, to: currentDate)
        dateComponent.day = 200
        let twoHundredDays = calendar.date(byAdding: dateComponent, to: currentDate)
        dateComponent.day = 300
        let threeHundredDays = calendar.date(byAdding: dateComponent, to: currentDate)
        dateComponent.day = 400
        let fourHundredDays = calendar.date(byAdding: dateComponent, to: currentDate)
        // 3. use dateformatter to format the date
        // 4. assign dates to labels
        d100Label.text = dateFormatter.string(from: hundredDays!)
        d100YearLabel.text = yearFormatter.string(from: hundredDays!)
        d200Label.text = dateFormatter.string(from: twoHundredDays!)
        d200YearLabel.text = yearFormatter.string(from: twoHundredDays!)
        d300Label.text = dateFormatter.string(from: threeHundredDays!)
        d300YearLabel.text = yearFormatter.string(from: threeHundredDays!)
        d400Label.text = dateFormatter.string(from: fourHundredDays!)
        d400YearLabel.text = yearFormatter.string(from: fourHundredDays!)
    }
}
