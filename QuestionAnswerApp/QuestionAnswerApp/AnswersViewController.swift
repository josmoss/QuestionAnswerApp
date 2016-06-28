//
//  AnswersViewController.swift
//  QuestionAnswerApp
//
//  Created by Joe Moss on 6/27/16.
//  Copyright © 2016 Iron Yard_Joe Moss. All rights reserved.
//

import UIKit

class AnswersViewController: UIViewController {
    
    var theAnswer : Question?

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let answer = self.theAnswer {
            
            self.questionLabel.text = answer.questionString
        }
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButtonOne: UIButton!
    @IBOutlet weak var answerButtonTwo: UIButton!
    @IBOutlet weak var answerButtonThree: UIButton!
    @IBOutlet weak var answerButtonFour: UIButton!
    
    @IBAction func buttonOneTapped(sender: UIButton) {
        
        let alert = UIAlertController(title: "Correct!", message: "", preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .Default) {
                                            (action) in
        }
        
        alert.addAction(cancelAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func buttonTwoTapped(sender: UIButton) {
        
        let alert = UIAlertController(title: "Correct!", message: "", preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .Default) {
                                            (action) in
        }
        
        alert.addAction(cancelAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func buttonThreeTapped(sender: UIButton) {
        
        let alert = UIAlertController(title: "Correct!", message: "", preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .Default) {
                                            (action) in
        }
        
        alert.addAction(cancelAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func buttonFourTapped(sender: AnyObject) {
        
        let alert = UIAlertController(title: "Correct!", message: "", preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .Default) {
                                            (action) in
        }
        
        alert.addAction(cancelAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
}
