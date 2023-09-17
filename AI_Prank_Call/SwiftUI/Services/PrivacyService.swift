
import Foundation

class PrivacyService {
    
    static let shared = PrivacyService()
    
    private init() {}
    
    func isUserAgreedToPrivacyPolicy() -> Bool {
        // Fetch user agreement status from UserDefaults
        let userDefaults = UserDefaults.standard
        return userDefaults.bool(forKey: "PrivacyPolicyAgreement")
    }
    
    func setUserAgreementToPrivacyPolicy(agreed: Bool) {
        // Set user agreement status to UserDefaults
        let userDefaults = UserDefaults.standard
        userDefaults.set(agreed, forKey: "PrivacyPolicyAgreement")
    }
}
