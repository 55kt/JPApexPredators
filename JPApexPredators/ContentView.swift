import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    let predators = Predators()
    
    // MARK: - Body
    var body: some View {
        List(predators.apexPredators) { predator in
            HStack {
                // Dinosaur Image
                Image(predator.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .shadow(color: .white, radius: 1)
                
                VStack(alignment: .leading) {
                    // Name
                    Text(predator.name)
                        .fontWeight(.bold)
                    
                    // Type
                    Text(predator.type.rawValue.capitalized)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 13)
                        .padding(.vertical, 5)
                        .background(predator.type.background)
                        .clipShape(.capsule)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
