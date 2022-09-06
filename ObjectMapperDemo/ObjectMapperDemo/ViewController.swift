//
//  ViewController.swift
//  ObjectMapperDemo
//
//  Created by boye on 2022/9/6.
//

import UIKit
import ObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var jsonString1 = """
            {
              "birthday": "1999-09-29",
              "major": [
                "软件工程",
                "通信工程"
              ],
              "car": null,
              "school": "西安交通大学",
              "hasGirlfriend": false,
              "name": null,
              "comment": "",
              "house": null,
              "age": 25
            }
"""
        
        let strudent = Student(JSONString: jsonString1)
        let studentStruct = MappableStudentStruct(JSONString: jsonString1)
        let personClass = try? ImmutablePersonClass(JSONString: jsonString1)
        
        print(strudent)
        print(studentStruct)
        print(personClass)
        
        print(Mapper().toJSONString(strudent!))
        print(Mapper().toJSONString(studentStruct!))
        print(Mapper().toJSONString(personClass!))
        
        
        do {
            let person = try ImmutablePerson(JSONString: jsonString1)
            print(person)
            print(Mapper().toJSONString(person))
        } catch let error {
            print(error.localizedDescription)
            print("---------")
        }
    }


}

