//
//  Homedatasource.swift
//  Twitter
//
//  Created by Deyvid Lopes on 14/05/19.
//  Copyright © 2019 Deyvid Lopes. All rights reserved.
//

import LBTAComponents

class HomeDataSource: Datasource {
    let users: [User] = {
        let deyvidUser = User(name: "Deyvid Yury", username: "@deyvidyury2", bioText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae nunc congue, aliquam ex lacinia.", profile_Image: UIImage(named: "profile")!)
        let rayUser = User(name: "Ray Wenderlich", username: "@rwenderlich", bioText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae nunc congue, aliquam ex lacinia, lobortis lacus. Nulla dignissim maximus venenatis. Nulla facilisi.", profile_Image: UIImage(named: "profile")!)
        
        let kindleCourseUser = User(name: "Kindle Course", username: "@kindleCourse", bioText: "Nulla id tincidunt diam. Nam porta sit amet mauris vitae porttitor. Curabitur at diam lectus. \n\nSed venenatis tempus ante sed dictum.Nulla id tincidunt diam. Nam porta sit amet mauris vitae porttitor. Curabitur at diam lectus. Sed venenatis tempus ante sed dictum.Nulla id tincidunt diam. Nam porta sit amet mauris vitae porttitor. Curabitur at diam lectus. Sed venenatis tempus ante sed dictum.", profile_Image: UIImage(named: "profile")!)
        return [deyvidUser, rayUser, kindleCourseUser]
    }()
    
//    let words = ["User 1", "User 2", "User 3"]
    
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
        return users[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
}
