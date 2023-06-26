//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Naiara de Almeida Pantuza on 23/06/23.
//

import UIKit

class QuestionViewController: UIViewController {
  
  var score: Int = 0
  var questionNumber: Int = 0
  var titleLabel = QuestionTitleLabel()
  var buttonList = [ButtonLayoutModel]()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.hidesBackButton = true
    
    titleLabel = QuestionTitleLabel()
    titleLabel.setQuestionTitle(questions[questionNumber])
    
    view.addSubview(titleLabel)
    setTitleConstraints(titleLabel)
    
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.spacing = 32
    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(stackView)
    
    NSLayoutConstraint.activate([
      stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
      stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
      stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 72)
    ])
    
    for index in 0...2 {
      let button = ButtonLayoutModel(type: .system)
      button.tag = index
      button.setButtonText(questions[questionNumber])
      button.titleLabel?.font = UIFont.systemFont(ofSize: 22)
      
      stackView.addArrangedSubview(button)
      button.addTarget(self, action: #selector(answerButtonTapped(_:)), for: .touchUpInside)
      
      buttonList.append(button)
    }
  }
  
  @objc func setQuestion() {
    titleLabel.setQuestionTitle(questions[questionNumber])
    for button in buttonList {
      button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
      button.setButtonText(questions[questionNumber])
    }
  }
  
  @objc func answerButtonTapped(_ sender: UIButton) {
    let userGotRightAnswer = sender.tag == questions[questionNumber].correctAnswer
    
    if userGotRightAnswer {
      score += 1
      sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
    } else {
      sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
    }
    if questionNumber < questions.count - 1 {
      questionNumber += 1
      Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(setQuestion), userInfo: nil, repeats: false)
      //setQuestion()
//      let resultViewController = ResultViewController()
//      resultViewController.score = score
//      navigationController?.pushViewController(resultViewController, animated: true)
//      return
    }
  }
  
  func setTitleConstraints(_ titleLabel: QuestionTitleLabel) {
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 112),
      titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
      titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64)
    ])
  }

}
