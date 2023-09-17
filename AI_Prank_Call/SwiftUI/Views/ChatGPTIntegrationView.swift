
import SwiftUI

struct ChatGPTIntegrationView: View {
    @ObservedObject var chatService: ChatGPTIntegrationService

    @State private var inputText: String = ""
    @State private var messages: [Message] = []

    var body: some View {
        VStack {
            ScrollView {
                ForEach(messages) { message in
                    Text(message.text)
                        .padding()
                        .background(message.isSentByUser ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }

            HStack {
                TextField("Type a message", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: {
                    let message = Message(text: inputText, isSentByUser: true)
                    messages.append(message)

                    chatService.sendMessage(inputText) { response in
                        let responseMessage = Message(text: response, isSentByUser: false)
                        messages.append(responseMessage)
                    }

                    inputText = ""
                }) {
                    Image(systemName: "paperplane.fill")
                        .font(.system(size: 24))
                }
            }
            .padding()
        }
    }
}

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isSentByUser: Bool
}

struct ChatGPTIntegrationView_Previews: PreviewProvider {
    static var previews: some View {
        ChatGPTIntegrationView(chatService: ChatGPTIntegrationService())
    }
}
