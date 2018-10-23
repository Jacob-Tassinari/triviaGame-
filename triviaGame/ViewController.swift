//
//  ViewController.swift
//  triviaGame
//
//  Created by Jacob Tassinari on 10/18/18.
//  Copyright © 2018 Jacob Tassinari. All rights reserved.
//

import UIKit

class  QuizViewController: UIViewController {

    var questions = [TriviaQuestion] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func populateQuestions() {
        let question1 = TriviaQuestion(question: "How it do?", answers: ["it do", "it don't","good","bad"], corectAnswersIndex: 0)
        let question2 = TriviaQuestion(question: "Is ductape made out of ducks?", answers: ["yes", "maybe", "no", "quwak"], corectAnswersIndex: 3)
        let question3 = TriviaQuestion(question: "What are spiders?", answers: ["dangerous", "cute", "posion sacs?", "or intersting creatures that should be respected"], corectAnswersIndex: 3)
        let question4 = TriviaQuestion(question: "what walks on 4 legs in the morning, 2 in the afternoon, and 3 at night?", answers: ["humans", "dog", "monkey", "ape"], corectAnswersIndex: 0)
        let question5 = TriviaQuestion(question: "Are trains real?", answers: ["yes", "no", "its a guy in a grollia costume", "they are just cars that can't leave ther track"], corectAnswersIndex: 1)
    }
    
    @IBAction func unwindToQuizScreen(segue: UIStoryboardSegue){}

}

