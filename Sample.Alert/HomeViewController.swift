//
//  HomeViewController.swift
//  Sample.Alert
//
//  Created by 坂本のぞみ on 2016/12/08.
//  Copyright © 2016年 坂本のぞみ. All rights reserved.
//

import UIKit
//import animationButton

class HomeViewController: UIViewController {
    
    //キュントボタン宣言
    @IBOutlet weak var AlertView: UIView!
    @IBOutlet var KyuntoButton: animationButton!
    
    //キュントポイント
    var point : Int = 0
    @IBOutlet var label : UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "\(point)キュン"
        //アラートview
        AlertView.isHidden = true
        
        
        //        KyuntoButton.imageColorOff = UIColor.brown
        //        KyuntoButton.imageColorOn = UIColor.red
        //        KyuntoButton.circleColor = UIColor.green
        //        KyuntoButton.lineColor = UIColor.blue
        //        KyuntoButton.duration = 3.0 // default: 1.0
        //        KyuntoButton.addTarget(self, action: #selector(HomeViewController.tappedButton(_:)), for: .touchUpInside)
        //KyuntoButton.addTarget(self, action: "tappedButton:", for: UIControlEvents.touchDown)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //キュントボタンアニメーション
    @IBAction func touch(_ sender: animationButton) {
        if sender.isSelected {
            //            // deselect
            sender.deselect()
        } else {
            //            // select with animation
            sender.select()
        }
        sender.select()
        
        NSLog("動いてますよ")
        
        //キュントカウント
        point = point + 1
        label.text = "\(point)キュン"
        print("Kyun")
        //AlertView.isHidden = false
        
       
        
        //遅延行為
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            self.AlertView.isHidden = false
        }
        /*UIView.animateWithDuration(2.0,
                                   
        // 遅延時間.
            delay: 0.0,
            
            // バネの弾性力. 小さいほど弾性力は大きくなる.
            options: UIViewAnimationOptions(rawValue: UInt(0.2)),
            
            // 初速度.
            animations: 1.5,
            
            // 一定の速度.
        //            options: UIViewAnimationOptions.CurveLinear,
        //
        //            animations: { () -> Void in
        //
        //                self.label.position = CGPointMake(self.view.frame.width-50, 100)
        //
        // アニメーション完了時の処理
        )*/
    
}

//    func tappedButton(_ sender : animationButton) {
//        if sender.isSelected {
//            // deselect
//            sender.deselect()
//        } else {
//            // select with animation
//            sender.select()
//        }
//        sender.select()
//        print("kyun")
//    }

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */

}
