//
//  BabyEventDetailView.swift
//  growUpTrack
//
//  Created by ZhaoLan on 2020/5/31.
//  Copyright © 2020 Lan. All rights reserved.
//

import SwiftUI

struct BabyEventDetailView: View {
    var babyEvent: BabyEvent
    
    var body: some View {
        VStack(alignment: .leading) {
          Text(babyEvent.description)
          Text(babyEvent.time.getFormattedDate(format: "YYYY-MM-D"))
      }
        .navigationBarTitle("成长轨迹详情", displayMode: .inline)
        .navigationBarHidden(false)
    }

}

struct BabyEventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BabyEventDetailView(babyEvent: BabyEvent(id: 1, babyId: 1, description: "吃饭", time: Date()))
    }
}
