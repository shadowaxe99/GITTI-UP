
import Foundation
import OpenAI

class ChatGPTIntegrationService {
    
    private let gpt3 = GPT3(apiKey: "YOUR_API_KEY")
    
    func generateResponse(for input: String, completion: @escaping (Result<String, Error>) -> Void) {
        let prompt = Prompt(content: input)
        
        gpt3.complete(prompt: prompt) { result in
            switch result {
            case .success(let output):
                completion(.success(output.choices.first?.text ?? ""))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

Please replace "YOUR_API_KEY" with your actual OpenAI API key.