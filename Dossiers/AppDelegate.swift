//
//  AppDelegate.swift
//  Dossiers
//
//  Created by Princess Sampson on 9/8/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let operatives = [
            Dossier(name: "Bucky Barnes",
                    codename: "Winter Soldier",
                    lastKnownLocation: "Siberia",
                    knownAssociates: ["Steve Rogers", "Sam Wilson"],
                    occupation: "Sniper",
                    languagesSpoken: ["English", "Russian", "Romanian"]),
            Dossier(name: "Natasha Ramanoff (Natalia Ramanova)",
                    codename: "Black Widow",
                    lastKnownLocation: "NYC",
                    knownAssociates: ["Clint Barton", "Steve Rogers", "Tony Stark"],
                    occupation: "Superhero and undercover operative",
                    languagesSpoken: ["English", "Russian"]),
            Dossier(name: "Kamala Khan",
                    codename: "Ms. Marvel",
                    lastKnownLocation: "Jersey City, NJ",
                    knownAssociates: ["Carol Danvers", "Young Avengers"],
                    occupation: "Superhero",
                    languagesSpoken: ["English", "Arabic"])
        ]
        
        let org = Organization(name: "SHIELD", operatives: operatives)
        let rootViewController = window!.rootViewController as! UINavigationController
        let ovc = rootViewController.topViewController as! OrganizationViewController
        ovc.organization = org
        
        
        return true
    }
    
}

