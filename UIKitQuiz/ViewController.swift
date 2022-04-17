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
    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    var button4: UIButton!
    var nextButton: UIButton!
    var ansSelected: Bool = false
    
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
        
        button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setTitle("Sydney", for: .normal)
        button1.setTitleColor(.black, for: .normal)
        button1.addTarget(self, action: #selector(onePressed), for: .touchUpInside)
        view.addSubview(button1)
        
        button2 = UIButton()
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("Melbourne", for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button2.addTarget(self, action: #selector(twoPressed), for: .touchUpInside)
        view.addSubview(button2)
        
        button3 = UIButton()
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.setTitle("Paris", for: .normal)
        button3.setTitleColor(.black, for: .normal)
        button3.addTarget(self, action: #selector(threePressed), for: .touchUpInside)
        view.addSubview(button3)
        
        button4 = UIButton()
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.setTitle("Canberra", for: .normal)
        button4.setTitleColor(.black, for: .normal)
        button4.addTarget(self, action: #selector(fourPressed), for: .touchUpInside)
        view.addSubview(button4)
        
        nextButton = UIButton()
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("Next Question", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addTarget(self, action: #selector(goToNextPage), for: .touchUpInside)
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            correct.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            correct.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            incorrect.topAnchor.constraint(equalTo: correct.bottomAnchor),
            incorrect.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            question.topAnchor.constraint(equalTo: incorrect.bottomAnchor, constant: 100),
            question.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 75),
            button1.topAnchor.constraint(equalTo: question.bottomAnchor, constant: 50),
            button1.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 50),
            button2.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 50),
            button3.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            button4.topAnchor.constraint(equalTo: button3.bottomAnchor, constant: 50),
            button4.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            nextButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -30),
            nextButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 130)
        ])
    }
    @objc func onePressed() {
        if ansSelected == false {
            incorrectN += 1
            incorrect.text = "Incorrect: \(String(incorrectN))"
            ansSelected = true
        }
    }
    @objc func twoPressed() {
        if ansSelected == false {
            incorrectN += 1
            incorrect.text = "Incorrect: \(String(incorrectN))"
            ansSelected = true
        }
    }
    @objc func threePressed() {
        if ansSelected == false {
            incorrectN += 1
            incorrect.text = "Incorrect: \(String(incorrectN))"
            ansSelected = true
        }
    }
    @objc func fourPressed() {
        if ansSelected == false {
            correctN += 1
            correct.text = "Correct: \(String(correctN))"
            ansSelected = true
        }
    }
    @objc func goToNextPage() {
        if ansSelected == true {
            present(SecondViewController(), animated: false)
        }
    }
}

class SecondViewController: UIViewController {
    var correct: UILabel!
    var incorrect: UILabel!
    var question: UILabel!
    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    var button4: UIButton!
    var nextButton: UIButton!
    var ansSelected: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func loadView(){ // override goes over the viewDidLoad method which was inherited.
        view = UIView()
        view.backgroundColor = .green
        
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
        question.text = "What is the capital of America?"
        view.addSubview(question)
        
        button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setTitle("Pittsburg", for: .normal)
        button1.setTitleColor(.black, for: .normal)
        button1.addTarget(self, action: #selector(onePressed), for: .touchUpInside)
        view.addSubview(button1)
        
        button2 = UIButton()
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("Washington DC", for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button2.addTarget(self, action: #selector(twoPressed), for: .touchUpInside)
        view.addSubview(button2)
        
        button3 = UIButton()
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.setTitle("New York", for: .normal)
        button3.setTitleColor(.black, for: .normal)
        button3.addTarget(self, action: #selector(threePressed), for: .touchUpInside)
        view.addSubview(button3)
        
        button4 = UIButton()
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.setTitle("New Orleans", for: .normal)
        button4.setTitleColor(.black, for: .normal)
        button4.addTarget(self, action: #selector(fourPressed), for: .touchUpInside)
        view.addSubview(button4)
        
        nextButton = UIButton()
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("Next Question", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addTarget(self, action: #selector(goToNextPage), for: .touchUpInside)
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            correct.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            correct.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            incorrect.topAnchor.constraint(equalTo: correct.bottomAnchor),
            incorrect.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            question.topAnchor.constraint(equalTo: incorrect.bottomAnchor, constant: 100),
            question.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 75),
            button1.topAnchor.constraint(equalTo: question.bottomAnchor, constant: 50),
            button1.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 50),
            button2.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 50),
            button3.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            button4.topAnchor.constraint(equalTo: button3.bottomAnchor, constant: 50),
            button4.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            nextButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -30),
            nextButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 130)
        ])
    }
    @objc func onePressed() {
        if ansSelected == false {
            incorrectN += 1
            incorrect.text = "Incorrect: \(String(incorrectN))"
            ansSelected = true
        }
    }
    @objc func twoPressed() {
        if ansSelected == false {
            correctN += 1
            correct.text = "Correct: \(String(correctN))"
            ansSelected = true
        }
    }
    @objc func threePressed() {
        if ansSelected == false {
            incorrectN += 1
            incorrect.text = "Incorrect: \(String(incorrectN))"
            ansSelected = true
        }
    }
    @objc func fourPressed() {
        if ansSelected == false {
            incorrectN += 1
            incorrect.text = "Incorrect: \(String(incorrectN))"
            ansSelected = true
        }
    }
    @objc func goToNextPage() {
        if ansSelected == true {
            present(ThirdViewController(), animated: false)
        }
    }
}

class ThirdViewController: UIViewController {
    var correct: UILabel!
    var incorrect: UILabel!
    var question: UILabel!
    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    var button4: UIButton!
    var nextButton: UIButton!
    var ansSelected: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func loadView(){ // override goes over the viewDidLoad method which was inherited.
        view = UIView()
        view.backgroundColor = .orange
        
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
        question.text = "What is the capital of China?"
        view.addSubview(question)
        
        button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setTitle("Guangzhou", for: .normal)
        button1.setTitleColor(.black, for: .normal)
        button1.addTarget(self, action: #selector(onePressed), for: .touchUpInside)
        view.addSubview(button1)
        
        button2 = UIButton()
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("Beijing", for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button2.addTarget(self, action: #selector(twoPressed), for: .touchUpInside)
        view.addSubview(button2)
        
        button3 = UIButton()
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.setTitle("Nanjing", for: .normal)
        button3.setTitleColor(.black, for: .normal)
        button3.addTarget(self, action: #selector(threePressed), for: .touchUpInside)
        view.addSubview(button3)
        
        button4 = UIButton()
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.setTitle("New Orleans", for: .normal)
        button4.setTitleColor(.black, for: .normal)
        button4.addTarget(self, action: #selector(fourPressed), for: .touchUpInside)
        view.addSubview(button4)
        
        nextButton = UIButton()
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.setTitle("Next Question", for: .normal)
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.addTarget(self, action: #selector(goToNextPage), for: .touchUpInside)
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            correct.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            correct.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            incorrect.topAnchor.constraint(equalTo: correct.bottomAnchor),
            incorrect.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            question.topAnchor.constraint(equalTo: incorrect.bottomAnchor, constant: 100),
            question.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 75),
            button1.topAnchor.constraint(equalTo: question.bottomAnchor, constant: 50),
            button1.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 50),
            button2.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 50),
            button3.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            button4.topAnchor.constraint(equalTo: button3.bottomAnchor, constant: 50),
            button4.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 150),
            nextButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -30),
            nextButton.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 130)
        ])
    }
    @objc func onePressed() {
        if ansSelected == false {
            incorrectN += 1
            incorrect.text = "Incorrect: \(String(incorrectN))"
            ansSelected = true
        }
    }
    @objc func twoPressed() {
        if ansSelected == false {
            correctN += 1
            correct.text = "Correct: \(String(correctN))"
            ansSelected = true
        }
    }
    @objc func threePressed() {
        if ansSelected == false {
            incorrectN += 1
            incorrect.text = "Incorrect: \(String(incorrectN))"
            ansSelected = true
        }
    }
    @objc func fourPressed() {
        if ansSelected == false {
            incorrectN += 1
            incorrect.text = "Incorrect: \(String(incorrectN))"
            ansSelected = true
        }
    }
    @objc func goToNextPage() {
        if ansSelected == true {
            present(FourthViewController(), animated: false)
        }
    }
}

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func loadView(){ // override goes over the viewDidLoad method which was inherited.
        view = UIView()
        view.backgroundColor = .red
    }
}
