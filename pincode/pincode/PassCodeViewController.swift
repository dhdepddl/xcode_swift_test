//
//  PassCodeViewController.swift
//  pincode
//
//  Created by fount on 2016. 1. 22..
//
//

import UIKit

class PassCodeViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var viewField1: UITextField!
    @IBOutlet weak var viewField2: UITextField!
    @IBOutlet weak var viewField3: UITextField!
    @IBOutlet weak var viewField4: UITextField!
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        if (textField == viewField1 || textField == viewField2 || textField == viewField3 || textField == viewField4) {
            textField1.becomeFirstResponder()
            return false
        }
        return true
    }
  
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if (range.length != 1) {
            if (textField==textField1) {
                textField1.text = string
                viewField1.text = string
                textField2.becomeFirstResponder()
            }
            else if (textField==textField2) {
                textField2.text = string
                viewField2.text = string
                textField3.becomeFirstResponder()
            }
            else if (textField == textField3) {
                textField3.text = string
                viewField3.text = string
                textField4.becomeFirstResponder()
            }
            else {
                textField4.text = string
                viewField4.text = string
//                var pass:String = textField1.text! + textField2.text! + textField3.text! + textField4.text!
                
                var pass = textField1.text! + textField2.text! + textField3.text! + textField4.text!
                var p = String(NSUserDefaults.standardUserDefaults().objectForKey("pincode")) as String!
                
                if (pass == p) {
                    
                    
                }
                else {
                    let alert = UIAlertController(title: "Alert", message: "Wrong Password", preferredStyle: UIAlertControllerStyle.Alert)
                    self.presentViewController(alert, animated: true, completion: nil)
                    self.dismissViewControllerAnimated(true, completion: nil)
                    
                    textField1.text = " "
                    textField2.text = " "
                    textField3.text = " "
                    textField4.text = " "
                    viewField1.text = nil
                    viewField2.text = nil
                    viewField3.text = nil
                    viewField4.text = nil
                    textField2.becomeFirstResponder()
                }
                
            }
        }
        else  {
            if (textField == textField4) {
                textField4.text = " "
                textField3.text = " "
                viewField4.text = nil
                viewField3.text = nil
                textField3.becomeFirstResponder()
            }
            else if (textField == textField3) {
                textField3.text = " "
                textField2.text = " "
                viewField3.text = nil
                viewField2.text = nil
                textField2.becomeFirstResponder()
            }
            else if (textField == textField2) {
                textField2.text = " "
                textField1.text = " "
                viewField2.text = nil
                viewField1.text = nil
                textField1.becomeFirstResponder()
            }
            else {
                textField1.text = " "
                viewField1.text = nil
                textField1.becomeFirstResponder()
            }
        }
        return true
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.text = " "
        textField2.text = " "
        textField3.text = " "
        textField4.text = " "
        viewField1.text = nil
        viewField2.text = nil
        viewField3.text = nil
        viewField4.text = nil
        textField1.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
        viewField1.delegate = self
        viewField2.delegate = self
        viewField3.delegate = self
        viewField4.delegate = self
        textField1.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
