//
//  ViewController.swift
//  pickerTextFieldDemo
//
//  Created by Robert Martin on 10/10/16.
//  Copyright © 2016 Robert Martin. All rights reserved.
//
//pickerview appears on botton of screen after textfield selected

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    var pickOption = ["one", "two", "three", "seven", "fifteen"]
    
    @IBOutlet weak var pickerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let pickerView = UIPickerView()
        
        pickerView.delegate = self
        
        pickerTextField.inputView = pickerView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickOption.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickOption[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerTextField.text = pickOption[row]
    }


}

