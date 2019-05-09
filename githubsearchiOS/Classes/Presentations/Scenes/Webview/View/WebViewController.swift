//
//  WebViewController.swift
//  githubsearchiOS
//
//  Created by Pich on 4/4/19.
//  Copyright © 2019 pich. All rights reserved.
//

import Foundation
import UIKit

class WebViewController: UIViewController {
    var websubview: WebViewControllerSubview = WebViewControllerSubview()
}
extension WebViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.websubview.webView)
        self.view.addSubview(self.websubview.header)
        self.view.addSubview(self.websubview.backBtn)
    }
    override func viewDidLayoutSubviews() {
        self.websubview.updateWebConstraints()
    }
}
