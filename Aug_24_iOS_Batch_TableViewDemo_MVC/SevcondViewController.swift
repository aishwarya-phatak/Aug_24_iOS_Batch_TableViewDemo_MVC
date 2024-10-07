//
//  SevcondViewController.swift
//  Aug_24_iOS_Batch_TableViewDemo_MVC
//
//  Created by Vishal Jagtap on 07/10/24.
//

import UIKit

class SevcondViewController: UIViewController {

    @IBOutlet weak var studentNameLabel: UILabel!
    @IBOutlet weak var studentRollNumberLabel: UILabel!
    
    var container : Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.studentNameLabel.text = container?.studentName
        self.studentRollNumberLabel.text = container?.studentRollNumber.codingKey.stringValue
    }
}
