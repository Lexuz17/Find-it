import SwiftUI

struct RewardView: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white, Color(
                red: 231 / 255,
                green: 232 / 255,
                blue: 255 / 255
            )], startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Image("RewardImage") //
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("Congratulations!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.34, green: 0.366, blue: 0.692, opacity: 1.0))
                
                Text("You have finished the test.")
                    .font(.headline)
                    .foregroundColor(Color(red: 0.3411764705882353, green: 0.36470588235294116, blue: 0.6901960784313725))
                
                Button(action: {
                    // Handle button tap here
                }, label: {
                    Text("Result")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 34)
                        .background(Color(red: 0.3411764705882353, green: 0.36470588235294116, blue: 0.6901960784313725))
                        .cornerRadius(20)
                })
            }
            .padding()
        }
    }
}

struct RewardView_Previews: PreviewProvider {
    static var previews: some View {
        RewardView()
    }
}
