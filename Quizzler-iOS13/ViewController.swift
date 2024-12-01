//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    

    
    
    
    
    
    let quiz = [
        Question(Q: "Four + Two is equal to Six.", A: "True"),
        Question(Q: "Five - Three is greater than One.", A: "True"),
        Question(Q: "Seven * Five is greater than Twenty.", A: "True"),
        Question(Q: "Eight / Four is less than Two.", A: "False"),
        Question(Q: "Nine + Six is greater than Fifteen.", A: "False"),
        Question(Q: "A slug's blood is green.", A: "True"),
        Question(Q: "Approximately one quarter of human bones are in the feet.", A: "True"),
        Question(Q: "The total surface area of two human lungs is approximately 70 square metres.", A: "True"),
        Question(Q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", A: "True"),
        Question(Q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", A: "False"),
        Question(Q: "It is illegal to pee in the Ocean in Portugal.", A: "True"),
        Question(Q: "You can lead a cow down stairs but not up stairs.", A: "False"),
        Question(Q: "Google was originally called 'Backrub'.", A: "True"),
        Question(Q: "Buzz Aldrin's mother's maiden name was 'Moon'.", A: "True"),
        Question(Q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", A: "False"),
        Question(Q: "No piece of square dry paper can be folded in half more than 7 times.", A: "False"),
        Question(Q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", A: "True")
        

    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //trueButton.backgroundColor = .black
        //falseButton.tintColor = .black
        //trueButton.layer.borderColor = UIColor.white.cgColor
        updateUI()
        
        // Do any additional setup after loading the view.
    }


    @IBAction func answerButtonPressed(_ sender: UIButton)
    {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        if(userAnswer == actualAnswer)
        {
            print("Right!")
            sender.backgroundColor = UIColor.green
        }
        else
        {
            print("Wrong!")
            sender.backgroundColor = UIColor.red
        }
        
        
        if(questionNumber<16)
        {
            questionNumber += 1
        }
        else
        {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI) , userInfo: nil, repeats: false)
        
        
        
    }
    
    @objc func updateUI()
    {
        
        questionLabel.text = quiz[questionNumber].text
        questionLabel.textColor = UIColor.black
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber+1)/Float(quiz.count)
        
    }
}

