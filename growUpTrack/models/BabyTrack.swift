import Foundation


struct BabyTrack {
    var baby : Baby;
    
    init(name: String, birthday: Date) {
        baby = Baby(id: 1, name: name, birthday: birthday)
    }
}
