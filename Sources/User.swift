//
//  User.swift
//  PMUserPrinter
//
//  Created by Den Andreychuk on 22.03.2022.
//

import Foundation
import SwiftyBeaver

let log = SwiftyBeaver.self

public class User {
    
    let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public func sayHello() {
        log.info("Hello for \(name)")
        print("Hello, \(name)")
    }
}
