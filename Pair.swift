//
//  Pair.swift
//  lively
//
//  Created by Samya Chauhan
//

import SwiftUI


struct Pair: View {
    var body: some View {
        ZStack{
            Color.eggshellWhite.ignoresSafeArea()
            VStack(alignment:.center, spacing: 25){
                HStack(spacing:0){
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 450, height: 400)
                        .position(x:2, y: -40)
                    Spacer()
                    Text("Pair LiveStick")
                        .bold()
                        .font(.system(size: 47))
                        .multilineTextAlignment(.trailing)
                        .frame(alignment: .trailing)
                        .padding(.trailing, 10)
                        .position(x:75, y:70)
                        .foregroundColor(.black)
                }
            }
            VStack(alignment:.leading){
                Text("1. Push button on back of LiveStick")
                    .bold()
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .position(x:172, y:275)
                Text("2. Press the button below")
                    .bold()
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .position(x:125, y:75)
                Text("3. Insert LifeStick until logo just above soil")
                    .bold()
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .position(x:200, y:-125)
            }
      
            Text("Connect Device")
                .padding(35)
                .font(.system(size: 30))
                .background(.green)
                .clipShape(Capsule())
                .position(x:215, y:550)
        }
    }
}

struct Pair_Previews: PreviewProvider {
    static var previews: some View {
        Pair()
    }
}
