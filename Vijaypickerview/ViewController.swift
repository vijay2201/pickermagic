//
//  ViewController.swift
//  Vijaypickerview
//
//  Created by COE-008 on 23/12/19.
//  Copyright © 2019 COE-008. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var conlbl: UILabel!
    
    @IBOutlet weak var tool: UIToolbar!
    
    @IBAction func toolbtn1(_ sender: Any) {
        self.mypicker.isHidden = true
        self.mydatepicker.isHidden = true
        }
    @IBAction func conbtn(_ sender: UIButton) {
        self.mypicker.isHidden = false
        self.tool.isHidden = false
        self.mydatepicker.isHidden = true
    }
    
    @IBAction func toolbtn2(_ sender: Any) {
        self.mydatepicker.isHidden = true
        self.mypicker.isHidden = true
        self.tool.isHidden = true
    }
    @IBOutlet weak var datlbl: UILabel!
    
    @IBAction func datbtn(_ sender: UIButton) {
       
        self.mydatepicker.isHidden = false
        self.mypicker.isHidden = true
    }
    
    @IBOutlet weak var mypicker: UIPickerView!
    
    
    @IBOutlet weak var mydatepicker: UIDatePicker!
    var arr = ["INDIA","PAKISTAN","BHUTAN","BANGLADESH","CHINA"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.arr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.conlbl.text = arr[row]
    }
    
    @IBAction func SelectDate(_ sender: UIDatePicker) {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yy-mm,d h:m:s"
        datlbl.text = dateformatter.string(from: sender.date)
        
        
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.mypicker.isHidden = true
        self.tool.isHidden = true
        self.mydatepicker.isHidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

