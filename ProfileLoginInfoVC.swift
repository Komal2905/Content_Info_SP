//
//  ProfileLoginInfoVC.swift
//  Content_Info_SP
//
//  Created by Vidya Ramamurthy on 29/01/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class ProfileLoginInfoVC: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var profilePicIV: UIImageView!
     let imagePicker = UIImagePickerController() //
    @IBOutlet weak var instruconLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        instruconLabel.lineBreakMode = .ByWordWrapping
        instruconLabel.numberOfLines = 0
        
        let border = CALayer()
        let width = CGFloat(1)
        border.borderColor = UIColor.greenColor().CGColor
        border.frame = CGRect(x: 0, y: userNameTF.frame.size.height - width, width:  userNameTF.frame.size.width, height: userNameTF.frame.size.height)
        
        border.borderWidth = 1.5
        userNameTF.layer.addSublayer(border)
        userNameTF.layer.masksToBounds = true
        
        
        profilePicIV.layer.borderWidth = 1.0
        profilePicIV.layer.masksToBounds = false
        profilePicIV.layer.borderColor = UIColor.whiteColor().CGColor
        profilePicIV.layer.cornerRadius = profilePicIV.frame.size.width/2
        profilePicIV.clipsToBounds = true
        profilePicIV.image = UIImage(named: "im1.jpg")

      
        
        imagePicker.delegate = self
    }
    
    
    @IBAction func chooseImageProfilePic(sender: AnyObject) {
        
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        presentViewController(imagePicker, animated: true, completion: nil)
    
    }
    

    
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
           
            profilePicIV.layer.borderWidth = 1.0
            profilePicIV.layer.masksToBounds = false
            profilePicIV.layer.borderColor = UIColor.whiteColor().CGColor
            profilePicIV.layer.cornerRadius = profilePicIV.frame.size.width/2
            profilePicIV.clipsToBounds = true
            //image.layer.cornerRadius = image.frame.height/2
            profilePicIV.image = pickedImage

            
            
        }
         dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
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
