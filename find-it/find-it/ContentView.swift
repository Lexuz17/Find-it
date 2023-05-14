//
//  ContentView.swift
//  find-it
//
//  Created by Elyssa Davina Giovanni on 10/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    HomeView(db: TestViewModel.shared)
                }
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            NavigationView {
                VStack {
                    TestDashboardView(db: TestViewModel.shared)
                }
            }
            .tabItem {
                Image(systemName: "heart.text.square")
                Text("Test")
            }
            
            NavigationView {
                VStack {
                    TreatmentDashboardView()
                }
            }
            .tabItem {
                Image(systemName: "bandage")
                Text("Treatment")
            }
            
            NavigationView {
                VStack {
                    ProfileView()
                }
            }
            .tabItem {
                Image(systemName: "person.crop.circle")
                Text("Profile")
            }
        }
        .accentColor(Color(
            red: 0.34,
            green: 0.366,
            blue: 0.692))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 200)
            .padding()
            .background(Color("PrimaryColor"))
            .cornerRadius(50)
    }
}
