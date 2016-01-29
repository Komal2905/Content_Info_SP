//
//  LoginePageVC.swift
//  Content_Info_SP
//
//  Created by Vidya Ramamurthy on 29/01/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class LoginePageVC: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var contryCodeTF: UITextField!
    @IBOutlet weak var mobileNumberTF: UITextField!
    
    @IBOutlet weak var okButton: UIButton!
    
    @IBOutlet weak var optionalProfilePic: UIImageView!
    
    @IBOutlet weak var userNameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.lineBreakMode = .ByWordWrapping // or NSLineBreakMode.ByWordWrapping
        firstLabel.numberOfLines = 0        // Do any additional setup after loading the view.
        
        
        let border = CALayer()
        let width = CGFloat(0.5)
        border.borderColor = UIColor.darkGrayColor().CGColor
        border.frame = CGRect(x: 0, y: contryCodeTF.frame.size.height - width, width:  contryCodeTF.frame.size.width, height: contryCodeTF.frame.size.height)
        
        border.borderWidth = width
        contryCodeTF.layer.addSublayer(border)
        contryCodeTF.layer.masksToBounds = true
        
        
        let border1 = CALayer()
        let width1 = CGFloat(0.5)
        border1.borderColor = UIColor.greenColor().CGColor
        border1.frame = CGRect(x: 0, y: mobileNumberTF.frame.size.height - width1, width:  mobileNumberTF.frame.size.width, height: mobileNumberTF.frame.size.height)
        
        border1.borderWidth = width1
        mobileNumberTF.layer.addSublayer(border1)
        mobileNumberTF.layer.masksToBounds = true
        
        
        //okButton.backgroundColor = UIColor.clearColor()
        okButton.layer.cornerRadius = 5
        okButton.layer.borderWidth = 0
        
        
    
        
        // Round Image
        
       
    //optionalProfilePic.image =
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
