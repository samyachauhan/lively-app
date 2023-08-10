//
//  fertilize.swift
//  lively
//
//  Created by Samya Chauhan
//

import SwiftUI

struct fertilize: View {
    var body: some View {
        ZStack{
            Color.eggshellWhite.ignoresSafeArea()
            VStack(alignment:.center, spacing: 25){
                HStack(spacing:0){
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 450, height: 400)
                        .position(x: 2, y: -40)
                    Spacer()
                    Text("Plants to Fertilize Today")
                        .bold()
                        .font(.system(size: 42))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                        .frame(alignment: .trailing)
                        .padding(.trailing, 30)
                        .position(x:100, y:80)
                }
                VStack{
                    NavigationLink(destination: Azalea()){
                        Image("azalea")
                            .resizable()
                            .frame(width: 125, height: 125)
                        Text("Cam")
                            .bold()
                            .foregroundColor(.black)
                            .font(.system(size: 35))
                            .multilineTextAlignment(.trailing)
                            .frame(alignment: .trailing)
                    }
                    NavigationLink(destination: Succulent()){
                        Image("succulent")
                            .resizable()
                            .frame(width: 125, height: 125)
                        Text("Stick")
                            .bold()
                            .foregroundColor(.black)
                            .font(.system(size: 35))
                            .multilineTextAlignment(.trailing)
                            .frame(alignment: .trailing)
                    }
                    NavigationLink(destination: Bamboo()){
                        Image("bamboo")
                            .resizable()
                            .frame(width: 125, height: 125)
                        Text("Tim")
                            .bold()
                            .foregroundColor(.black)
                            .font(.system(size: 35))
                            .multilineTextAlignment(.trailing)
                            .frame(alignment: .trailing)
                    }
                    NavigationLink(destination: Anthurium()){
                        Image("anthurium")
                            .resizable()
                            .frame(width: 125, height: 125)
                        Text("Drake")
                            .bold()
                            .foregroundColor(.black)
                            .font(.system(size: 35))
                            .multilineTextAlignment(.trailing)
                            .frame(alignment: .trailing)
                    }
                }
            }
        }
    }
}

struct fertilize_Previews: PreviewProvider {
    static var previews: some View {
        fertilize()
    }
}
