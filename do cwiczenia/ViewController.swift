//
//  ViewController.swift
//  do cwiczenia
//
//  Created by Radoslaw Sobczak on 16/04/2020.
//  Copyright © 2020 Radoslaw Sobczak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBAction func zatwierdz(_ sender: Any) {
        // klikniecie i przejscie na drugi ekran
    }
    
    
    
    let leki = ["Clonazepan 1 mg", "Fenactil 5 mg", "Haloperidol 1 mg", "Relanium 5 mg"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return leki[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return leki.count
    }
    

   func pickerView(_ pickerView: UIPickerView, didSelectRow
    row: Int, inComponent component: Int) {
          Label.text = leki[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

// Hide keyboard
//overide func touchesBegan( _touches: Set<UITouch>, with event: UIEvent?) {
  //  self.view.endEditing(true)
//}

// presses return keu
//func textFieldShoudlReturn(_ textField: UIText -> Bool) {
  //  textField.resignFirstResponder()
    //return(true)
//}
//}

