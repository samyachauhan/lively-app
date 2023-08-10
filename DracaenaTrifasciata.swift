//
//  DracaenaTrifasciata.swift
//  plants
//
//  Created by Samya Chauhan on 1/8/23.
//

import SwiftUI

struct DracaenaTrifasciata: View {
    @State private var plantNames = ["Elvis"]
    @State private var waterIn = [20]
    @State private var rotateIn = [20]
    @State private var fertilizeIn = [14]
    @State private var amountToWater = ["1/2 Cup"]
    @State private var temperature = [70]
    @State private var moistureAmount = [98.5]
    @State private var image = "dracaenaTrifasciata"

    
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
                        .foregroundColor(.black)
                        .font(.system(size: 60))
                        .multilineTextAlignment(.trailing)
                        .frame(alignment: .trailing)
                        .padding(.trailing, 25)
                }
                HStack(spacing:0){
                    Spacer()
                    Text(plantNames[0] + "!")
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 60))
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
                             .offset(x: -50, y: -25)
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
                            .foregroundColor(.black)
                            .bold()
                            .offset(x: 0, y: -25)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                            .padding()
                        Text("Temperature:")
                            .foregroundColor(.black)
                        HStack{
                            Text("\(temperature[0])")
                                .bold()
                             //   .offset(x: 0, y: -25)
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.trailing)
                            Text("o")
                                .bold()
                                .offset(x: -7.5, y: -8)
                                .font(.system(size: 10))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.trailing)
                            Text("F")
                                .bold()
                                .offset(x: -12, y: 0)
                                .font(.system(size: 20))
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(.black)
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
                        .foregroundColor(.black)
                        .font(.system(size: 35))
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
                        .foregroundColor(.black)
                        .font(.title2)
                        .offset(y:-40)
                        .padding()
                }
                else if(waterIn[0]==0){
                    Text("Time to Water!")
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 35))
                        .offset(y:-40)
                        .padding()
                }
                else if(rotateIn[0]==0){
                    Text("Time To Rotate!")
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 35))
                        .offset(y:-40)
                        .padding()
                }
                else if(fertilizeIn[0]==0){
                    Text("Time to Fertilize!")
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 35))
                        .offset(y:-40)
                        .padding()
                }
            }
                .padding()
        }
    }
}

struct DracaenaTrifasciata_Previews: PreviewProvider {
    static var previews: some View {
        DracaenaTrifasciata()
    }
}
