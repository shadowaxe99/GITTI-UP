
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: PrankCallLibraryView()) {
                    Text("Prank Call Library")
                }
                NavigationLink(destination: VoiceGenerationView()) {
                    Text("AI Voice Generation")
                }
                NavigationLink(destination: SpeechRecognitionView()) {
                    Text("Speech Recognition and Response")
                }
                NavigationLink(destination: CallerIDSpoofingView()) {
                    Text("Caller ID Spoofing")
                }
                NavigationLink(destination: CustomizationOptionsView()) {
                    Text("Customization Options")
                }
                NavigationLink(destination: RecordAndShareView()) {
                    Text("Record and Share Prank Calls")
                }
                NavigationLink(destination: ChatGPTIntegrationView()) {
                    Text("OpenAI ChatGPT Integration")
                }
                NavigationLink(destination: PrivacyView()) {
                    Text("Secure and Private")
                }
                NavigationLink(destination: UserInterfaceView()) {
                    Text("User-Friendly Interface")
                }
            }
            .navigationBarTitle("AI Prank Call")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
