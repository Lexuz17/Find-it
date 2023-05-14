//
//  HomeView.swift
//  find-it
//
//  Created by Stella Shania Mintara on 14/05/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var db: TestViewModel

    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(colors: [.white, Color("E7E8FF")], startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView (showsIndicators: false) {
                    
                    VStack (alignment: .leading) {
                        Text("🤖 Hello, Jef")
                            .padding(.horizontal)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(
                                red: 0.34,
                                green: 0.366,
                                blue: 0.692))
                            .font(.title2)
                        Image("banner")
                            .padding(.bottom)
                        Divider()
                        
                        Text("Tests")
                            .font(.title2)
                            .padding(.horizontal)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(
                                red: 0.34,
                                green: 0.366,
                                blue: 0.692))
                            .padding(.horizontal)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 0) {
                                ForEach(0 ..< 4) { i in
                                    NavigationLink(
                                        destination:             TestDashboardView(db: TestViewModel.shared),
                                        label: {
                                            MiniTestCard(image: Image("Test\(i+1)"), text: "Depression Test")
                                        })
                                        .navigationBarHidden(true)
                                        .foregroundColor(.black)
                                }
                                .padding(.leading)
                            }.padding(.horizontal)
                        }
                        .padding(.bottom)
                        
                        Text("Treatments")
                            .font(.title2)
                            .padding(.horizontal)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(
                                red: 0.34,
                                green: 0.366,
                                blue: 0.692))
                            .padding(.horizontal)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 0) {
                                ForEach(0 ..< 4) { i in
                                    NavigationLink(
                                        destination: TreatmentDashboardView(),
                                        label: {
                                            MiniTreatmentCard(image: Image("Treatment\(i+1)")
                                            )
                                        })
                                        .navigationBarHidden(true)
                                        .foregroundColor(.black)
                                }
//                                .padding(.leading)
                            }
                            .padding(.horizontal)
                        }
                        .padding(.bottom)
                    }
                }
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(db: TestViewModel.shared)
    }
}
