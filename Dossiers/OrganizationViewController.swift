//
//  OrganizationViewController.swift
//  Dossiers
//
//  Created by Princess Sampson on 9/8/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import UIKit

class OrganizationViewController: UIViewController {
    @IBOutlet var dossierTable: UITableView!
    var organization: Organization = Organization(name: "Unknown")
    var selectedDossier: Dossier?
}

extension OrganizationViewController: UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        title = self.organization.name
        
        dossierTable.layoutSubviews()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dossier: Dossier! = organization.operatives[indexPath.row]
        
        let cell: UITableViewCell! = dossierTable.dequeueReusableCell(withIdentifier: "DossierCell")
        cell?.textLabel?.text = dossier.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return organization.operatives.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        if let dossierVC = storyboard.instantiateViewController(withIdentifier: "DossierViewController") as? DossierViewController {
            
            dossierVC.dossier = organization.operatives[indexPath.row]
            show(dossierVC, sender: nil)
        }
    }
}

