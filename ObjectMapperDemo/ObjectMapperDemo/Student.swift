//
//  Student.swift
//  ObjectMapperDemo
//
//  Created by boye on 2022/9/6.
//

import UIKit
import ObjectMapper

class Student: NSObject, Mappable {
    var name: String?
    var comment: String?
    var house: String = ""
    var age: Int = 0
    var school: String?
    var car: String?
    var major = [String]()
    var birthday: String?
    
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        comment <- map["comment"]
        house <- map["house"]
        age <- map["age"]
        school <- map["school"]
        car <- map["car"]
        major <- map["major"]
        birthday <- map["birthday"]
    }
}
