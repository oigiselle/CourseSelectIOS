//
//  Courses.swift
//  CourseSlection
//
//  Created by Giselle Salvador on 2022-04-21.
//

import Foundation

class Courses
{
    var name: String!
    var code: String!
    var desc: String!
    var professor: String!
    
    init(name: String, code: String, desc: String, professor: String){
        self.name = name
        self.code = code
        self.desc = desc
        self.professor = professor
    }
}
