//
//  ViewController.swift
//  UIKitQuiz
//
//  Created by Tim Randall on 16/4/22.
//

import UIKit

var correctN: Int = 0
var incorrectN: Int = 0

class ViewController: UIViewController {
    var correct: UILabel!
    var incorrect: UILabel!
    var question: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func loadView(){
        view = UIView()
        view.backgroundColor = .yellow
        
        correct = UILabel()
        correct.translatesAutoresizingMaskIntoConstraints = false
        correct.textAlignment = .left
        correct.text = "Correct: \(String(correctN))"
        view.addSubview(correct)
        
        incorrect = UILabel()
        incorrect.translatesAutoresizingMaskIntoConstraints = false
        incorrect.textAlignment = .left
        incorrect.text = "Incorrect: \(String(incorrectN))"
        view.addSubview(incorrect)
        
        question = UILabel()
        question.translatesAutoresizingMaskIntoConstraints = false
        question.textAlignment = .center
        question.text = "What is the capital of Australia?"
        view.addSubview(question)
        
        NSLayoutConstraint.activate([
            correct.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            correct.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            incorrect.topAnchor.constraint(equalTo: correct.bottomAnchor),
            incorrect.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            question.topAnchor.constraint(equalTo: incorrect.bottomAnchor, constant: 100),
            question.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 75)
        ])
    }
}

