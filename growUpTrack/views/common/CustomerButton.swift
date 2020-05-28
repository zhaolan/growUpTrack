//
//  CustomerButton.swift
//  growUpTrack
//
//  Created by ZhaoLan on 2020/5/28.
//  Copyright © 2020 Lan. All rights reserved.
//

import SwiftUI

struct CustomerButton: View {
    var buttonText: String;
    var action: () -> Void = {}
    var color: Color = Color.orange
    var fontColor: Color = Color.white
    
    var body: some View {
        Button(action: self.action)
        {
            HStack {
                Text(self.buttonText)
                    .fontWeight(.semibold)
                    .font(.title)
            }
        }
        .buttonStyle(GradientBackgroundStyle(color: color, fontColor: fontColor))
    }
    
    struct GradientBackgroundStyle: ButtonStyle {
        var color: Color
        var fontColor: Color
     
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(self.fontColor)
                .background(LinearGradient(gradient: Gradient(colors: [self.color, Color.white]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
                .padding(.horizontal, 20)
        }
    }
}



struct CustomerButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomerButton(buttonText: "test")
    }
}
