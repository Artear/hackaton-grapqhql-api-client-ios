//
//  ViewController.swift
//  hackatonGrapqhqlApiClient
//
//  Created by Mauro Gonzalez on 06/10/2017.
//  Copyright © 2017 Artear. All rights reserved.
//

import UIKit
import Apollo

let apollo = ApolloClient(url: URL(string:"https://cover-graphql-server.herokuapp.com/graphql")!)
class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

