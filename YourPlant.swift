//
//  YourPlant.swift
//  lively
//
//  Created by Samya Chauhan
//

import SwiftUI
extension Color {
    static let linkGreen = Color(red: 22 / 255, green: 121 / 255, blue: 41 / 255)
}

struct YourPlant: View {
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
                    Text("Perfect Plants")
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 50))
                        .multilineTextAlignment(.trailing)
                        .frame(alignment: .trailing)
                        .padding(.trailing, 30)
                        .position(x:100, y:80)
                }
                HStack(){
                    Image("dragonTree")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .position(x:100, y:90)
                    Text("Janet Craig Dragon Tree")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .bold()
                            .position(x:35, y: 90)
                }
                HStack(){
                    Image("silverBay")
                        .resizable()
                        .frame(width: 125, height: 125)
                        .position(x:100, y:75)
                    Text("Silver Bay")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .bold()
                            .position(x:25, y: 75)
                }
                HStack(){
                    Image("fiddleLeafFigTree")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .position(x:100, y:50)
                    Text("Fiddle Leaf Fig Tree")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .bold()
                            .position(x:35, y: 50)
                }
                Link("Click to Purchase!", destination: URL(string: "https://bartonspringsnursery.com/")!)
                    .font(.system(size: 30))
                    .foregroundColor(.linkGreen)
            }
        }
    }
}

struct YourPlant_Previews: PreviewProvider {
    static var previews: some View {
        YourPlant()
    }
}
