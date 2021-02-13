//
//  FormViewController.swift
//  VPAssignment#1
//
//  Created by  on 2/4/21.
//

import UIKit
import WebKit

class FormViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var tfEmail: UITextField!
    @IBOutlet var tfName: UITextField!
    @IBOutlet var tfPhone: UITextField!
    @IBOutlet var tfAddress: UITextField!
    @IBOutlet var age: UISlider!
    @IBOutlet var gender: UISwitch!
    @IBOutlet var dDate: UITextField!
        
        let datePicker = UIDatePicker()
        
    var name: String = ""
    var email: String = ""
    
    func createDatePickerView()
    {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneBtn], animated: true)
        dDate.inputAccessoryView = toolbar
        dDate.inputView = datePicker
        datePicker.datePickerMode = .date
        
    }
    
    @objc func donePressed()
    {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        dDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
        
    }
    
    func doTheUpdate(){
       let data : Data = .init()
        data.initWithStuff(theName: tfName.text! , theEmail: tfEmail.text!, thePhone: tfPhone.text!, theAddress: tfAddress.text!, theDate: dDate.text!, theAge: Float(Int(age.value)), theGender: gender.isOn)
        name = data.savedName!
    email = data.savedEmail!
  }
    
    @IBAction func alertMessage(sender: Any)
    {
       // let alert = UIAlertController(title: "Warning", message: "Are you sure?", preferredStyle: .alert
        doTheUpdate()
        let alert = UIAlertController (title: "Thank You for your time \(name)" , message: "Email: \(email)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDatePickerView()
        // Do any additional setup after loading the view.
    }
}
