//
//  QuestionsTableViewController.swift
//  QuestionAnswerApp
//
//  Created by Joe Moss on 6/27/16.
//  Copyright © 2016 Iron Yard_Joe Moss. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {
    
    var questionsArray = [Question]()
    var currentQuestion : Question?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        seedArray()
        
    }
    
    func seedArray() {
        
        let quest1 = Question()
        quest1.questionString = "What color is the sky?"
        quest1.answerString = "Blue"
        quest1.imageNameString = "question"
        
        self.questionsArray.append(quest1)
        
        let quest2 = Question()
        quest2.questionString = "What shape is a ball?"
        quest2.answerString = "Round"
        quest2.imageNameString = "question"
        
        self.questionsArray.append(quest2)
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questionsArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! QuestionsTableViewCell
        
        let quest = self.questionsArray[indexPath.row]
        
        cell.questionLabel.text = quest.questionString
        cell.questionImageView.image = UIImage(named: quest.imageNameString)
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentQuestion = self.questionsArray[indexPath.row]
        
        self.performSegueWithIdentifier("QuestionSegue", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "QuestionSegue" {
            
            if let controller = segue.destinationViewController as? AnswersViewController {
                controller.theAnswer = self.currentQuestion
            
            } else {
                print("Not the correct segue")
            }
        }
        
    }
    
}
