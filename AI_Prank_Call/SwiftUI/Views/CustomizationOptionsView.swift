
import SwiftUI

struct CustomizationOptionsView: View {
    @State private var selectedVoice = 0
    @State private var selectedBackground = 0
    @State private var selectedPrankTheme = 0

    var voices = ["Voice 1", "Voice 2", "Voice 3"]
    var backgrounds = ["Background 1", "Background 2", "Background 3"]
    var prankThemes = ["Theme 1", "Theme 2", "Theme 3"]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Voice Selection")) {
                    Picker("Select Voice", selection: $selectedVoice) {
                        ForEach(0 ..< voices.count) {
                            Text(self.voices[$0])
                        }
                    }
                }
                
                Section(header: Text("Background Selection")) {
                    Picker("Select Background", selection: $selectedBackground) {
                        ForEach(0 ..< backgrounds.count) {
                            Text(self.backgrounds[$0])
                        }
                    }
                }
                
                Section(header: Text("Prank Theme Selection")) {
                    Picker("Select Prank Theme", selection: $selectedPrankTheme) {
                        ForEach(0 ..< prankThemes.count) {
                            Text(self.prankThemes[$0])
                        }
                    }
                }
            }
            .navigationBarTitle("Customization Options")
        }
    }
}

struct CustomizationOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        CustomizationOptionsView()
    }
}
