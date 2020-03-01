//
//  ViewController.swift
//  WeydaEmily_TodaysQuote
//
//  Created by Emily Weyda on 5/11/16.
//  Copyright © 2016 University of Cincinnati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblQuotes: UILabel!
    var quotes : NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1. Open the file and load its content to memory
        // 1.a. get a reference to the app folder (bundle)
        let appBundle : NSBundle = NSBundle.mainBundle()
        // 1.b. get a reference to the file
        let filePath : String = appBundle.pathForResource("quotes_list", ofType: "plist")!
        // 1.c. get the contents of the file
        quotes = NSArray(contentsOfFile: filePath)!
        // Select quote
        updateQuote()
    }

    func updateQuote() {
        let index = random() % quotes.count
        // 2. Select one of the quotes from file
        let singleQuote : String = quotes.objectAtIndex(index) as! String
        // 3. Set the text property on the label to the quote
        
        // Create a string variable with the quote Work Hard
        //        let singleQuote : String = "Work Hard"
        lblQuotes.text = singleQuote
        lblQuotes.textColor = UIColor.grayColor()
        
    }
    
    @IBAction func browseQuotes() {
        updateQuote()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

