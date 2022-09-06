//
//  ImmutablePerson.swift
//  ObjectMapperDemo
//
//  Created by boye on 2022/9/6.
//

import UIKit
import ObjectMapper

enum ImmutableError: Error, LocalizedError {
    case nameVisiableError
    case ageError
    case heightError
    case nameLengthError
    
    var errorDescription: String? {
        switch self {
        case .nameVisiableError:
            return "nameVisiableError"
        case .ageError:
            return "ageError"
        case .heightError:
            return "heightError"
        case .nameLengthError:
            return "nameLengthError"
        }
    }
}

struct ImmutablePerson: ImmutableMappable {
    let name: String
    var comment: String?
    var house: String = ""
    var age: Int = 0
    var school: String?
    var car: String?
    var major = [String]()
    var birthday: String?
    
    init(map: Map) throws {
        do {
            try name = try map.value("name")
        } catch {
            throw ImmutableError.nameVisiableError
        }
        
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
