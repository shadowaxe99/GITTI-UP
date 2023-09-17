
import Foundation
import SwiftUI

extension View {
    func embedInNavigation() -> some View {
        NavigationView { self }
    }
}

extension String {
    func spoofCallerID() -> String {
        let spoofedID = self.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
        return spoofedID
    }
}

extension URL {
    func recordPrankCall() -> URL {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let outputURL = documentsDirectory.appendingPathComponent("prankCallRecord.m4a")
        return outputURL
    }
}

extension Array where Element: Hashable {
    func removingDuplicates() -> [Element] {
        let set = Set(self)
        return Array(set)
    }
}
