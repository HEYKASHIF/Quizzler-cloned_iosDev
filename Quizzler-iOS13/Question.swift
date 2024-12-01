//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by HEY KASHIF on 01/12/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    
    let text: String
    let answer: String
    
    init(Q: String, A: String) {
        self.text = Q
        self.answer = A
    }
    
}
