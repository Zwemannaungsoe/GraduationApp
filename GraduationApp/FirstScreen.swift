//
//  FirstScreen.swift
//  GraduationApp
//
//  Created by cmAirS068 on 2025/11/12.
//

import SwiftUI

struct FirstScreen: View {
    var body: some View {
        VStack(spacing: 40){
            Spacer()
            Text("ようこそ")
                .font(.system(size: 48,weight: .bold))
            Image("image1")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
            
            Image("image2")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
            // 5. キャッチフレーズ
            Text("みんなで協力して家事をこなそう！")
                .font(.title3)
                .padding(.bottom, 50)
            Spacer() // 下部のスペースを確保
            
        }
        .padding()
    }
}

#Preview {
    FirstScreen()
}
