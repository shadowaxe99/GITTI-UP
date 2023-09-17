
import SwiftUI

struct PrivacyView: View {
    @State private var isPrivacyPolicyAccepted = false

    var body: some View {
        VStack {
            Text("Privacy Policy")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 20)

            ScrollView {
                Text("Here is the privacy policy...")
                    .font(.body)
                    .padding(.horizontal, 10)
            }

            Toggle(isOn: $isPrivacyPolicyAccepted) {
                Text("I accept the Privacy Policy")
                    .font(.headline)
            }
            .padding()

            Button(action: {
                if self.isPrivacyPolicyAccepted {
                    // Navigate to next screen
                } else {
                    // Show alert
                }
            }) {
                Text("Continue")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

struct PrivacyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyView()
    }
}
