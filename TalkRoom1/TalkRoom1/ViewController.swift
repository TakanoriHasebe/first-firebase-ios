//
//  ViewController.swift
//  TalkRoom1
//
//  Created by Takanori.H on 2017/02/25.
//  Copyright © 2017年 Takanori.H. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* webViewがスクロールされない */
        webView.scrollView.bounces = false
        let gifData = NSData(contentsOfFile : Bundle.main.path(forResource: "cc", ofType: "gif")!)
        webView.load(gifData as! Data, mimeType:"image/gif", textEncodingName:"utf-8", baseURL: NSURL() as URL)
        
        let fbLoginButton = FBSDKLoginButton()
        fbLoginButton.frame = CGRect(x: self.view.frame.size.width/10, y:self.view.frame.size.height/2, width: self.view.frame.size.width-(self.view.frame.size.width/10 + self.view.frame.size.width/10), height: 50)
        self.view.addSubview(fbLoginButton)
        
        fbLoginButton.delegate = self
        
        
        
    }

    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
        if error != nil{
            
            print("エラーです")
            print(error)
            
        }else if result.isCancelled{
            
            
            
        }else{
            
            // 取得
            
            
            
        }
        
    }
    
    func getFacebookUerInfo(){
        
        // 取得
        
        
    }
    
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("ログアウトしました")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

