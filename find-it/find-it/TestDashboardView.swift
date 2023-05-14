//
//  TestDashboardView.swift
//  find-it
//
//  Created by Elyssa Davina Giovanni on 13/05/23.
//

import SwiftUI

struct TestDashboardView: View {
    @ObservedObject var db: TestViewModel

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text("Tests")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("575DB0"))
                    Spacer()
                }
                
                Spacer().frame(height: 25.0)
                
                ForEach(db.tests, id: \.self) { test in
                    NavigationLink(destination: TestDetailView()) {
                        HStack {
                            Image(test.image_name ?? "")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 150)
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("\(test.test_name ?? "") Test")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("575DB0"))
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                                Spacer().frame(height: 5.0)
                                HStack {
                                    Text("\(test.test_duration ?? "") minutes")
                                        .font(.caption)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("575DB0"))
                                    Spacer()
                                }
                                Spacer().frame(height: 15.0)
                                HStack {
                                    Text("Descriptions")
                                        .font(.caption)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("575DB0"))
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
                    }
                    Spacer().frame(height: 20.0)
                }
            }
            .padding(.all, 40.0)
            .frame(maxHeight: .infinity)
        }
        .background(
            LinearGradient(colors: [.white, Color("E7E8FF")], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
        .onAppear {
            db.loadData()
            db.fetchData()
        }
    }
}

struct TestDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        TestDashboardView(db: TestViewModel.shared)
    }
}
