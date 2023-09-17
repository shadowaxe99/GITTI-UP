
import SwiftUI

struct RecordAndShareView: View {
    @ObservedObject var recordAndShareService: RecordAndShareService

    var body: some View {
        VStack {
            Text("Record and Share Prank Calls")
                .font(.title)
                .padding()

            Button(action: {
                self.recordAndShareService.startRecording()
            }) {
                Text("Start Recording")
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)

            Button(action: {
                self.recordAndShareService.stopRecording()
            }) {
                Text("Stop Recording")
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)

            Button(action: {
                self.recordAndShareService.shareRecording()
            }) {
                Text("Share Recording")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

struct RecordAndShareView_Previews: PreviewProvider {
    static var previews: some View {
        RecordAndShareView(recordAndShareService: RecordAndShareService())
    }
}
