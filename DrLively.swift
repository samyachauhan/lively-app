//
//  DrLively.swift
//  lively
//
//  Created by Samya Chauhan 
//

import SwiftUI

struct DrLively: View {
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
                    Text("Healing")
                        .bold()
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                        .frame(alignment: .trailing)
                        .padding(.trailing, 30)
                        .position(x:100, y:80)
                }
                Image("dyingAzalea")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .position(x:200, y:125)
                Text("Healing Your Azalea, Cam")
                    .bold()
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                    .position(x:200, y:150)
                Text("1. Spread compost over root")
                    .bold()
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .position(x:200, y:100)
                Text("2. Add fertilizer over top of soil")
                    .bold()
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .position(x:200, y:0)
                Text("3. Water twice a week")
                    .bold()
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .position(x:200, y:-100)

            }
        }
    }
}

struct DrLively_Previews: PreviewProvider {
    static var previews: some View {
        DrLively()
    }
}
