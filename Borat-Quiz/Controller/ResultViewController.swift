//
//  ResultViewController.swift
//  Borat-Quiz
//
//  Created by Ege Alpay on 22.10.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    var score: Int?
    var message: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.text = String(score!)
        messageLabel.text = message
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
