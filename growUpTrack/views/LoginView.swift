//
//  LoginView.swift
//  growUpTrack
//
//  Created by ZhaoLan on 2020/5/28.
//  Copyright © 2020 Lan. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject
    private var viewModel: LoginViewModel
    
    init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
         VStack {
                   Text("宝宝成长轨迹")
                       .fontWeight(.bold)
                       .font(.largeTitle)
                       .padding(.bottom, 100)
                   
                   VStack {
                       TextField("宝宝昵称", text: $viewModel.username)
                       Divider().frame(height: 1).padding(.horizontal, 30).background(Color.gray)
                       Text(viewModel.errorMessage)
                        .font(.caption)
                        .foregroundColor(Color.red)
                   }
                   .padding(.vertical, 50)
            
    
               
            CustomerButton(buttonText: "登入", action: {
                self.viewModel.loginButtonWasPressed()
            })}
               .padding()
               .foregroundColor(Color.orange)
               .background(
                   Image("background")
                       .resizable()
                       .scaledToFill())
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel())
    }
}
