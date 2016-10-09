//
//  Dossier.swift
//  Dossiers
//
//  Created by Princess Sampson on 9/8/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import Foundation

class Dossier {
    var name: String
    var codename: String
    var lastKnownLocation: String
    var knownAssociates: [String]
    var occupation: String
    var languagesSpoken: [String]
    
    init(name: String, codename: String, lastKnownLocation: String, knownAssociates: [String],  occupation: String, languagesSpoken: [String]) {
        self.name = name
        self.codename = codename
        self.lastKnownLocation = lastKnownLocation
        self.knownAssociates = knownAssociates
        self.occupation = occupation
        self.languagesSpoken = languagesSpoken
    }
}
