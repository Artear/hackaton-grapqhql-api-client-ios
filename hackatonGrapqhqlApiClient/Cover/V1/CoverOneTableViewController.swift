//
//  CoverOneTableViewController.swift
//  hackatonGrapqhqlApiClient
//
//  Created by Jose Luis Sagredo on 6/10/17.
//  Copyright © 2017 Artear. All rights reserved.
//

import UIKit
import Apollo

class CoverOneTableViewController: UITableViewController {
    var posts: [AllCoversOneQuery.Data.Cover.ContainerList?]? {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadData() {
        apollo.fetch(query: AllCoversOneQuery()) { (result, error) in
            self.posts = result?.data?.cover?.containerList
        }
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts?.count ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        if let post = posts?[indexPath.row] {
            cell.textLabel?.text = "ID \(post.id!)"
        }
        
        // Configure the cell...

        return cell
    }
}
