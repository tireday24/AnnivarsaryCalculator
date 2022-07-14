//
//  ViewController.swift
//  AnnivarsaryCalculator
//
//  Created by 권민서 on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //DateFormatter: 알아보기 쉬운 날짜 + 시간대 (yyyy MM dd hh:mm:ss) mm은 분을 의미
        let format = DateFormatter()
        format.dateFormat = "+ dd"
        //format.locale
        
        let result = format.string(from: Date())
        print(result)
        
        let word = "2일"
        let dateResult = format.date(from: word)
        print(dateResult)
        
    }


}

