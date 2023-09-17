
import SwiftUI

struct CallerIDSpoofingView: View {
    @ObservedObject var callerIDSpoofingService: CallerIDSpoofingService

    var body: some View {
        VStack {
            Text("Caller ID Spoofing")
                .font(.largeTitle)
                .padding()

            TextField("Enter the number to display", text: $callerIDSpoofingService.displayNumber)
                .padding()
                .keyboardType(.numberPad)

            Button(action: {
                callerIDSpoofingService.spoofCallerID()
            }) {
                Text("Spoof Caller ID")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct CallerIDSpoofingView_Previews: PreviewProvider {
    static var previews: some View {
        CallerIDSpoofingView(callerIDSpoofingService: CallerIDSpoofingService())
    }
}
