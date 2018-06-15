//
//  SecondViewController.swift
//  ReusablePopups
//
//  Created by Parunyu Intama on 14/6/2561 BE.
//  Copyright © 2561 Parunyu Intama. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var observer: NSObjectProtocol?
   
    @IBOutlet weak var dateLable: UILabel!
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDatePopupViewControllerSegue" {
            let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
            // 1. Assign to a function
            popup.onSave = OnSave
            // 2. Use a Closure
//            popup.onSave = { (data) in
//                self.dateLable.text = data
//            }
        }
    }
    
    func OnSave(_ data: String) -> () {
        dateLable.text = data
    }
}




