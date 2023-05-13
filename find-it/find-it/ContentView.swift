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
                    Text("Home")
                        .font(.title)
                        .padding()
                    Spacer()
                }
                .navigationBarTitle("Home")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            NavigationView {
                VStack {
                    Text("Test")
                        .font(.title)
                        .padding()
                    Spacer()
                }
                .navigationBarTitle("Test")
            }
            .tabItem {
                Image(systemName: "heart.text.square")
                Text("Test")
            }
            
            NavigationView {
                VStack {
                    Text("Treatment")
                        .font(.title)
                        .padding()
                    Spacer()
                }
                .navigationBarTitle("Treatment")
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
        ContentView()
    }
}
