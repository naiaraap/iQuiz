//
//  QuestionTitleLabel.swift
//  iQuiz
//
//  Created by Naiara de Almeida Pantuza on 23/06/23.
//

import UIKit

class QuestionTitleLabel: UILabel {
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupLabel()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupLabel()
  }
  
  private func setupLabel() {
    text = "Título da questão"
    
    textColor = UIColor.white
    self.numberOfLines = 0
    self.textAlignment = .center
    
    if let customFont = UIFont(name: "HelveticaNeue-Medium", size: 32) {
      font = UIFontMetrics.default.scaledFont(for: customFont)
    } else {
      font = UIFont.systemFont(ofSize: 32, weight: .semibold)
    }
    
    translatesAutoresizingMaskIntoConstraints = false
  }
  
  func setQuestionTitle(_ question: Question? = nil) {
    text = question?.title ?? "Título da questão"
  }
}
