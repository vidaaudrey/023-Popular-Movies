//
//  ViewController.swift
//  TestDeleteLater
//
//  Created by Audrey Li on 5/11/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import UIKit
import ALFramework

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var dataSource:TableViewDataSource!
    var movies:[Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = TableViewDataSource(items: movies, cellIdentifier: "cell", cellActionHandler: nil, configureBlock: { (cell, item) -> () in
            if let actualCell = cell as? MovieTableViewCell {
                actualCell.configCells(item as! Movie)
            }
        })
        tableView.dataSource = dataSource
        tableView.delegate = dataSource
        
        let url = ALFrameworkConfig.TMDBURLPopular + ALFrameworkConfig.TMDBKey
        ALUtils.getJSONObjectFromURL(url, callback: { (jsonData) -> Void in
            
            if let jsonArr = jsonData["results"] as? NSArray {
                for jsonDictData in jsonArr {
                    if let jsonDict = jsonDictData  as? NSDictionary {
                        self.movies.append(Movie.fromJSON(jsonDict))
                    }
                    self.dataSource.items = self.movies
                    self.tableView.reloadData()
                }
                
            }
        })
        
    }

}
