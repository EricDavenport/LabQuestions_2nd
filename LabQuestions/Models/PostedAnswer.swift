//
//  PostedAnswer.swift
//  LabQuestions
//
//  Created by Eric Davenport on 12/16/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

// encodable converts swift models to data
struct PosteAnswer: Encodable {
  let questionTitle: String
  let questionId: String  // for searching all answers
  let questionLabName: String
  let answerDescription: String
}
