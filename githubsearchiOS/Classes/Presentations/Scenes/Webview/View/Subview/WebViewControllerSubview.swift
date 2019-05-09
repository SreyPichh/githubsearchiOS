//
//  WebViewControllerSubview.swift
//  githubsearchiOS
//
//  Created by Pich on 4/4/19.
//  Copyright © 2019 pich. All rights reserved.
//

import SnapKit
import Then

class WebViewControllerSubview {
    let header = UIView().then {
        $0.backgroundColor = UIColor.lightGray
    }
    let webView = UIWebView()
    
    let backBtn = UIButton().then {
        $0.setTitle("Back", for: .normal)
        $0.setTitleColor(UIColor.blue, for: .normal)
    }
    func updateWebConstraints() {
        self.header.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(120)
            make.top.equalToSuperview()
        }
        self.backBtn.snp.makeConstraints { (make) in
            make.width.equalTo(50)
            make.height.equalTo(30)
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(self.header.snp.bottom)
        }
    }
    
}

