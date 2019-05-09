//
//  ViewCotrollerSubview.swift
//  githubsearchiOS
//
//  Created by Pich on 4/4/19.
//  Copyright © 2019 pich. All rights reserved.
//

import Foundation
import SnapKit
import Then

class ViewControllerSubview {
    let header = UIView().then {
        $0.backgroundColor = UIColor.lightGray
    }
    let txtHeader = UILabel().then {
        $0.text = "GitHub Search"
    }
    let searchBox = UISearchBar().then {
        $0.placeholder = "Search repository..."
        $0.layer.borderWidth = 0.5
        $0.layer.borderColor = UIColor.gray.cgColor
    }
    let result = UITableView()
    func updateConstraints() {
        self.header.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(120)
            make.top.equalToSuperview()
        }
        self.txtHeader.snp.makeConstraints { (make) in
            make.width.equalTo(120)
            make.height.equalTo(30)
            make.centerX.equalToSuperview()
            make.top.equalTo(self.header.snp.top).offset(65)
        }
        self.searchBox.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.top.equalTo(self.header.snp.bottom)
        }
        self.result.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalToSuperview()
            make.centerX.equalToSuperview()
            make.top.equalTo(self.result.snp.bottom)
        }
    }
    
    
}
