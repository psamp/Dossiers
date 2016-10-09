//
//  DossierViewController.swift
//  Dossiers
//
//  Created by Princess Sampson on 9/9/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import UIKit

class DossierViewController: UIViewController {
    var dossier: Dossier?
    @IBOutlet var name: UILabel!
    @IBOutlet var codename: UILabel!
    @IBOutlet var occupation: UILabel!
    @IBOutlet var lastKnownLocation: UILabel!
    @IBOutlet var knownAssociates: UILabel!
    @IBOutlet var languagesSpoken: UILabel!
    
    func updateView() {
        
        let iouDossier: Dossier! = dossier
        
        name.text = iouDossier.name
        codename.text = iouDossier.codename
        occupation.text = iouDossier.occupation
        lastKnownLocation.text = iouDossier.lastKnownLocation
        knownAssociates.text = iouDossier.knownAssociates.joined(separator: ", ")
        languagesSpoken.text = iouDossier.languagesSpoken.joined(separator: ", ")
        
        self.title = name.text
    }
    
    override func viewDidLoad() {
        updateView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateView()
    }
    
}
