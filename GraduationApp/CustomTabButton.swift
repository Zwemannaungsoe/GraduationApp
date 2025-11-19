//
//  CustomTabButton.swift
//  GraduationApp
//
//  Created by cmAirS068 on 2025/11/19.
//
import SwiftUI
struct CustomTabButton: View {
    let title: String
    let isActive: Bool
    let action: () -> Void
    
    var body: some View{
        Button(action: action){
            Text(title)
                .font(.body)
                .fontWeight(.medium)
                .foregroundColor(isActive ? .black : .gray)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .background(
                    RoundedRectangle(cornerRadius: 50)
                                            .fill(isActive ? Color.white : backgroundColor.opacity(0.1)) // 選択されたら白背景
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 50)
                                                    .stroke(isActive ? Color.gray.opacity(0.3) : Color.clear, lineWidth: isActive ? 1 : 0) // 選択されたボタンに枠線
                                            )
                    
                )
        }
    }
}
#Preview {
    //CustomTabButton()
}
