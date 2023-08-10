//
//  Profile.swift
//  lively
//
//  Created by Samya Chauhan
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack{
            ZStack(){
                Color.eggshellWhite.ignoresSafeArea()
                VStack{
                    Text("Your Profile")
                        .font(.system(size: 55))
                        .bold()
                        .position(x:160, y:50)
                        .foregroundColor(.black)
                    Spacer()
                    HStack{
                        Image("profile")
                            .resizable()
                            .frame(width: 125, height: 125)
                            .position(x:75, y:15)
                        Text("Anne Fields")
                            .font(.system(size: 35))
                            .bold()
                            .position(x:35, y: 15)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    HStack{
                        Image("house")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .position(x:75, y:40)
                        Text("Busy Parent")
                            .font(.system(size: 30))
                            .bold()
                            .position(x:30, y: 40)
                            .foregroundColor(.black)
                    }
                    HStack{
                        Image("texas")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .position(x:75, y:30)
                        Text("Austin, TX")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .bold()
                            .position(x:20, y: 40)
                    }
                    HStack{
                        Image("clock")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .position(x:75, y:30)
                        Text("Busy Schedule")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .bold()
                            .position(x:50, y: 30)
                        
                    }
                }
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
