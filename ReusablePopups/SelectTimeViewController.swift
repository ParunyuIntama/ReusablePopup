//
//  SelectTimeViewController.swift
//  ReusablePopups
//
//  Created by Parunyu Intama on 14/6/2561 BE.
//  Copyright © 2561 Parunyu Intama. All rights reserved.
//

import UIKit

class SelectTimeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func selectTime_TouchUpInside(_ sender: UIButton)
    {
        let sb = UIStoryboard(name: "DatePopupViewController", bundle: nil)
        let  popup = sb.instantiateInitialViewController()! as! DatePopupViewController
        popup.showTimePicker = true
        self.present(popup, animated: true)
        
    }
}
