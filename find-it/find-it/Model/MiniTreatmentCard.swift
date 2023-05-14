
import SwiftUI

struct MiniTreatmentCard: View {
    let image: Image
    var body: some View {
        
        
        VStack(alignment: .leading) {
            image
                .font(.subheadline)
                .fontWeight(.bold)
                .padding(.horizontal)
                .foregroundColor(Color(
                    red: 0.34,
                    green: 0.366,
                    blue: 0.692))
        }
        .frame(width: 150)
        .cornerRadius(20.0)
        
        
    }
}

struct MiniTreatmentCard_Previews: PreviewProvider {
    static var previews: some View {
        MiniTreatmentCard(image: Image("Treatment1"))
    }
}
