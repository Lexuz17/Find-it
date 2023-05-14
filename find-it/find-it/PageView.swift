import SwiftUI

struct PageView: View {
    var page: Page
    
    var body: some View {
        VStack(spacing: 10) {
            Image("\(page.imageUrl)")
                .resizable()
                .scaledToFit()
                .padding()
                .cornerRadius(30)
                .cornerRadius(10)
                .padding()
            
            Text(page.name)
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color(red: 0.34,
                    green: 0.366,
                    blue: 0.692))
                
            
            Text(page.description)
                .font(.subheadline)
                .frame(width: 300)
                .foregroundColor(Color(red: 0.34,
                    green: 0.366,
                    blue: 0.692))
        }
        .background(
            LinearGradient(colors: [.white, Color(
                red: 231 / 255,
                green: 232 / 255,
                blue: 255 / 255
            )], startPoint: .top, endPoint: .center)
                
            
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: Page.samplePage)
    }
}

