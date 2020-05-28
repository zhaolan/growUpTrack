//
//  ContentView.swift
//  growUpTrack
//
//  Created by ZhaoLan on 2020/5/27.
//  Copyright © 2020 Lan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    var body: some View {
        VStack {
            VStack {
                TextField("宝宝昵称", text: $name)
                Divider().frame(height: 1).padding(.horizontal, 30).background(Color.gray)
            }
            .padding()
            Button(action: {
                print("go to the home page")
            })
            {
                HStack {
                    Text("登入")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())

        }
    .padding()
    }

    
    struct GradientBackgroundStyle: ButtonStyle {
     
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(Color.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.white]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
                .padding(.horizontal, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
