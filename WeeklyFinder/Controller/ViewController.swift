//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Николай Басов on 08.01.2021.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlet

    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var findDayButton: UIButton!

    //MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
           findDayButton.layer.cornerRadius = 10
    }

    //MARK: - IBAction

    @IBAction func findDayTap(_ sender: UIButton) {
        sender.findDay()
        guard let day = dateTF.text,
              let month = monthTF.text,
              let year = yearTF.text else { return }
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
    
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"

        guard let date = calendar.date(from: dateComponents) else { return }
        let weekday = dateFormatter.string(from: date)
        let capitalazedWeekday = weekday.capitalized
        resultLable.text = capitalazedWeekday
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

