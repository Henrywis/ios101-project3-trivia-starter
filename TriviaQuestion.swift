//
//  TriviaQuestion.swift
//  Trivia
//
//  Created by Henry Alumona on 10/5/23.
//

import Foundation
import UIKit

struct TriviaQuestion {
    let entertainmentCode: Category
    let question: String
    let answers: [String]
    let correctAnswer: Int
}


enum Category {
  case astronomy
  case science
  case literature

  var description: String {
    switch self {
    case .astronomy:
      return "Astronomy"
    case .science:
      return "Science"
    case .literature:
      return "Literature"
    }
  }
}
