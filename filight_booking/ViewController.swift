//
//  ViewController.swift
//  filight_booking
//
//  Created by Lena Lee on 2017. 7. 8..
//  Copyright © 2017년 Lena Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var departrueDateBtn: UIButton!

    @IBOutlet var returnDateLa: UILabel!
    @IBOutlet var returnDateBtn: UIButton!
    
    @IBOutlet var SelectDatePicker: UIDatePicker!
    
    @IBAction func showDatePicker(_ sender: Any) {
        if SelectDatePicker.isHidden == false{
            SelectDatePicker.isHidden = true
        }else{
            SelectDatePicker.isHidden = false
        }
    }
    
    @IBAction func selectedDateAction(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        
        let dateString = formatter.string(from: SelectDatePicker.date)
    
        
        
        departrueDateBtn.setTitle(dateString, for: UIControlState())
        
    }
    
    @IBAction func showReturnDateAction(_ sender: Any) {
        print((sender as AnyObject).description!)
        
        /*
        if (sender as! UISwitch).isOn {
            returnDateLa.isHidden  = false
            returnDateBtn.isHidden = false
        }else{
            returnDateLa.isHidden  = true
            returnDateBtn.isHidden = true
        }
 */
        returnDateLa.isHidden  = !(sender as! UISwitch).isOn
        returnDateBtn.isHidden = !(sender as! UISwitch).isOn
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        returnDateLa.isHidden = true
        returnDateBtn.isHidden = true
        SelectDatePicker.isHidden = true
        
    }

    //바탕화면 눌렀을떄 키보드 내려감
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        SelectDatePicker.isHidden = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

