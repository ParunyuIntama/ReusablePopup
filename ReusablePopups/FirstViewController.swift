//
//  FirstViewController.swift
//  ReusablePopups
//
//  Created by Parunyu Intama on 14/6/2561 BE.
//  Copyright © 2561 Parunyu Intama. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var dateLable: UILabel!
    
    var observer: NSObjectProtocol?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // 1. NOTIFICATIONS: OLD WAY
        
        // NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .saveDateTime, object: nil)
        
        // 1. NOTIFICATIONS: NEW WAY
        
        
        observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: OperationQueue.main) {(notification) in
        let  dateVc = notification.object as! DatePopupViewController
        self.dateLable.text = dateVc.formattedDate
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
            if let observer = observer {
            NotificationCenter.default.removeObserver(observer)
        }
    
    }
    
    
        
    
    
//    @objc func handlePopupClosing(notification: Notification) {
//        let  dateVc = notification.object as! DatePopupViewController
//        dateLable.text = dateVc.formattedDate
//    }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDatePopupViewControllerSegue" {
        let popup = segue.destination as! DatePopupViewController
            popup.showTimePicker = false
        }
    }
}


