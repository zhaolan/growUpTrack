//
//  LabelTextField.swift
//  growUpTrack
//
//  Created by ZhaoLan on 2020/5/28.
//  Copyright © 2020 Lan. All rights reserved.
//

import SwiftUI

struct LabelTextField: View {
    @Binding var value: String
    var placeholder: String = ""
    var errorMessage: String = ""
    
    var body: some View {
        VStack() {
            TextField(self.placeholder, text: $value)
            Divider().frame(height: 1).padding(.horizontal, 30).background(Color.gray)
            Text(self.errorMessage)
               .font(.caption)
               .foregroundColor(Color.red)
          }
    }
}
