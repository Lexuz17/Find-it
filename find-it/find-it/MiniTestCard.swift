
import SwiftUI

struct MiniTestCard: View {
    let image: Image
    let text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            image
                .resizable()
                .frame(width: 160, height: 115)
            Text(text)
                .font(.subheadline)
                .fontWeight(.bold)
                .padding(.horizontal)
                .foregroundColor(Color(
                    red: 0.34,
                    green: 0.366,
                    blue: 0.692))
            Text("n minutes")
                .font(.footnote)
                .padding(.bottom)
                .padding(.horizontal)
        }
        .frame(width: 150)
        .background(Color.white)
        .cornerRadius(20.0)
        
        
    }
}

struct MiniTestCard_Previews: PreviewProvider {
    static var previews: some View {
        MiniTestCard(image: Image("Test1"), text: "Depression Test")
    }
}
