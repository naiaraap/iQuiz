//
//  ResultsViewController.swift
//  iQuiz
//
//  Created by Naiara de Almeida Pantuza on 27/06/23.
//

import UIKit

class ResultsViewController: UIViewController {
  
  //MARK - IBOutlets
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var percentLabel: UILabel!
  @IBOutlet weak var restartQuizButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        setButtonLayout()
    }
    
  func setButtonLayout() {
    restartQuizButton.layer.cornerRadius = 16
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
