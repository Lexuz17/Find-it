//
//  TestDashboardView.swift
//  find-it
//
//  Created by Elyssa Davina Giovanni on 13/05/23.
//

import SwiftUI

struct TestDashboardView: View {
    var body: some View {
        let images = ["DepressionImage", "AnxietyImage", "BipolarImage"]
        let tests = ["Depression", "Anxiety", "Bipolar", "PTSD", "Youth Mental Health", "Pychosis & Scizorphernia", "Eating Disorder", "Addiction"]
        ScrollView {
            VStack (alignment: .leading) {
                HStack {
                    Text("Tests")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(
                            red: 0.34,
                            green: 0.366,
                            blue: 0.692))
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 25.0)
                
                ForEach(Array(tests.enumerated()), id: \.element) { (index, test) in
                    HStack {
                        Image(images[index % 3])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 150)
                        
                        VStack {
                            HStack {
                                Text(test + " Test")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(
                                        red: 0.34,
                                        green: 0.366,
                                        blue: 0.692))
                                Spacer()
                            }
                            Spacer()
                                .frame(height: 5.0)
                            HStack {
                                Text("8 minutes")
                                    .font(.caption)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(
                                        red: 0.34,
                                        green: 0.366,
                                        blue: 0.692))
                                Spacer()
                            }
                            Spacer()
                                .frame(height: 15.0)
                            HStack {
                                Text("Descriptions")
                                    .font(.caption)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(
                                        red: 0.34,
                                        green: 0.366,
                                        blue: 0.692))
                                Spacer()
                            }
                            Spacer()
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 15)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .shadow(radius: 1)
                    )
                    Spacer()
                        .frame(height: 20.0)
                }
            }
            .padding(.all, 40.0)
            .background(
                LinearGradient(colors: [.white, Color(
                    red: 231 / 255,
                    green: 232 / 255,
                    blue: 255 / 255
                )], startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
            )
            .frame(maxHeight: .infinity)
        }
    }
}

struct TestDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        TestDashboardView()
    }
}
