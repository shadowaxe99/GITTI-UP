
import SwiftUI

struct PrankCallLibraryView: View {
    @ObservedObject var prankCallViewModel: PrankCallViewModel

    var body: some View {
        NavigationView {
            List(prankCallViewModel.prankCalls) { prankCall in
                NavigationLink(destination: PrankCallDetailView(prankCall: prankCall)) {
                    PrankCallRow(prankCall: prankCall)
                }
            }
            .navigationBarTitle("Prank Call Library")
        }
    }
}

struct PrankCallRow: View {
    var prankCall: PrankCall

    var body: some View {
        HStack {
            Text(prankCall.title)
            Spacer()
            Text(prankCall.duration)
        }
    }
}

struct PrankCallDetailView: View {
    var prankCall: PrankCall

    var body: some View {
        VStack {
            Text(prankCall.title)
            Text(prankCall.description)
            Button(action: {
                // Play prank call
            }) {
                Text("Play")
            }
        }
    }
}
