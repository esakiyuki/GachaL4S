//
//  ResultViewController.swift
//  GachaL4S
//
//  Created by esaki yuki on 2020/09/06.
//  Copyright © 2020 esaki yuKki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //乱数の使い方はvar 変数名 = Int.random(in: 0...最大値)
    
    //numberに入るのは整数
    var number: Int!
    
    @IBOutlet var background: UIImageView!
    @IBOutlet var monster: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = Int.random(in: 0...9)
        if number == 9 {
            monster.image = UIImage(named: "monster010")
            background.image = UIImage(named: "bg_gold")
        } else if number > 7 {
            monster.image = UIImage(named: "monster006")
            background.image = UIImage(named: "bg_red")
        } else {
            monster.image = UIImage(named: "monster003")
            background.image = UIImage(named: "bg_blue")
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back() {
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
