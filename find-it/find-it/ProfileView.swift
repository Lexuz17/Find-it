//
//  ProfileView.swift
//  find-it
//
//  Created by Elyssa Davina Giovanni on 13/05/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                HStack {
                    Text("Profile")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("575DB0"))
                    Spacer()
                }
                Spacer()
                    .frame(height: 25.0)

                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("E7E8FF"))
                            .frame(height: 130.0)
                            .offset(x: 0.0, y: 80)

                        AsyncImage(url: URL(string: "https://unsplash.com/photos/rDEOVtE7vOs"))
                            .frame(width: 130.0, height: 130.0)
                            .cornerRadius(100.0)
                    }

                    Spacer()
                        .frame(height: 25.0)

                    Text("Username")
                        .fontWeight(.medium)
                        .foregroundColor(Color("575DB0"))

                    Spacer()
                        .frame(height: 30.0)
                }

                Spacer()
                    .frame(height: 25.0)

                VStack {
                    HStack {
                        Text("Your Subscription")
                            .fontWeight(.medium)
                            .foregroundColor(Color("575DB0"))
                        Spacer()
                    }
                    Spacer()
                }
                .frame(height: 120.0)
                .padding(.all, 20.0)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .shadow(radius: 1)
                )

                Spacer()
                    .frame(height: 20.0)

                VStack {
                    HStack {
                        Text("Diagnoses")
                            .fontWeight(.medium)
                            .foregroundColor(Color("575DB0"))
                        Spacer()
                    }
                    Spacer()
                }
                .frame(height: 120.0)
                .padding(.all, 20.0)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .shadow(radius: 1)
                )

                Spacer()
            }
            .padding(.all, 40.0)
            .background(
                LinearGradient(colors: [.white, Color("E7E8FF")], startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
            )
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
