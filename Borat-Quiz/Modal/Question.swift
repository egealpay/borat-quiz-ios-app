//
//  Question.swift
//  Borat-Quiz
//
//  Created by Ege Alpay on 22.10.2021.
//

import Foundation

class Question {
    var text: String
    var options: [String]
    var answer: String
    
    init(text: String, options: [String], answer: String) {
        self.text = text
        self.options = options
        self.answer = answer
    }
}
