//
//  ViewController.swift
//  SearchinNavigation
//
//  Created by Master on 06/02/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var searchBar:UISearchBar?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showSearchBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showSearchBar(){
        
        searchBar = UISearchBar()
        searchBar?.sizeToFit()
        
        navigationItem.titleView = searchBar
        
        let leftBtn:UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(btnLeft))
        let rightBtn:UIBarButtonItem = UIBarButtonItem(title: "+", style: UIBarButtonItemStyle.plain, target: self, action: #selector(btnRight))
        
        self.navigationItem.leftBarButtonItem = leftBtn
        self.navigationItem.rightBarButtonItem = rightBtn
    }
    
    func btnLeft(){
        
    }
    
    func btnRight(){
        
    }


}

