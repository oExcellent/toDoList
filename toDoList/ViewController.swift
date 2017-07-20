//
//  ViewController.swift
//  toDoList
//
//  Created by Max Walters on 7/19/17.
//  Copyright © 2017 DevMW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //elements
    @IBOutlet weak var list: UILabel!
    @IBOutlet weak var addTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Array
    var items = [String]()
    
    @IBAction func Add(_ sender: Any) {
       items.append(addTxt.text!.appending("\n"))
       
        var i = 0

      //  for _ in 0 ..< items.count{
        while i < items.count {
            list.text = items.description
          //  print("/n")
            i += 1
        }
        
     //   }
    }

}

