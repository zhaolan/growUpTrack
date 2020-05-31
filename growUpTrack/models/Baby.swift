import Foundation

struct Baby: Identifiable {
    var id: Int32
    var name: String
    var birthday: Date
    var babyevents: [BabyEvent]
}
