//
//  Menu.swift
//  lively
//
//  Created by Samya Chauhan
//

import SwiftUI
extension Color {
    static let lightBlue = Color(red: 152 / 255, green: 210 / 255, blue: 235 / 255)
    static let darkBlue = Color(red: 34 / 255, green: 116 / 255, blue: 165 / 255)
    static let lightBrown = Color(red: 225 / 255, green: 200 / 255, blue: 175 / 255)
    static let darkBrown = Color(red: 155 / 255, green: 120 / 255, blue: 116 / 255)
    static let lightYellow = Color(red: 255 / 255, green: 255 / 255, blue: 150 / 255)
    static let darkYellow = Color(red: 241 / 255, green: 196 / 255, blue: 15 / 255)
    static let lightGreen = Color(red: 68 / 255, green: 161 / 255, blue: 160 / 255)
    static let darkGreen = Color(red: 38 / 255, green: 169 / 255, blue: 108 / 255)
    static let lightGrey = Color(red: 191 / 255, green: 215 / 255, blue: 234 / 255)
    static let darkGrey = Color(red: 145 / 255, green: 175 / 255, blue: 193 / 255)
    static let lightPurple = Color(red: 173 / 255, green: 178 / 255, blue: 211 / 255)
    static let darkPurple = Color(red: 156 / 255, green: 124 / 255, blue: 165 / 255)
    static let eggshellWhite = Color(red: 232 / 255, green: 232 / 255, blue: 220 / 255)
    
}

struct Menu: View {
    var body: some View {
        NavigationView{
            ZStack(){
                Color.eggshellWhite.ignoresSafeArea()
                VStack(){
                    Text("Welcome,")
                        .font(.system(size: 60))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x:24, y:-50)
                        .foregroundColor(.black)
                    HStack{
                    Text("Anne!")
                        .font(.system(size: 60))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x:25, y:-90)
                        .foregroundColor(.black)
                    NavigationLink(destination: Profile()){
                        Image("profile")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .offset(x:-30, y:-100)
                        }
                    }
                    Text("Today's Tasks")
                        .font(.system(size: 30))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x:25, y:-40)
                        .foregroundColor(.black)
                    HStack{
                        VStack (alignment: .leading){
                            ZStack{
                                NavigationLink(destination: water()){
                                    HStack()
                                    {
                                        
                                        Image("waterTransparent")
                                            .font(.title)
                                            .frame(width:75, height:75)
                                    }
                                    .padding()
                                    
                                }
                            }.offset(x:10)
                            ZStack{
                                NavigationLink(destination: fertilize()){
                                    HStack
                                    {
                                        /*Image("fertilize")
                                            .font(.title)
                                            .frame(width:75, height:75)*/
                                        
                                        Image("fertilizeTransparent")
                                            .font(.title)
                                            .frame(width:75, height:75)
                                    }
                                    .padding()
                                  
                                }
                            }.offset(x:10, y:10)
                            ZStack{
                                NavigationLink(destination: rotate()){
                                    HStack
                                    {
                                        /*Image("rotate")
                                            .font(.title)
                                            .frame(width:75, height:75)*/
                                        Image("sunTransparent")
                                            .font(.title)
                                            .frame(width:75, height:75)
                                    }
                                    .padding()
                                
                                }
                            }.offset(x:10, y:30)
                        }
                        NavigationLink(destination: Dashboard()){
                            Image("mainPage")
                                .resizable()
                                .frame(width:275, height:275)
                        }
                    }.offset(x:5, y:-40)
              
                    HStack{
                        NavigationLink(destination: DrLively()){
                            Image(systemName: "heart.fill")
                                .foregroundColor(.darkGreen)
                                .font(.system(size: 25))
                        }
                        NavigationLink(destination: Dashboard()){
                            Image("menuGreenLogo")
                                .resizable()
                                .frame(width:75, height:60)
                                .offset(y:3)
                        }
                        NavigationLink(destination: YourPlant()){
                            Image(systemName: "map.fill")
                                .foregroundColor(.darkGreen)
                                .font(.system(size: 25))

                        }
                    }.offset(y:65)
                }
            }
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
