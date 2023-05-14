import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image(uiImage: #imageLiteral(resourceName: "Logos"))
                    Text("JEF Mental")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("PrimaryColor"))
                    Text("Supporting your mental wellness journey")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(Color("PrimaryColor"))
                    Spacer()
                    Image(uiImage: #imageLiteral(resourceName: "Hero"))
                    Spacer()
                    
                    NavigationLink(
                        destination: SignInView().navigationBarHidden(true),
                        label: {
                            Text("Sign in")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(Color("PrimaryColor"))
                                .padding()
                                .frame(width: 230)
                                .overlay(
                                        RoundedRectangle(cornerRadius: 50)
                                            .stroke(Color("PrimaryColor"), lineWidth: 4)
                                    )
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                        .navigationBarHidden(true)
                    
                    NavigationLink(
                        destination: SignInView().navigationBarHidden(true),
                        label: {
                            PrimaryButton(title: "Sign Up")
                        })
                        .navigationBarHidden(true)
                    
                    Spacer()
                    
                }
                .padding()
                .background(
                    LinearGradient(colors: [.white, Color(
                        red: 231 / 255,
                        green: 232 / 255,
                        blue: 255 / 255
                    )], startPoint: .top, endPoint: .center)
                        .edgesIgnoringSafeArea(.all)
                )
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
