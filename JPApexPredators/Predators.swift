import Foundation

class Predators {
    // MARK: - Properties
    var apexPredators: [ApexPredator] = []
    
    // MARK: - Initializers
    init() {
        decodeApexPredators()
    }
    
    // MARK: - Methods
    
    // Decode function for JSON
    func decodeApexPredators() {
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredator].self, from: data)
            } catch {
                print("Error decoding JSON data: \(error)")
            }
        }
    }
}
