//
//  Homedatasource.swift
//  Twitter
//
//  Created by Deyvid Lopes on 14/05/19.
//  Copyright © 2019 Deyvid Lopes. All rights reserved.
//

import LBTAComponents

class HomeDataSource: Datasource {
    let words = ["User 1", "User 2", "User 3"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
}
