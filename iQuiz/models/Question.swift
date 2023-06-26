//
//  Question.swift
//  iQuiz
//
//  Created by Naiara de Almeida Pantuza on 26/06/23.
//

import Foundation

struct Question {
  let title: String
  let answers: [String]
  let correctAnswer: Int
}


let questions :[Question] =
[Question(title: "Qual feitiço para desarmar o seu oponente, em Harry Potter? ", answers: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], correctAnswer: 2),
 Question(title: "Quando foi lançado o filme Avatar 1?", answers: ["2014", "2022", "2023"], correctAnswer: 1),
 Question(title: "Quando foi lançado o filme Vingadores Ultimato??", answers: ["2019", "2018", "2017"], correctAnswer: 0)
]
