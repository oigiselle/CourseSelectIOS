//
//  CourseDetail.swift
//  CourseSlection
//
//  Created by Giselle Salvador on 2022-04-21.
//

import UIKit

class CourseDetail: UIViewController{
    

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var codeLabel: UILabel!
    
    @IBOutlet weak var professorLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    @IBOutlet weak var alertLabel: UILabel!
    
    @IBOutlet weak var obs: UILabel!
    

    var course: Courses!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = course.name
        codeLabel.text = course.code
        professorLabel.text = "Professor: " + course.professor
        descLabel.text = course.desc
        
        alertLabel.text = "By dropping this course, you will no longer have access to course material and will be assigned an F grade. This may also affect your attendance status, and may have implications on Funding, OSAP, Visa Eligibility and/or graduation requirements. If you have any questions, please contact the Enrolment Centre, for International students, please contact the International Student Services Office."
        
        
    }
    
    @IBAction func dropCourse(_ sender: Any) {
        obs.text = "We received your request and will contact you by email by 5 business days"
    }
    

}
