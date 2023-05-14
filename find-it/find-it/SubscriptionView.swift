import SwiftUI
struct SubscriptionView: View {
    @State private var selectedPlan: String = "Monthly" // Set the default selected plan
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Choose a plan")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.3411764705882353, green: 0.36470588235294116, blue: 0.6901960784313725))
            Spacer()
            VStack(spacing: 20) {
                SubscriptionCardView(
                    title: "Monthly",
                    subtitle: "$9.99/month",
                    isSelected: selectedPlan == "Monthly"
                ) {
                    selectedPlan = "Monthly"
                }
                
                SubscriptionCardView(
                    title: "Yearly",
                    subtitle: "$99.99/year",
                    isSelected: selectedPlan == "Yearly"
                ) {
                    selectedPlan = "Yearly"
                }
            }
            .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
            Spacer()
            Button(action: {
                // Handle subscription button tap here
            }, label: {
                Text("Subscribe")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 24)
                    .background(Color(red: 0.3411764705882353, green: 0.36470588235294116, blue: 0.6901960784313725))
                    .cornerRadius(20)
            })
        }
        .padding(50)
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

struct SubscriptionCardView: View {
    let title: String
    let subtitle: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(isSelected ? .white : Color(red: 0.3411764705882353, green: 0.36470588235294116, blue: 0.6901960784313725))
            
            Text(subtitle)
                .font(.headline)
                .foregroundColor(isSelected ? .white : .gray)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(isSelected ? Color(red: 0.3411764705882353, green: 0.36470588235294116, blue: 0.6901960784313725) : Color.gray.opacity(0.1))
                .frame(height: 50)
                .overlay(
                    Text("Select")
                        .foregroundColor(isSelected ? .white : .black)
                )
                .onTapGesture {
                    action()
                }
        }
        .padding()
        .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
        .frame(maxWidth: .infinity)
        .background(isSelected ? Color(red: 0.3411764705882353, green: 0.36470588235294116, blue: 0.6901960784313725).opacity(0.8) : Color.white)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(isSelected ? Color(red: 0.3411764705882353, green: 0.36470588235294116, blue: 0.6901960784313725) : Color.gray.opacity(0.5), lineWidth: 1)
        )
    }
}

struct Subscription_Previews: PreviewProvider{
    static var previews: some View{
        SubscriptionView()
    }
}
