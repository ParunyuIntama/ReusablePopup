//
//  DataPopupViewController.swift
//  ReusablePopups
//
//  Created by Parunyu Intama on 14/6/2561 BE.
//  Copyright © 2561 Parunyu Intama. All rights reserved.
//

import UIKit

class DatePopupViewController: UIViewController {

    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    var showTimePicker: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()

        if showTimePicker {
            titleLable.text = "Select Time"
            datePicker.datePickerMode = .time
            saveButton.setTitle("Save Time", for: .normal)
        }
    }
    @IBAction func saveDate_TouchUplnside(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
}
