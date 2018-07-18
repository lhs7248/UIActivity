//
//  ViewController.swift
//  UIActivity
//
//  Created by lhs7248 on 2018/7/18.
//  Copyright © 2018年 lhs7248. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func UIActivityShare(_ sender: Any) {
        showShare()
    }
    
    fileprivate func showShare() -> Void {
        
        let shareText = "链斯达克"
        let shareImage = UIImage(named: "Icon-29")
        let shareURL = URL(string: "https://www.liansdk.com/index.html")
        
        
        let activityItems = [shareText,shareImage!,shareURL!] as [Any]
        
        let vc = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        vc.excludedActivityTypes = [UIActivityType.airDrop,UIActivityType.message,UIActivityType.print,UIActivityType.saveToCameraRoll,UIActivityType.assignToContact,UIActivityType.addToReadingList,UIActivityType.openInIBooks]
        vc.completionWithItemsHandler = { (activityType:UIActivityType?, completed:Bool, returnedItems:[Any]?, error:Error?) in
            if completed {
                print("分享成功")
            }else{
                print("分享失败")
            }
            
        }
        
        self.present(vc, animated: true, completion: nil)
        
    }

}

