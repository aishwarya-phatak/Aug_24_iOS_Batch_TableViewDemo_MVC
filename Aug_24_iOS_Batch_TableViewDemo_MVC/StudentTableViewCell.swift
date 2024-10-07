//
//  StudentTableViewCell.swift
//  Aug_24_iOS_Batch_TableViewDemo_MVC
//
//  Created by Vishal Jagtap on 07/10/24.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var studentNameLabel: UILabel!
    @IBOutlet weak var studentRollNumberLabel: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
}
