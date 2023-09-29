import Foundation

protocol ViewModelProtocol {
    var cities: [City] { get set }
    func didSelect(city: City)
}

class ViewModel: ViewModelProtocol {
    var sdaads = false
    // ?
    var cities: [City] = []
    
    init() {
        cities = City.cities
    }
    
     func didSelect(city: City) {
         guard let firstIndex = cities.firstIndex(where: { $0.id == city.id }) else { return }
        cities[firstIndex].isFlipped = !city.isFlipped
    }
}
