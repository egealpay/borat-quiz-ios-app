//
//  QuizBrain.swift
//  Borat-Quiz
//
//  Created by Ege Alpay on 22.10.2021.
//

import Foundation

class QuizBrain {
    var questions = [
        Question(text: "What was Borats sister's job?",
                 options: ["House Wife", "Black smith", "Prostitute"],
                 answer: "Prostitute"),
        Question(text: "What Country is Borat from?",
                 options: ["Iraq", "Kazakstan", "Pakistan"],
                 answer: "Kazakstan"),
        Question(text: "What country does Borat travel to?",
                 options: ["France", "Canada", "USA"],
                 answer: "USA"),
        Question(text: "What does Borat call the man that he is meeting to speak with?",
                 options: ["Homeboy", "Genuine chocolate face", "Mi amigo"],
                 answer: "Genuine chocolate face"),
        Question(text: "Who is Borats love interest?",
                 options: ["Kate Moss", "Pamela Anderson", "Tyra Banks"],
                 answer: "Pamela Anderson"),
        Question(text: "What animal scares the little children in the ice cream truck?",
                 options: ["A bear", "A rat", "A monkey"],
                 answer: "A bear"),
        Question(text: "How does Borat refer to sex?",
                 options: ["Intercourse", "Sexytime", "The McNasty"],
                 answer: "Sexytime"),
        Question(text: "Why did Borat and his friend leave the nice elderly couples home?",
                 options: ["They were witches", "They stole their money", "They were Jews"],
                 answer: "They were Jews"),
        Question(text: "why did Borat offer the man a bag of Pubic hair?",
                 options: ["He broke things in his store", "He was playing a mean joke on him", "He thought he would give him candy"],
                 answer: "He broke things in his store"),
        Question(text: "Who did Borat think the women at the tag sale really was?",
                 options: ["A Witch", "A gypsy", "A prostitute"],
                 answer: "A gypsy"),
    ]
    var currentQuestionIndex = 0
    var score = 0
    
    func getQuestionText() -> String {
        return questions[currentQuestionIndex].text
    }
    
    func getQuestionOptions() -> [String] {
        return questions[currentQuestionIndex].options
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getResultMessage() -> String {
        if score < 4 {
            return "WHAAT???"
        } else if score <= 7 {
            return "NICE!"
        } else {
            return "GREAT SUCCESS!!!"
        }
    }
    
    func checkAnswer(userAnswer: String) -> Bool {
        let trueAnswer = questions[currentQuestionIndex].answer
        let result = userAnswer == trueAnswer
        
        if result {
            score += 1
        }
            
        currentQuestionIndex += 1
        return result
    }
    
    func isEndReached() -> Bool {
        return currentQuestionIndex >= questions.count
    }
    
}
