//
//  ViewController.swift
//  iQuiz
//
//  Created by Naiara de Almeida Pantuza on 22/06/23.
//

import UIKit

class ViewController: UIViewController {
  //MARK - IBOutlets
  @IBOutlet weak var startQuizButton: UIButton!
  
  //MARK - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setLayout()
  }
  
  func setLayout() {
    navigationItem.hidesBackButton = true
    startQuizButton.layer.cornerRadius = 12
    startQuizButton.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
  }
  
  //MARK - IBActions
  @IBAction func pressStartQuizButton(_ sender: Any) {
    print("Start Quiz Button Pressed")
  }
  
}

