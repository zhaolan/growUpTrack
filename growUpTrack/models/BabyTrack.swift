import Foundation


struct BabyTrack {
    var baby : Baby;
    
    init(name: String, birthday: Date) {
        var babyevents: [BabyEvent] = Array<BabyEvent>()
        let babyId: Int32 = 1
        
        babyevents.append(BabyEvent(id: 1, babyId: babyId, description: "吃饭", time: Date()))
        babyevents.append(BabyEvent(id: 2, babyId: babyId, description: "睡觉", time: Date()))
        babyevents.append(BabyEvent(id: 3, babyId: babyId, description: "学习", time: Date()))
        babyevents.append(BabyEvent(id: 4, babyId: babyId, description: "第一次说话", time: Date()))

        baby = Baby(id: babyId, name: name, birthday: birthday, babyevents: babyevents)
    }
}
