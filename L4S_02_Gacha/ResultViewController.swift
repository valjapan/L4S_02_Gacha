//
//  ResultViewController.swift
//  L4S_02_Gacha
//
//  Created by 鍋島 由輝 on 2019/01/31.
//  Copyright © 2019 ValJapan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
//    乱数を入れるためのInt型の変数を用意
    var number: Int!

//    背景画像とモンスター画像を表示するためのImageViewを用意
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        0~9までのランダムな数(乱数)を発生させる
        number = Int (arc4random_uniform(10))

        if number == 9 {
//            激レアモンスター
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image=UIImage(named: "bg_gold")
        } else if number>7{
//            レアモンスター
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image=UIImage(named: "bg_red")
        } else{
//            ノーマルモンスター
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image=UIImage(named: "bg_blue")
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
