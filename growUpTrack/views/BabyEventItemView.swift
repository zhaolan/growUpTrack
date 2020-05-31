//
//  BabyEventItemView.swift
//  growUpTrack
//
//  Created by ZhaoLan on 2020/5/28.
//  Copyright © 2020 Lan. All rights reserved.
//

import SwiftUI

struct BabyEventItemView: View {
    var babyEvent: BabyEvent
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(babyEvent.description)
                Text(babyEvent.time.getFormattedDate(format: "YYYY-MM-D"))
            }
            .frame(alignment: .topLeading)
            .padding()
            Divider().frame(height: 1).padding(.horizontal, 30).background(Color(UIColor.lightGray))
        }
        
         
    }
}

struct BabyEventItemView_Previews: PreviewProvider {
    static var previews: some View {
        BabyEventItemView(babyEvent: BabyEvent(id: 1, babyId: 1, description: "吃饭", time: Date()))
    }
}
