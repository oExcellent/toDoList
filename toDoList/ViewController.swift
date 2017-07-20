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
    @IBOutlet weak var error: UILabel!
    
    //list 
    //List
    var items:[String] = []
    
    
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
    
    //deletes first index
    @IBAction func del1(_ sender: Any) {
        if (items.isEmpty){
            error.text = "Nothing to delete"
            return
        }
        
        error.text = ""
        //clears output so it appears to only add
        listTv.text = ""
        
        //remove last item
        items.remove(at: 0)
        for item in items{
            listTv.text.append("\(item)\n")
        }
       
    }
    
    //deletes second index
    @IBAction func del2(_ sender: Any) {
        if (items[1].isEmpty){
            error.text = "Nothing to delete at this index"
            return
        }
        
        error.text = ""
        //clears output so it appears to only add
        listTv.text = ""
        
        //remove last item
        items.remove(at: 1)
        for item in items{
            listTv.text.append("\(item)\n")
            
        }
    }
    
    //CLears whole list
    @IBAction func delAll(_ sender: Any) {
        if (items.isEmpty){
            error.text = "List already clear"
            return
        }
        
        error.text = ""
        
        //clears output
        listTv.text = ""
        
        items.removeAll()
        
        for item in items{
            listTv.text.append("\(item)\n")
        }
        
    }
    
    //Adds one item to list
    @IBAction func Add(_ sender: Any) {
        
        //checks if the field is empty
        if (addTxt.text! == ""){
            error.text = "Add What?"
            return
        }
        error.text = ""

        //appends text to an item
        items.append(addTxt.text!)
        
        //clears output so it appears to only add
        listTv.text = ""
        
        //for loop to add to text view
        for item in items{
            listTv.text.append("\(item)\n")
        }
        
        //clears input after submission
        addTxt.text = ""
        
        addTxt.resignFirstResponder()
    
    }
    
    //Some rules for fun in future maybe
    
    //Show delete button(s) only if there is something to delete
    
}

