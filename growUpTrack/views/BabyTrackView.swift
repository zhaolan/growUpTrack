import SwiftUI

struct BabyTrackView: View {
    var viewModel: BabyService = BabyService()
    
    var body: some View {
        ScrollView() {
            VStack {
                babyBasicInfo
                Divider().frame(height: 1).padding(.horizontal, 30).background(Color.gray)
            }
            .padding()
            .foregroundColor(Color.orange)
        }
    }
    
    var babyBasicInfo: some View {
        HStack {
            ZStack {
                Circle().frame(width: 100, height: 100)
                Text(viewModel.baby.name).foregroundColor(Color.white)
            }
            Text("生日：\(viewModel.baby.birthday)")
        }
        
    }
}

struct BabyTrackView_Previews: PreviewProvider {
    static var previews: some View {
        BabyTrackView()
    }
}
