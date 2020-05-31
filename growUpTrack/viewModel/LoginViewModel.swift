import SwiftUI
import Combine

class LoginViewModel: ObservableObject {
        
    @Published var username: String = ""
    @Published var isLoginSuccess: Bool = false
    
    var errorMessage: String = ""
    
    func loginButtonWasPressed() {
        print("> LoginButtonWasPressed")
        
        print(username)
        
        if username == "" {
            errorMessage = "Please provide your username"
        }
        else if username != "diandian" {
            errorMessage = "The provided credentials are not correct"
        }
        else {
            errorMessage = ""
            isLoginSuccess = true
            print("Succesfully logged in, navigate to next screen")
        }
        
        username = ""
    }

}
