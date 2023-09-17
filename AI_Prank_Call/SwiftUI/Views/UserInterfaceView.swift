
import SwiftUI

struct UserInterfaceView: View {
    @ObservedObject var viewModel: UserInterfaceViewModel

    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to AI Prank Call")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                NavigationLink(destination: PrankCallLibraryView(viewModel: PrankCallLibraryViewModel())) {
                    Text("Prank Call Library")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: VoiceGenerationView(viewModel: VoiceGenerationViewModel())) {
                    Text("AI Voice Generation")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: SpeechRecognitionView(viewModel: SpeechRecognitionViewModel())) {
                    Text("Speech Recognition and Response")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: CallerIDSpoofingView(viewModel: CallerIDSpoofingViewModel())) {
                    Text("Caller ID Spoofing")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: CustomizationOptionsView(viewModel: CustomizationOptionsViewModel())) {
                    Text("Customization Options")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: RecordAndShareView(viewModel: RecordAndShareViewModel())) {
                    Text("Record and Share Prank Calls")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: ChatGPTIntegrationView(viewModel: ChatGPTIntegrationViewModel())) {
                    Text("OpenAI ChatGPT Integration")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: PrivacyView(viewModel: PrivacyViewModel())) {
                    Text("Privacy")
                        .font(.title2)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationBarTitle("AI Prank Call", displayMode: .inline)
        }
    }
}

struct UserInterfaceView_Previews: PreviewProvider {
    static var previews: some View {
        UserInterfaceView(viewModel: UserInterfaceViewModel())
    }
}
