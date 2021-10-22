//
//  ViewController.swift
//  Borat-Quiz
//
//  Created by Ege Alpay on 21.10.2021.
//

import UIKit
import AVFoundation

class QuizViewController: UIViewController {
    
    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    
    var quizBrain = QuizBrain()
    var player: AVAudioPlayer?


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        displayCurrentQuestion()
    }
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let result = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if result {
            // If user answer is true
            playSound(fileName: "is-nice")
        } else {
            // If user answer is false
            playSound(fileName: "no")
        }
        
        if quizBrain.isEndReached() {
            navigateToResult()
        } else {
            displayCurrentQuestion()
        }
    }
    
    func navigateToResult() {
        
    }
    

    func displayCurrentQuestion() {
        // Update Question Text
        let questionText = quizBrain.getQuestionText()
        questionTextLabel.text = questionText
        
        // Update Question Options
        let questionOptions = quizBrain.getQuestionOptions()
        choice1Button.setTitle(questionOptions[0], for: .normal)
        choice2Button.setTitle(questionOptions[1], for: .normal)
        choice3Button.setTitle(questionOptions[2], for: .normal)
    }
    
    func playSound(fileName: String) {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "mp3") else { return }

            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)

                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

                /* iOS 10 and earlier require the following line:
                player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

                guard let player = player else { return }

                player.play()

            } catch let error {
                print(error.localizedDescription)
            }
    }

}

