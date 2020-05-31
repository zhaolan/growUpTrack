import SwiftUI

struct BabyTrackView: View {
    var viewModel: BabyService = BabyService()
    
    var body: some View {
        VStack(alignment: .leading) {
            babyBasicInfo
            Divider().frame(height: 1).padding(.horizontal, 30).background(Color.gray)
            
            if (viewModel.baby.babyevents.isEmpty) {
                Text("宝宝目前没有活动记录")
            } else {
                ScrollView() {
                    ForEach(viewModel.baby.babyevents) { babyevent in
                       BabyEventItemView(babyEvent: babyevent)
                    }
                }
            }
        }
        .padding()
        .foregroundColor(Color.orange)
    }
    
    var babyBasicInfo: some View {
        let birthday = viewModel.baby.birthday.getFormattedDate(format: "MM月DD日")
        return HStack {
            ZStack {
                Circle().frame(width: 100, height: 100)
                Text(viewModel.baby.name).foregroundColor(Color.white)
            }
            .frame(alignment: .topLeading)
            Text("生日：\(birthday)")
            Image(systemName: "square.and.pencil")
                .font(.system(size: 30, weight: .bold))
                .frame(alignment: .topTrailing)
        }
        
    }
}

struct BabyTrackView_Previews: PreviewProvider {
    static var previews: some View {
        BabyTrackView()
    }
}
