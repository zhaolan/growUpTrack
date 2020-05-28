import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Text("宝宝成长轨迹")
                .padding(.bottom, 200)
                .font(.title)
            
            VStack {
                TextField("宝宝昵称", text: $name)
                Divider().frame(height: 1).padding(.horizontal, 30).background(Color.gray)
            }
            .padding()
        
            CustomerButton(buttonText: "登入", action: {print("go to the home page")})
        }
        .padding()
        .foregroundColor(Color.orange)
        .background(
            Image("background")
                .resizable()
                .scaledToFill())
        }    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
