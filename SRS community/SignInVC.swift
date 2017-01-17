//
//  ViewController.swift
//  SRS community
//
//  Created by Benny Franke Sounddesign on 17/01/17.
//  Copyright © 2017 ShowRescueService. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func facebookBtnTapped (_ sender: AnyObject) {
        
        print("BENNY: in button pressed function")
        
        let facebookLogin = FBSDKLoginManager()
        
        print("BENNY: facebookLogin constant created")
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) {(result, error) in
            if error != nil {
                print("BENNY: error with facebook authentication")
                print("BENNY: \(error)")
            } else if result?.isCancelled == true {
                print("BENNY: user cancelled Facebook authentication")
            } else {
                print("BENNY: successfully authenticated with Facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
    }
    
    func firebaseAuth(_ credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("BENNY: unable to authenticate with firebase - \(error)")
            } else {
                print("BENNY: Successfully authenticated with Firebase")
            }
        })
    }

}

