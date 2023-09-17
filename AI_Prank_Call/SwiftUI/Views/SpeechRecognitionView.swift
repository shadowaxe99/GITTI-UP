
import SwiftUI
import Speech

struct SpeechRecognitionView: View {
    @State private var isRecording = false
    @State private var recognizedSpeech = ""

    var body: some View {
        VStack {
            Text("Speech Recognition")
                .font(.largeTitle)
                .padding()

            Text(recognizedSpeech)
                .font(.title)
                .padding()

            Button(action: {
                self.isRecording.toggle()
                if self.isRecording {
                    self.startRecording()
                } else {
                    self.stopRecording()
                }
            }) {
                Text(isRecording ? "Stop Recording" : "Start Recording")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }

    private func startRecording() {
        let audioEngine = AVAudioEngine()
        let speechRecognizer = SFSpeechRecognizer()
        let request = SFSpeechAudioBufferRecognitionRequest()
        let node = audioEngine.inputNode
        let recordingFormat = node.outputFormat(forBus: 0)
        node.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { buffer, _ in
            request.append(buffer)
        }

        audioEngine.prepare()
        do {
            try audioEngine.start()
        } catch {
            return print(error)
        }

        speechRecognizer?.recognitionTask(with: request, resultHandler: { result, error in
            if let result = result {
                self.recognizedSpeech = result.bestTranscription.formattedString
            } else if let error = error {
                print(error)
            }
        })
    }

    private func stopRecording() {
        let audioEngine = AVAudioEngine()
        audioEngine.stop()
        audioEngine.inputNode.removeTap(onBus: 0)
    }
}
