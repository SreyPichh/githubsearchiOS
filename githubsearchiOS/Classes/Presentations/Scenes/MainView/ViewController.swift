//
//  ViewController.swift
//  githubsearchiOS
//
//  Created by Pich on 4/4/19.
//  Copyright © 2019 pich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var subview: ViewControllerSubview = ViewControllerSubview()


}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(self.subview.result)
        self.view.addSubview(self.subview.header)
        self.view.addSubview(self.subview.searchBox)
        self.view.addSubview(self.subview.txtHeader)
    }
    override func viewDidLayoutSubviews() {
        self.subview.updateConstraints()
    }
}

