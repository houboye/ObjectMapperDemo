//
//  ImmutablePersonClass.swift
//  ObjectMapperDemo
//
//  Created by boye on 2022/9/6.
//

import UIKit
import ObjectMapper

class ImmutablePersonClass: NSObject, ImmutableMappable {
    let name: String
    var comment: String?
    var house: String = ""
    var age: Int = 0
    var school: String?
    var car: String?
    var major = [String]()
    var birthday: String?
    
    required init(map: Map) throws {
        name = (try? map.value("name")) ?? ""
        comment = try? map.value("comment")
        house = (try? map.value("house")) ?? ""
        age = (try? map.value("age")) ?? 0
        school = try? map.value("school")
        car = try? map.value("car")
        major = (try? map.value("major")) ?? [String]()
        birthday = try? map.value("birthday")
    }
    
    func mapping(map: Map) {
        name >>> map["name"]
        comment >>> map["comment"]
        house >>> map["house"]
        age >>> map["age"]
        school >>> map["school"]
        car >>> map["car"]
        major >>> map["major"]
        birthday >>> map["birthday"]
    }
}
