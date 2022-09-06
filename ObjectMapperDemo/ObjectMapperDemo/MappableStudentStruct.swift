//
//  MappableStudentStruct.swift
//  ObjectMapperDemo
//
//  Created by boye on 2022/9/6.
//

import UIKit
import ObjectMapper

struct MappableStudentStruct: Mappable {
    var name: String?
    var comment: String?
    var house: String = ""
    var age: Int = 0
    var school: String?
    var car: String?
    var major = [String]()
    var birthday: String?
    
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        self.name <- map["name"]
        self.comment <- map["comment"]
        self.house <- map["house"]
        self.age <- map["age"]
        self.school <- map["school"]
        self.car <- map["car"]
        self.major <- map["major"]
        self.birthday <- map["birthday"]
    }
}
