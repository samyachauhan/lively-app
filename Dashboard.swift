//
//  Dashboard.swift
//  plants
//
//  Created by Samya Chauhan 
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        ZStack(){
            Color.eggshellWhite.ignoresSafeArea()
            VStack(){
                HStack(alignment:.center){
                    Image("Lively")
                        .resizable()
                        .frame(alignment: .topLeading)
                        .frame(width: 175, height: 175)                     
                }
                
                HStack{
                    NavigationLink(destination: Dieffenbachia()){
                        Image("dieffenbachia")
                              .resizable()
                              .frame(width: 100, height: 100)
                    }
                    NavigationLink(destination: Azalea()){
                        Image("azalea")
                              .resizable()
                              .frame(width: 100, height: 100)
                              .offset(y:-5)
                    }
                    NavigationLink(destination: DracaenaTrifasciata()){
                        Image("dracaenaTrifasciata")
                              .resizable()
                              .frame(width: 100, height: 100)
                    }
                }
                Rectangle()
                    .fill(.brown)
                    .frame(width:600, height:10)
                    .offset(y:-20)
                HStack{
                    NavigationLink(destination: FicusLyrata()){
                        Image("ficusLyrata")
                              .resizable()
                              .frame(width: 100, height: 100)
                    }
                    NavigationLink(destination: Succulent()){
                        Image("succulent")
                              .resizable()
                              .frame(width: 100, height: 100)
                              .offset(y:10)
                    }
                    NavigationLink(destination: MonsteraDeliciosa()){
                        Image("monsteraDeliciosa")
                              .resizable()
                              .frame(width: 100, height: 100)
                    }
                }
                Rectangle()
                    .fill(.brown)
                    .frame(width:600, height:10)
                    .offset(y:-20)
                HStack{
                    NavigationLink(destination: Marigold()){
                        Image("marigold")
                              .resizable()
                              .frame(width: 100, height: 100)
                              .offset(y:-5)
                    }
                    NavigationLink(destination: Anthurium()){
                        Image("anthurium")
                              .resizable()
                              .frame(width: 100, height: 100)
                    }
                    NavigationLink(destination: Bamboo()){
                        Image("bamboo")
                              .resizable()
                              .frame(width: 100, height: 100)
                              .offset(y:-4)
                    }
                }
                Rectangle()
                    .fill(.brown)
                    .frame(width:600, height:10)
                    .offset(y:-20)
                HStack{
                    NavigationLink(destination: Chrysanthemum()){
                        Image("chrysanthemum")
                              .resizable()
                              .frame(width: 100, height: 100)
                    }
                    NavigationLink(destination: AloeVera()){
                        Image("aloeVera")
                              .resizable()
                              .frame(width: 100, height: 100)
                    }
                    NavigationLink(destination: DracaenaMarginata()){
                        Image("dracaenaMarginata")
                              .resizable()
                              .frame(width: 100, height: 100)
                              .offset(y:-10)
                    }
                }
                Rectangle()
                    .fill(.brown)
                    .frame(width:600, height:10)
                    .offset(y:-20)
                VStack{
                    HStack{
                        NavigationLink(destination: PhalaenopsisOrchid()){
                            Image("phalaenopsisOrchid")
                                  .resizable()
                                  .frame(width: 100, height: 100)
                                  .offset(y:0)
                        }
                        NavigationLink(destination: Clematis()){
                            Image("clematis")
                                  .resizable()
                                  .frame(width: 100, height: 100)
                                  .offset(y:10)
                        }
                        NavigationLink(destination: Dahlia()){
                            Image("dahlia")
                                  .resizable()
                                  .frame(width: 100, height: 100)
                        }
                    }
                    Rectangle()
                        .fill(.brown)
                        .frame(width:600, height:10)
                        .offset(y:-20)
                }
            }
        }
            
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
