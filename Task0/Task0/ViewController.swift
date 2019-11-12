//
//  ViewController.swift
//  Task0
//
//  Created by 平間雄樹 on 2019/11/11.
//  Copyright © 2019 hirama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    /// 表示リスト
    var allName:[Name] = [Name]()
    ///リストのテーブル
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /// テストデータ
        allName += [
            Name(id:1,name:"Shiro"),
            Name(id:2,name:"Lina"),
            Name(id:3,name:"Wakaba"),
            Name(id:4,name:"Rin"),
        ]
    }
    //MARK: - UITableViewDataSource
    /// セルの個数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allName.count
    }
    
    /// セルに値を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /// セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        /// セルに表示する値を設定する
        cell.textLabel!.text = allName[indexPath.row].Name
        return cell
    }
    
    //MARK: - ACTION
    /// idソート
    @IBAction func idup(_ sender: Any) {
        allName.sort { $0.Id < $1.Id }
        tableview.reloadData()
    }
    /// nameソート
    @IBAction func nameup(_ sender: Any) {
         allName.sort { $0.Name < $1.Name }
        tableview.reloadData()
    }
}

/// 名前情報
class Name{
    let Id:Int
    let Name:String
    init( id:Int, name:String ){
        Id = id
        Name = name
    }
}
