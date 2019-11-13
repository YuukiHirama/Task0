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
    var allName:[NameModelCell] = [NameModelCell]()
    ///リストのテーブル
    @IBOutlet weak var tableview: UITableView!
    /// 初期ロード
    override func viewDidLoad() {
        super.viewDidLoad()
        /// テストデータ
        allName += [
            NameModelCell(id:1,name:"Shiro"),
            NameModelCell(id:2,name:"Lina"),
            NameModelCell(id:3,name:"Wakaba"),
            NameModelCell(id:4,name:"Rin"),
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
        let nameCell: NameViewCell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath) as! NameViewCell
        /// 格セルに表示する値
        nameCell.id.text = allName[indexPath.row].Id.description
        nameCell.name.text = allName[indexPath.row].Name
        return nameCell
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
