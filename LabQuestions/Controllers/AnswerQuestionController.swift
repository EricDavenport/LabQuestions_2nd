//
//  AnswerQuestionController.swift
//  LabQuestions
//
//  Created by Eric Davenport on 12/16/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class AnswerQuestionController: UIViewController {
  
  
  @IBOutlet weak var answerTextView: UITextView!
  
  var question: Question?
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func postAnswer(_ sender: UIBarButtonItem) {
    guard let answerText = answerTextView.text,
      !answerText.isEmpty,
    let question = question else {
        showAlert(title: "Missing Fields", message: "Answer is required, fellow is waiting...")
        return
    }
    
    // create a PostedAnswer imstance
    let postedAnswer = PosteAnswer(questionTitle: question.title, questionId: question.id, questionLabName: question.labName, answerDescription: answerText)
    
    
  }
  
  @IBAction func cancel(_ sender: UIBarButtonItem) {
    // dismiss entire view and return to previous screen (detailViewController)
    dismiss(animated: true)
  }
  
  
}
