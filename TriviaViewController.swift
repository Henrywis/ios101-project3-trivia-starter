//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Henry Alumona on 10/5/23.
//

import UIKit

class TriviaViewController: UIViewController {
    
    @IBOutlet weak var questionTag: UILabel!
    
    @IBOutlet weak var categoryTab: UILabel!
    
    @IBOutlet weak var triviaTag: UILabel!
    
    @IBOutlet weak var option1: UIButton!
    
    @IBOutlet weak var option2: UIButton!
    
    
    @IBOutlet weak var option3: UIButton!
    
    @IBOutlet weak var option4: UIButton!
    
    private var triviaquestions = [TriviaQuestion]()
    private var selectedQuestionIndex = 0
    private var numCorrect = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        triviaquestions = createMockData()
        configure(with: triviaquestions[selectedQuestionIndex])
        triviaTag.sizeToFit()
    }
    @IBAction func didTapOption1(_ sender: UIButton) {
        if (selectedQuestionIndex < triviaquestions.count - 1) {
            selectedQuestionIndex += 1
        }
        configure(with: triviaquestions[selectedQuestionIndex])
    }
    
    @IBAction func didTapOption2(_ sender: UIButton) {
        if (selectedQuestionIndex < triviaquestions.count - 1) {
            selectedQuestionIndex += 1
        }
        configure(with: triviaquestions[selectedQuestionIndex])
    }
    
    @IBAction func didTapOption3(_ sender: UIButton) {
        if (selectedQuestionIndex < triviaquestions.count - 1) {
            selectedQuestionIndex += 1
        }
        configure(with: triviaquestions[selectedQuestionIndex])
    }
    
    @IBAction func didTapOption4(_ sender: UIButton) {
        if (selectedQuestionIndex < triviaquestions.count - 1) {
            selectedQuestionIndex += 1
        }
        configure(with: triviaquestions[selectedQuestionIndex])
    }
    
    private func createMockData() -> [TriviaQuestion] {
        let mockData1 = TriviaQuestion(
                                 entertainmentCode: .astronomy,
                                 question: "What is the largest planet in our solar system?",
                                 answers: ["Earth", "Mars", "Jupiter", "Saturn"],
                                  correctAnswer: 2)
        let mockData2 = TriviaQuestion(
                                 entertainmentCode: .science,
                                 question: "Which gas do plants primarily absorb from the atmosphere during photosynthesis?",
                                 answers: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"],
                                  correctAnswer: 1)
        let mockData3 = TriviaQuestion(
                                 entertainmentCode: .literature,
                                 question: "Who wrote the famous play 'Romeo and Juliet'?",
                                 answers: ["Charles Dickens", "William Shakespeare", "Jane Austen", "Mark Twain"],
                                 correctAnswer: 1)
        
        return [mockData1, mockData2, mockData3]
    }
    
    
    private func configure(with trivia: TriviaQuestion) {
        questionTag.text = "Question: \(selectedQuestionIndex + 1)/\(triviaquestions.count)"
        categoryTab.text = "Entertainment: \(trivia.entertainmentCode.description)"
        triviaTag.text = trivia.question
        triviaTag.adjustsFontSizeToFitWidth = true
        triviaTag.minimumScaleFactor = 0.5
        triviaTag.numberOfLines = 0
        option1.setTitle(trivia.answers[0], for: .normal)
        option2.setTitle(trivia.answers[1], for: .normal)
        option3.setTitle(trivia.answers[2], for: .normal)
        option4.setTitle(trivia.answers[3], for: .normal)
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
