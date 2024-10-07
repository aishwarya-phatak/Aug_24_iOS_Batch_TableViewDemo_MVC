//
//  ViewController.swift
//  Aug_24_iOS_Batch_TableViewDemo_MVC
//
//  Created by Vishal Jagtap on 07/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var studentTableView: UITableView!
    var students : [Student] = [
        Student(studentName: "Suhaan", studentRollNumber: 10),
        Student(studentName: "Aniket", studentRollNumber: 11),
        Student(studentName: "Pallavi", studentRollNumber: 12),
        Student(studentName: "Saqib", studentRollNumber: 13),
        Student(studentName: "Meghaa", studentRollNumber: 14)]
    
    var reuseIdentifierForTableViewCell = "StudentTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initlializeViews()
        registerXIBWithTableView()
    }
    
    func initlializeViews(){
        studentTableView.delegate = self
        studentTableView.dataSource = self
    }
    
    func registerXIBWithTableView(){
        let uiNib = UINib(nibName: "StudentTableViewCell", bundle: nil)
        self.studentTableView.register(uiNib, forCellReuseIdentifier: reuseIdentifierForTableViewCell)
    }
}

//MARK : Conforming ViewController class with UITableViewDataSource
extension ViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: reuseIdentifierForTableViewCell, for: indexPath) as! StudentTableViewCell
        studentTableViewCell.studentNameLabel.text = students[indexPath.row].studentName
        studentTableViewCell.studentRollNumberLabel.text = String(students[indexPath.row].studentRollNumber)
        studentTableViewCell.imageView1.image = UIImage(named: "test_image_2")
        return studentTableViewCell
    }
}

//MARK : Conforming ViewController class with UITableViewDelegate
extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145.0
    }
}