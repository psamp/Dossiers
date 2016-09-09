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
}

extension OrganizationViewController: UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        dossierTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dossier: Dossier! = organization.operatives[indexPath.row]
        
        let cell: UITableViewCell! = dossierTable.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = dossier.name
        
            return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return organization.operatives.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("hello from \(indexPath.row)")
    }
}

