//
//  LoginViewModel.swift
//  growUpTrack
//
//  Created by ZhaoLan on 2020/5/28.
//  Copyright © 2020 Lan. All rights reserved.
//

import SwiftUI
import Combine

class LoginViewModel: ObservableObject {
        
    @Published var username: String = ""
    
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
            print("Succesfully logged in, navigate to next screen")
        }
        
        username = ""
    }

}
