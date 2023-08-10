//
//  SignUpView.swift
//  lively
//
//  Created by Samya Chauhan on 4/15/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var text1: String = ""
    @State private var text2: String = ""
    @State private var text3: String = ""
    @State private var text4: String = ""
    @State private var text5: String = ""
    var body: some View {
        ZStack{
            Color.eggshellWhite.ignoresSafeArea()
            VStack(alignment:.center){
                Text("Welcome!")
                    .font(.system(size: 60))
                    .bold()
                    .frame(width:400, height:400)
                 //   .position(x:50, y:110)
            }
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                            .padding(20)
                        TextField(" First Name", text: $text1)
                            .frame(width: 350, height: 50, alignment: .leading)
                            .foregroundColor(.gray)
                            .overlay( RoundedRectangle(cornerRadius: 20) .stroke(Color.darkGreen))
                            .padding(-20)
                    }.frame(width: 400, height: 50, alignment: .leading).autocapitalization(.none).autocorrectionDisabled()
                }.padding(10)
                Spacer()
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "person")
                            .foregroundColor(.gray)
                            .padding(20)
                        TextField(" Last Name", text: $text1)
                            .frame(width: 350, height: 50, alignment: .leading)
                            .foregroundColor(.gray)
                            .overlay( RoundedRectangle(cornerRadius: 20) .stroke(Color.darkGreen))
                            .padding(-20)
                    }.frame(width: 400, height: 50, alignment: .leading).autocapitalization(.none).autocorrectionDisabled()
                }.padding(10)
                Spacer()
                
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
