//
//  ButtonLayoutModel.swift
//  iQuiz
//
//  Created by Naiara de Almeida Pantuza on 23/06/23.
//

import UIKit

class ButtonLayoutModel: UIButton {
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupButton()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupButton()
  }
  
  private func setupButton() {
    backgroundColor = UIColor(red: 0.45, green: 0.20, blue: 1.0, alpha: 1.0)
    
    setTitleColor(UIColor.white, for: .normal)
    //titleLabel?.font = UIFont.systemFont(ofSize: 22)
    layer.cornerRadius = 16
    
    translatesAutoresizingMaskIntoConstraints = false
    
    self.heightAnchor.constraint(equalToConstant: 62).isActive = true
    }
  
  func setButtonText(_ question: Question? = nil) {
    setTitle(question?.answers[self.tag] ?? "Título da questão", for: .normal)
  }
}
