import UIKit

struct Quiz {
    var id: String?
    var question: String
    var correct_answer: String
    var isKnown: Bool? = false
    
}

class QuizModel {
    var id: String?
    var question: String = ""
    var correct_answer: String = ""
    var isKnown: Bool? = false
    
    init(id: String, question: String, correct_answer: String, isKnown: Bool) {
        self.id = id
        self.question = question
        self.correct_answer = correct_answer
        self.isKnown = isKnown
    }
    
}


//test
var aQuiz = Quiz(id: "1",
             question: "What's your name?", correct_answer: "deepty", isKnown: false)
var aQuizModel = QuizModel(id: "1", question: "What's your name?", correct_answer: "deepty", isKnown: false)

var bQuiz = aQuiz
bQuiz.question = "How Are you?"
print(aQuiz.question) //"What's your name?"

var bQuizModel = aQuizModel
bQuizModel.question = "How Are you12?"
print(aQuizModel.question) //"How Are you12?"



let a = [1,2,3,4,5]

var b = a.map { $0 * 2 }
print(b)
