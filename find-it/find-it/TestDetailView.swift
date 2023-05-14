//
//  TestDetailView.swift
//  find-it
//
//  Created by Elyssa Davina Giovanni on 14/05/23.
//

import SwiftUI

struct TestDetailView: View {
    let questions = [
        "Question 1",
        "Question 2",
        "Question 3",
        "Question 4",
        "Question 5"
    ]
    
    let options = [
        "Option 1",
        "Option 2",
        "Option 3",
        "Option 4"
    ]
    
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswer: String?
    
    var body: some View {
        VStack {
            Text(questions[currentQuestionIndex])
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color("575DB0"))
            
            Spacer()
                .frame(height: 30.0)
            
            ForEach(options, id: \.self) { option in
                Button(action: {
                    selectedAnswer = option
                }) {
                    Text(option)
                        .foregroundColor(Color("575DB0"))
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .shadow(radius: 1)
                                .frame(width: 300, height: 50)
                        )
                }
                .padding(.vertical, 5)
                .frame(width: 300, height: 50)
                
                Spacer()
                    .frame(height: 30.0)
            }
        }
        .padding(40)
        .onChange(of: selectedAnswer) { newValue in
            if newValue != nil {
                currentQuestionIndex += 1
                selectedAnswer = nil
            }
        }
    }
}

struct TestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TestDetailView()
    }
}
