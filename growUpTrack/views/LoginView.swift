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

           LabelTextField(value: $viewModel.username, placeholder: "宝宝昵称", errorMessage: viewModel.errorMessage)
            .padding(.vertical, 50)
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
            .navigate(to: BabyTrackView(), when: $viewModel.isLoginSuccess)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel())
    }
}
