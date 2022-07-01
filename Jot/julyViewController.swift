//
//  julyViewController.swift
//  Jot
//
//  Created by Shanaya Kabnur on 6/30/22.
//

import UIKit

class julyViewController: UIViewController{
    
    
    @IBOutlet weak var waterTextField: UITextField!
    
    let waters = ["1 cup", "2 cups", "3 cups", "4 cups", "5 cups", "6 cups", "7 cups", "8 cups", "8+ cups"]
    
    var pickerView = UIPickerView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        waterTextField.inputView = pickerView
        // Do any additional setup after loading the view.
    }
}

extension julyViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return waters.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return waters[row]
    }
    
    func pickerView (_ pickerView : UIPickerView, didSelectRow row: Int, inComponent component: Int){
        waterTextField.text = waters[row]
        
    }
}
