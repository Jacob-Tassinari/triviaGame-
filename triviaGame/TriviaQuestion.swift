//
//  TriviaQuestion.swift
//  triviaGame
//
//  Created by Jacob Tassinari on 10/19/18.
//  Copyright © 2018 Jacob Tassinari. All rights reserved.
//

import Foundation

class TriviaQuestion {
    var question: String
    var answers:[String]
    var corectAnswersIndex:Int
    var corectAnswer:String{
        return answers[corectAnswersIndex]
    }
    init(question:String,answers:[String],corectAnswersIndex:Int) {
        self.question = question
        self.answers = answers
        self.corectAnswersIndex = corectAnswersIndex
    }
}
