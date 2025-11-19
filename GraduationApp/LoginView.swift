//
//  LoginView.swift
//  GraduationApp
//
//  Created by cmAirS068 on 2025/11/19.
//

import SwiftUI

let backgroundColor = Color(red: 0.9, green: 0.88, blue: 0.95)

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isLoginActive: Bool = true //　ログイン/新規登録のタイプ選択状態
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0){
                Spacer()
                
                Image("image1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding(.top, 50)
                
                //catch phrase
                Text("みんなで協力して家事をこなそう！")
                    .font(.title3)
                    .padding(.top, 20)
                
                //ログイン/新規登録のタブボタン
                HStack(spacing: 0){
                    //ログインボタン
                    CustomTabButton(title: "ログイン", isActive: isLoginActive){
                        isLoginActive = true
                    }
                    //新規登録ボタン
                    CustomTabButton(title: "新規ボタン登録", isActive: !isLoginActive){
                        isLoginActive = false
                    }
                }
                .padding(.horizontal, 38)
                .padding(.vertical, 25)
                
                VStack(alignment: .leading, spacing: 20){
                    Text("ログインまたは新規登録してください")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text("メールアドレス")
                            .font(.caption)
                        
                        TextField("" , text: $email)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                
                            )
                    }
                    //password入力form
                    VStack(alignment: .leading, spacing: 5)
                    {
                        Text("パスワード")
                            .font(.caption)
                        SecureField("", text: $password)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                            )
                        
                    }
                    //login button
                    Button(action: {
                        
                    }){
                        Text("ログイン")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    .padding(.top, 10)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
