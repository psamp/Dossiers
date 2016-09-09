//
//  Organization.swift
//  Dossiers
//
//  Created by Princess Sampson on 9/8/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import Foundation

class Organization {
    var name: String
    var operatives: [Dossier]

    
    init(name: String, operatives: [Dossier]) {
        self.name = name
        self.operatives = operatives
        
    }
    
    convenience init(name: String) {
        self.init(name: name, operatives: [])
    }
}
