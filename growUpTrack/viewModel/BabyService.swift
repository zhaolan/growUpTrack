import SwiftUI

class BabyService: ObservableObject {
    private var model: BabyTrack = BabyService.createBabyTrack()
    
    static func createBabyTrack() -> BabyTrack {
        BabyTrack(name: "小汤圆", birthday: Date())
    }
    
    var baby: Baby {
        return model.baby
    }
}
