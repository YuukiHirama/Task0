//
//  NameCell.swift
//  Task0
//
//  Created by 平間雄樹 on 2019/11/13.
//  Copyright © 2019 hirama. All rights reserved.
//

import UIKit

// 名前リスト表示用のクラス

/// ビュー側
class NameViewCell: UITableViewCell{
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var name: UILabel!
}

/// モデル側
class NameModelCell{
    let Id:Int
    let Name:String
    init( id:Int, name:String ){
        Id = id
        Name = name
    }
}
