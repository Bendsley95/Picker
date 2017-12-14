//
//  ViewController.swift
//  PickerView
//
//  Created by Blake Endsley on 12/14/17.
//  Copyright © 2017 Blake Endsley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    let colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        label.text = "Red"
        pickerView.delegate = self
        pickerView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if colors[row] == "Red"
        {
            self.view.backgroundColor = UIColor.red
            label.text = "Red"
        }
        if colors[row] == "Orange"
        {
            self.view.backgroundColor = UIColor.orange
            label.text = "Orange"
        }
        if colors[row] == "Yellow"
        {
            self.view.backgroundColor = UIColor.yellow
            label.text = "Yellow"
        }
        if colors[row] == "Green"
        {
            self.view.backgroundColor = UIColor.green
            label.text = "Green"
        }
        if colors[row] == "Blue"
        {
            self.view.backgroundColor = UIColor.blue
            label.text = "Blue"
        }
        if colors[row] == "Purple"
        {
            self.view.backgroundColor = UIColor.purple
            label.text = "Purple"
        }
    }
    
    
}

