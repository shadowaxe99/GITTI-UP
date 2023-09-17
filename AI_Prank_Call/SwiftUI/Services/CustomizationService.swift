
import SwiftUI

class CustomizationService: ObservableObject {
    @Published var selectedTheme: Theme = .light

    enum Theme: String {
        case light, dark
    }

    func toggleTheme() {
        if selectedTheme == .light {
            selectedTheme = .dark
        } else {
            selectedTheme = .light
        }
    }
}
