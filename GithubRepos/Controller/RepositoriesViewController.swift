//
//  RepositoriesViewController.swift
//  GitHubRepos
//
//  Created by Paulo Gama on 12/03/17.
//  Copyright © 2017 Paulo Gama. All rights reserved.
//

import UIKit

class RepositoriesViewController: UIViewController {

    @IBOutlet weak var tableViewRepositories: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = Bundle.main.path(forResource: "Config", ofType: "plist") {
            if let dict = NSDictionary(contentsOfFile: path) as? [String: Any] {
                if let url = dict["URL_BASE_HOST"] {
                    print(url)
                }
            }
        }
    }


}

