
import SwiftUI

struct SignInView: View {
    @StateObject var vm = ViewModel()
    @State private var authenticated = false

    var body: some View {
        NavigationView {
            if authenticated {
                ContentView() // arahkan ke halaman selamat datang jika authenticated
                    .navigationBarHidden(true)
                    .transition(.opacity)
            } else {
                // Tambahkan ZStack dan buat tampilan seperti sebelumnya
                ZStack {
                    VStack(alignment: .center, spacing: 20) {
                        Spacer()
                        Image("signinImage")
                            .resizable()
                            .frame(width: 200, height: 200)
                        Text("Sign in")
                            .foregroundColor(Color(
                                red: 0.34,
                                green: 0.366,
                                blue: 0.692))
                            .font(.system(size: 40, weight: .bold))

                        TextField("Username", text: $vm.username)
                            .textFieldStyle(.roundedBorder)
                            .textInputAutocapitalization(.never)
                        SecureField("Password", text: $vm.password)
                            .textFieldStyle(.roundedBorder)
                            .textInputAutocapitalization(.never)
                            .privacySensitive()
                        VStack {
                            Spacer()

                            Button("Sign in", role: .cancel) {
                                vm.authenticate()
                                authenticated = vm.authenticated
                            }
                            .buttonStyle(.bordered)
                            .foregroundColor(.white)
                            .padding(.vertical, 1)
                            .padding(.horizontal, 30)
                            .background(Color(red: 0.3411764705882353, green: 0.36470588235294116, blue: 0.6901960784313725))
                            .cornerRadius(20)
                            Button("Forgot password?", action: vm.logPressed)
                                .tint(.gray.opacity(0.80))
                                .font(.footnote)
                            Spacer()
                        }
                        Spacer()
                    }
                    .alert("Access denied", isPresented: $vm.invalid) {
                        Button("Dismiss", action: vm.logPressed)
                    }
                    .frame(width: 300)
                    .padding()
                    .transition(.offset(x: 0, y: 850))
                    .padding(.all, 40.0)
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
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
