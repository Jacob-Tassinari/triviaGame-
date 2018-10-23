//
//  AddQuestionView.swift
//  triviaGame
//
//  Created by Jacob Tassinari on 10/19/18.
//  Copyright © 2018 Jacob Tassinari. All rights reserved.
//

import UIKit

class AddQuestionView: UIViewController {

    @IBOutlet var questionText: UITextField!
    @IBOutlet var answerAText: UITextField!
    @IBOutlet var answerBtext: UITextField!
    @IBOutlet var answerCText: UITextField!
    @IBOutlet var answerDText: UITextField!
    @IBOutlet var correctAnswerControl: UISegmentedControl!
    var newTrivia: TriviaQuestion?
    
    @IBAction func addTaped(_ sender: Any) {
        guard
            let question = questionText.text, !question.isEmpty,
            let a = answerAText.text, !a.isEmpty,
            let b = answerAText.text, !b.isEmpty,
            let c = answerCText.text, !c.isEmpty,
            let d = answerDText.text, !d.isEmpty
            else{
                let errorAlert = UIAlertController(title: "Error", message: "Please fill out all of the fields, or press cancel to return to the quiz.", preferredStyle: UIAlertController.Style.alert)
                let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default){UIAlertAction in}
                errorAlert.addAction(dismissAction)
                self.present(errorAlert, animated: true, completion: nil)
                return
        }
        newTrivia = TriviaQuestion(question: question, answers: [a,b,c,d], corectAnswersIndex: correctAnswerControl.selectedSegmentIndex)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "unwindToQuizScreen", sender: self)
    }
    
   
}
