
import AVFoundation

class VoiceGenerationService {
    private let synthesizer = AVSpeechSynthesizer()

    func generateVoice(from text: String, language: String = "en-US") {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: language)
        synthesizer.speak(utterance)
    }
}
