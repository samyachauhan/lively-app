//
//  Succulent.swift
//  plants
//
//  Created by Samya Chauhan on 1/8/23.
//

import SwiftUI

struct Succulent: View {
    @State private var plantNames = ["Stick"]
    @State private var waterIn = [0]
    @State private var rotateIn = [0]
    @State private var fertilizeIn = [25]
    @State private var amountToWater = ["3/4 Cup"]
    @State private var temperature = [71]
    @State private var moistureAmount = [4.6]
    @State private var image = "succulent"
        
    var body: some View {
        ZStack{
            Color.eggshellWhite.ignoresSafeArea()
            VStack(alignment:.center, spacing: 25){
                HStack(spacing:0){
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 450, height: 400)
                        .position(x: 2, y: -40)
                    Text("hi ")
                        .bold()
                        .font(.system(size: 60))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                        .frame(alignment: .trailing)
                        .padding(.trailing, 25)
                }
                HStack(spacing:0){
                    Spacer()
                    Text(plantNames[0] + "!")
                        .bold()
                        .font(.system(size: 60))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                        .frame(alignment: .trailing)
                        .padding(.trailing, 25)
                }
                HStack(spacing: 0){
                    ZStack (){
                        CircularProgressView(moisturePercent: moistureAmount[0]/100)
                            .scaleEffect(0.6)
                        Text("\(moistureAmount[0], specifier: "%.1f")%")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                            .bold()
                    }.frame(width: 200, height: 200).offset(x:-25)
                    VStack(alignment:.center){
                        Text("Water In:")
                            .offset(x:-58,y:-10)
                            .foregroundColor(.black)
                        Text("\(waterIn[0]) days (\(amountToWater[0]))")
                            .bold()
                            .foregroundColor(.black)
                            .offset(x: -58, y: -25)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.trailing)
                            .padding()
                    }
                }
                HStack(){
                    VStack{
                        Text("Rotate In:")
                            .foregroundColor(.black)
                        Text("\(rotateIn[0]) days")
                            .bold()
                            .foregroundColor(.black)
                            .offset(x: 0, y: -25)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.trailing)
                            .padding()
                        Text("Fertilize In:")
                            .foregroundColor(.black)
                        Text("\(fertilizeIn[0]) days")
                            .bold()
                            .offset(x: 0, y: -25)
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                            .padding()
                        Text("Temperature:")
                            .foregroundColor(.black)
                        HStack{
                            Text("\(temperature[0])")
                                .bold()
                                .foregroundColor(.black)
                            //   .offset(x: 0, y: -25)
                                .font(.system(size: 20))
                                .multilineTextAlignment(.trailing)
                            Text("o")
                                .bold()
                                .foregroundColor(.black)
                                .offset(x: -7.5, y: -8)
                                .font(.system(size: 10))
                                .multilineTextAlignment(.trailing)
                            Text("F")
                                .bold()
                                .foregroundColor(.black)
                                .offset(x: -12, y: 0)
                                .font(.system(size: 20))
                                .multilineTextAlignment(.trailing)
                        }
                    }
                    Image(image)
                        .resizable()
                        .frame(width: 250.0, height: 250.0)
                        .multilineTextAlignment(.center)
                        .offset(x: 0, y: 0)
                    }
            
                  
                Spacer()
                if (waterIn[0]>0 && rotateIn[0]>0 && fertilizeIn[0]>0){
                    Text("Looking Good!")
                        .bold()
                        .font(.system(size: 35))
                        .foregroundColor(.black)
                        .offset(y:-40)
                        .padding()
                }
                   
                    
                else if(
                    waterIn[0]==0 && rotateIn[0]==0 && fertilizeIn[0]==0 ||
                    waterIn[0]==0 && rotateIn[0]==0 ||
                    waterIn[0]==0 && fertilizeIn[0]==0 ||
                    waterIn[0]==0 && fertilizeIn[0]==0){
                    Text("Plant Care Needed!")
                        .bold()
                        .font(.system(size: 35))
                        .foregroundColor(.black)
                        .offset(y:-40)
                        .padding()
                }
                else if(waterIn[0]==0){
                    Text("Time to Water!")
                        .bold()
                        .font(.title2)
                        .offset(y:-40)
                        .foregroundColor(.black)
                        .padding()
                }
                else if(rotateIn[0]==0){
                    Text("Time To Rotate!")
                        .bold()
                        .font(.system(size: 35))
                        .offset(y:-40)
                        .foregroundColor(.black)
                        .padding()
                }
                else if(fertilizeIn[0]==0){
                    Text("Time to Fertilize!")
                        .bold()
                        .font(.system(size: 35))
                        .foregroundColor(.black)
                        .offset(y:-40)
                        .padding()
                }
            }.padding()
        }
    }
}

struct Succulent_Previews: PreviewProvider {
    static var previews: some View {
        Succulent()
    }
}
