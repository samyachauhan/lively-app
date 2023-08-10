//
//  Login.swift
//  lively
//
//  Created by Samya Chauhan 
//

import SwiftUI

struct Login: View {
    @State private var text1: String = ""
    @State private var text2: String = ""
    @State private var username: String = "anne-fields"
    @State private var password: String = "plantwithlively"

    var body: some View {
        NavigationView{
            ZStack{
                Color.eggshellWhite.ignoresSafeArea()
                VStack{
                    VStack(alignment: .trailing){
                        Image("topOfLoginScreen")
                            .resizable()
                            .frame(width:400, height:400)
                            .position(x:350)
                    }
                    VStack{
                        Text("Login")
                            .foregroundColor(.black)
                            .font(.system(size: 45, weight: .heavy))
                            .bold()
                            .frame(width: 350, height: 50, alignment: .leading)
                        Text("Please Sign In To Continue")
                            .font(.system(size: 25, weight: .semibold))
                            .foregroundColor(.gray)
                            .frame(width: 350, alignment: .leading)
                    }.padding(30)
                    VStack{
                        HStack{
                            Image(systemName: "person")
                                .foregroundColor(.gray)
                                .padding(20)
                            TextField(" ", text: $text1)
                                .frame(width: 350, height: 50, alignment: .leading)
                                .foregroundColor(.gray)
                                .overlay( RoundedRectangle(cornerRadius: 20) .stroke(Color.darkGreen))
                                .padding(-20)
                        }.frame(width: 400, height: 50, alignment: .leading).autocapitalization(.none).autocorrectionDisabled()
                    }.padding(10)
                    VStack{
                        HStack{
                            Image(systemName: "lock")
                                .foregroundColor(.gray)
                                .padding(20)
                            SecureField(" ", text: $text2)
                                .frame(width: 350, height: 50, alignment: .leading)
                                .foregroundColor(.gray)
                                .overlay( RoundedRectangle(cornerRadius: 20) .stroke(Color.darkGreen))
                                .padding(-20)
                        }.frame(width: 400, height: 50, alignment: .leading).autocapitalization(.none).autocorrectionDisabled()
                    }.padding(10)
                    
                    VStack{
                        NavigationLink(destination: Menu())
                        {
                            Image(systemName: "bolt.fill")
                            Text("LOGIN")
                                .font(.system(size: 25, weight: .semibold))
                                .foregroundColor(Color.white)
                        }.padding(10.0).background(Color.darkGreen)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .foregroundColor(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0)
                        )
                    }.frame(width: 390, height: 50, alignment: .trailing)
                    
                    VStack{
                        Text("Don't have an account?")
                        NavigationLink(destination: Dashboard())
                        {
                            Text("Sign Up!")
                                .font(.system(size: 25, weight: .semibold))
                                .foregroundColor(.darkGreen)
                        }
                    }.frame(maxHeight: .infinity, alignment: .bottom)
                }
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
