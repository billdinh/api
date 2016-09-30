//
//  ViewController.swift
//  Database
//
//  Created by Duc Pham Viet on 9/30/16.
//  Copyright © 2016 Duc Pham Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        fetchData()
    }
    
    fileprivate func fetchData() {
        let url = URL(string: "https://raw.githubusercontent.com/dviet/Database/master/Database/Data1.json")
        URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
            
            if error != nil {
               return
            }
            
            do {
                
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers)
                print(json)
                
            } catch let err {
                print(err)
            }
        }).resume()
    }
}

