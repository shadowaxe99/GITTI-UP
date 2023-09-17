
import SwiftUI

struct VoiceGenerationView: View {
    @ObservedObject var voiceGenerationService: VoiceGenerationService

    @State private var textToSpeech = ""
    @State private var selectedVoice = 0
    @State private var isGenerating = false

    var body: some View {
        VStack {
            Text("Voice Generation")
                .font(.largeTitle)
                .padding()

            TextField("Enter text to convert to speech", text: $textToSpeech)
                .padding()
                .border(Color.gray, width: 0.5)

            Picker(selection: $selectedVoice, label: Text("Select Voice")) {
                ForEach(0..<voiceGenerationService.voices.count) {
                    Text(self.voiceGenerationService.voices[$0])
                }
            }
            .padding()

            Button(action: {
                self.isGenerating = true
                self.voiceGenerationService.generateVoice(from: self.textToSpeech, voice: self.voiceGenerationService.voices[self.selectedVoice]) {
                    self.isGenerating = false
                }
            }) {
                Text("Generate Voice")
            }
            .disabled(isGenerating)
            .padding()

            if isGenerating {
                ProgressView("Generating...")
            }
        }
    }
}

struct VoiceGenerationView_Previews: PreviewProvider {
    static var previews: some View {
        VoiceGenerationView(voiceGenerationService: VoiceGenerationService())
    }
}
