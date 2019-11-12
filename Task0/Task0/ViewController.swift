//
//  ViewController.swift
//  Task0
//
//  Created by 平間雄樹 on 2019/11/11.
//  Copyright © 2019 hirama. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // 表示リスト
    var allName:[Name] = [Name]()
    // テーブルビュー
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // テストデータ
        allName.append(Name(data:(1,"Shiro")))
        allName.append(Name(data:(2,"Lina")))
        allName.append(Name(data:(3,"Wakaba")))
        allName.append(Name(data:(4,"Rin")))
    }
    
    // セルの個数を指定するデリゲートメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allName.count
    }
    
    // セルに値を設定するデータソースメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = allName[indexPath.row].name
        return cell
    }
    
    // idソート
    @IBAction func idup(_ sender: Any) {
        print("idソート")
        allName.sort { $0.id < $1.id }
        tableview.reloadData()
    }
    // nameソート
    @IBAction func nameup(_ sender: Any) {
        print("nameソート")
         allName.sort { $0.name < $1.name }
        tableview.reloadData()
    }
}

// カスタムクラス
class Name:NSObject{
    var id:Int
    var name:String

    init(data: (Int,String)){
        id = data.0
        name = data.1
    }
}