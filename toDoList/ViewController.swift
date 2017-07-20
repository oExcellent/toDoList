//
//  ViewController.swift
//  toDoList
//
//  Created by Max Walters on 7/19/17.
//  Copyright © 2017 DevMW. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate{

    //elements
    @IBOutlet weak var addTxt: UITextField!
    @IBOutlet weak var listTv: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        listTv.delegate  = self
    
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       Add(self)
        return false
    }

    //List f
    var items:[String] = []
    
    @IBAction func Add(_ sender: Any) {
        
        //checks if the field is empty
        if (addTxt.text! == ""){
            return
        }
        
        //appends text to an item
        items.append(addTxt.text!)
        
        //clears input
        listTv.text = ""
        
        //for loop to add to text view
        for item in items{
            listTv.text.append("\(item)\n")
        }
        
        //clears input after submission
        addTxt.text = ""
        
        addTxt.resignFirstResponder()
    
    }
}

