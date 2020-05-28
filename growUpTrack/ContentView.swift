import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            VStack {
                TextField("宝宝昵称", text: $name)
                Divider().frame(height: 1).padding(.horizontal, 30).background(Color.gray)
            }
            .padding()
        
            CustomerButton(buttonText: "登入", action: {print("go to the home page")})
        }
    .padding()
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
