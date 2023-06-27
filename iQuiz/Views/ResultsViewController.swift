//
//  ResultsViewController.swift
//  iQuiz
//
//  Created by Naiara de Almeida Pantuza on 27/06/23.
//

import UIKit

class ResultsViewController: UIViewController {
  
  //MARK - Attributes
  var score: Int?
  
  //MARK - IBOutlets
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var percentLabel: UILabel!
  @IBOutlet weak var restartQuizButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setButtonLayout()
    setResults()
  }
  
  func setButtonLayout() {
    navigationItem.hidesBackButton = true
    restartQuizButton.layer.cornerRadius = 16
    restartQuizButton.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
  }
  
  func setResults() {
    guard let score = score else { return }
    scoreLabel.text = "Você acertou \(score) de \(questions.count) questões"
    percentLabel.text = "Percentual final: \(score * 100 / questions.count)%"
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
