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

  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationItem.hidesBackButton = true
    
    let titleLabel = QuestionTitleLabel()
    setQuestion(titleLabel, questions[questionNumber])
    //titleLabel.text = "Título da questão"
    view.addSubview(titleLabel)
    setTitleConstraints(titleLabel)
    
    
//    titleLabel.translatesAutoresizingMaskIntoConstraints = false
//    NSLayoutConstraint.activate([
//      titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 112),
//      titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
//      titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64)
//    ])
    
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
    var buttonList = [ButtonLayoutModel]()
    
    for index in 1...3 {
      let button = ButtonLayoutModel(type: .system)
      button.setTitle("Resposta \(index)", for: .normal)
      button.tag = index
      button.titleLabel?.font = UIFont.systemFont(ofSize: 22)
      
      stackView.addArrangedSubview(button)
      button.addTarget(self, action: #selector(answerButtonTapped(_:)), for: .touchUpInside)
      
      buttonList.append(button)
    }
  }
  
  @objc func answerButtonTapped(_ sender: UIButton) {
    print("Button tapped: \(sender.tag)")
  }
  
  func setTitleConstraints(_ titleLabel: QuestionTitleLabel) {
    
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 112),
      titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
      titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64)
    ])
  }
  
  func setQuestion(_ titleLabel: QuestionTitleLabel, _ question: Question) {
    print("Question: \(question.title)")
    titleLabel.text = question.title
  }

}
