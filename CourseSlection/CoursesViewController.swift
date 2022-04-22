//
//  CoursesViewController.swift
//  CourseSlection
//
//  Created by Giselle Salvador on 2022-04-21.
//

import UIKit

class CoursesViewController: UITableViewController {
    
    var courses: [Courses] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        var course: Courses
        
        course = Courses(name: "App Development for iOS", code: "ISP1002", desc: "Core concepts of developing software for the iOS platform.", professor: "Joshua Van der Most")
        
        courses.append(course)
        
        course = Courses(name: "App Development for Android", code: "JAV1001", desc: "Concepts of developing software for the Android platform.", professor: "David Vallieres")
        
        courses.append(course)
        
        course = Courses(name: "Database Mgmt & Warehousing", code: "JAV1001", desc: "Concepts in data and information management", professor: "Aditya Phadke")
        
        courses.append(course)
        
        course = Courses(name: "Foundations of B.A.", code: "BTA1002", desc: "Overview of the extensiveness of the Business Analysis profession.", professor: "Imane Choukrallah Ricard")
        
        courses.append(course)
        
        course = Courses(name: "App Development for Web", code: "WEB1001", desc: "Developing software for the web. Students will use a variety of programming tools, design elements, data types, controls, objects, and browsers.", professor: "Brent Ritchie")
        
        courses.append(course)
        
        
    }
    
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let course = courses[indexPath.row]
        let reusableCell = "reusableCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCell, for: indexPath)  as! CourseCell
        
        
        cell.name.text = course.name
        cell.code.text = course.code
        cell.professor.text = course.professor
        cell.desc.text = course.desc

        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "courseDetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
            let selectedCourse = self.courses[indexPath.row]

            let destinationViewControler = segue.destination as! CourseDetail
            destinationViewControler.course = selectedCourse


            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
