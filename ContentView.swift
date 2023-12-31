//
//  ContentView.swift
//  plants
//
//  Created by Samya Chauhan on 11/26/22.
//

import SwiftUI

struct CircularProgressView: View {
    var moisturePercent: Double
    var body: some View {
        ZStack () {
            Circle()
                .stroke(Color.blue.opacity(0.5), lineWidth: 30)
            Circle()
                .trim(from: 0, to: moisturePercent)
                .stroke(Color.blue, lineWidth: 30)
                .rotationEffect(.degrees(-90))
        }
    }
}

    
struct ContentView: View {
    @State private var plantNames = ["Fluffy"]
    @State private var waterIn = [3]
    @State private var rotateIn = [15]
    @State private var fertilizeIn = [30]
    @State private var amountToWater = ["1/2 Cup"]
    @State private var temperature = [68]
    @State private var moistureAmount = [54.3]
    
    
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
                        .multilineTextAlignment(.trailing)
                        .frame(alignment: .trailing)
                        .padding(.trailing, 25)
                }
                HStack(spacing:0){
                    Spacer()
                    Text(plantNames[0] + "!")
                        .bold()
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
                            .bold()
                    }.frame(width: 200, height: 200)
                    VStack(alignment:.center){
                        Text("Water In:")
                            .offset(x:-58,y:-10)
                        Text("\(waterIn[0]) days (\(amountToWater[0]))")
                            .bold()
                            .offset(x: -15, y: -25)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.trailing)
                            .padding()
                    }
                }
                HStack(){
                    VStack{
                        Text("Rotate In:")
                        Text("\(rotateIn[0]) days")
                            .bold()
                            .offset(x: 0, y: -25)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.trailing)
                            .padding()
                        Text("Fertilize In:")
                        Text("\(fertilizeIn[0]) days")
                            .bold()
                            .offset(x: 0, y: -25)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                            .padding()
                        Text("Temperature:")
                        HStack{
                            Text("\(temperature[0])")
                                .bold()
                            //   .offset(x: 0, y: -25)
                                .font(.system(size: 20))
                                .multilineTextAlignment(.trailing)
                            Text("o")
                                .bold()
                                .offset(x: -7.5, y: -8)
                                .font(.system(size: 10))
                                .multilineTextAlignment(.trailing)
                            Text("F")
                                .bold()
                                .offset(x: -12, y: 0)
                                .font(.system(size: 20))
                                .multilineTextAlignment(.trailing)
                        }
                    }
                    Image("monsteraDeliciosa")
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
                        .offset(y:-40)
                        .padding()
                }
                
                
                else if(
                    waterIn[0]==0 && rotateIn[0]==0 && fertilizeIn[0]==0 ||
                    waterIn[0]==0 && rotateIn[0]==0 ||
                    waterIn[0]==0 && fertilizeIn[0]==0 ||
                    waterIn[0]==0 && fertilizeIn[0]==0){
                    Text("Time For Some Serious Plant Care!")
                        .bold()
                        .font(.system(size: 35))
                        .offset(y:-40)
                        .padding()
                }
                else if(waterIn[0]==0){
                    Text("Time to Water!")
                        .bold()
                        .font(.system(size: 35))
                        .offset(y:-40)
                        .padding()
                }
                else if(rotateIn[0]==0){
                    Text("Time To Rotate!")
                        .bold()
                        .font(.system(size: 35))
                        .offset(y:-40)
                        .padding()
                }
                else if(fertilizeIn[0]==0){
                    Text("Time to Fertilize!")
                        .bold()
                        .font(.system(size: 35))
                        .offset(y:-40)
                        .padding()
                }
                
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
