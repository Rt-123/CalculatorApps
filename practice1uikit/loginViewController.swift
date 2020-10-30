//
//  loginViewController.swift
//  practice1uikit
//
//  Created by Mac on 28/08/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

class loginViewController: UIViewController ,UITextFieldDelegate{
    
    
    var no1lbl:UILabel!
    var no2lbl:UILabel!
    var no1tf:UITextField!
    var no2tf:UITextField!
    var segmentcontrol:UISegmentedControl!
    var answertf:UITextField!
    var imageview:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    self.view.backgroundColor=UIColor.cyan
//
//        imageview=UIImageView(frame:UIScreen.main.bounds)
//        let actualimage=UIImage(named:"1.jpg")
//        imageview.image=actualimage
//        self.view.addSubview(imageview)
//
        
      no1lbl=UILabel(frame: CGRect(x: 30, y: 50, width: 100, height: 70))
      no1lbl.text="No1:"
      no1lbl.textColor=UIColor.black
      no1lbl.textAlignment=NSTextAlignment.left
      self.view.addSubview(no1lbl)
        
        
      no2lbl=UILabel(frame:CGRect(x: 30, y: 100, width: 100, height: 70))
      no2lbl.text="No2:"
      no2lbl.textColor=UIColor.black
      no2lbl.textAlignment=NSTextAlignment.left
      self.view.addSubview(no2lbl)
        
      no1tf=UITextField(frame:CGRect(x: 100, y: 70, width: 150, height: 30))
      no1tf.borderStyle = .roundedRect
      no1tf.placeholder="Enter no1"
      no1tf.delegate=self
      self.view.addSubview(no1tf)
        
        
      no2tf=UITextField(frame:CGRect(x: 100, y: 120, width: 150, height: 30))
      no2tf.borderStyle = .roundedRect
      no2tf.placeholder="Enter no2"
      no2tf.delegate=self
      self.view.addSubview(no2tf)
        
        
      segmentcontrol=UISegmentedControl(items: ["+","-","*","/"])
      segmentcontrol.frame=CGRect(x: 50, y: 170, width: 200, height: 30)
      segmentcontrol.addTarget(self, action: #selector(segmentchange), for: .valueChanged)
      self.view.addSubview(segmentcontrol)
       
        
       
      answertf=UITextField(frame:CGRect(x: 50, y: 230, width: 200, height: 30))
      answertf.borderStyle=UITextBorderStyle.roundedRect
      answertf.placeholder="Answer"
      answertf.delegate=self
      self.view.addSubview(answertf)
        
}
    @objc func segmentchange()
    {
        let no1=Int(no1tf.text!)
        let no2=Int(no2tf.text!)
        
        
        switch segmentcontrol.selectedSegmentIndex {
        case 0:let result=no1!+no2!
        answertf.text=String.init(format:"%d",result)
            
        case 1:let result=no1!-no2!
        answertf.text=String.init(format:"%d",result)
        
        case 2:
            let result=no1!*no2!
            answertf.text=String.init(format:"%d",result)
            
        case 3:
            let result=no1!/no2!
            answertf.text=String.init(format:"%d",result)
            
        default:
            print("invalid")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
