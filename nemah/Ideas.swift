//
//  ContentView.swift
//  nemah
//
//  Created by Bsmah Ali on 24/03/1445 AH.
//

import SwiftUI

struct Ideas: View {
    @State private var index = 0
    var recipe: [String] = ["Group 7", "Group 8", "Group 17"]
    
    var body: some View {
        NavigationView{
        ZStack{
           
                VStack{
                    Text("Not Sure What to Cook?").font(.largeTitle).bold().padding(.top, 20.0)
                        .foregroundColor(.white)
                        .frame(width: 375)
                        .offset(x: -35)
                    
                    
                    //Recipes Image
                    TabView(selection: $index) {
                        ForEach((0..<3), id: \.self) { index in
                            
                            Image(recipe[index])
                                .resizable().frame(width: 315,height: 455)
                                .cornerRadius(30)
                                .overlay(
                                    
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color(#colorLiteral(red: 0.1630259752, green: 0.6882660985, blue: 0.5447278023, alpha: 1)), lineWidth: 2)
                                       
                            )
                        }
                    }
                    
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    VStack{
                        HStack(spacing: 7) {
                            ForEach((0..<3), id: \.self) { index in
                                Circle()
                                    .fill(index == self.index ? Color.white : Color.white.opacity(0.5))
                                    .frame(width: 10, height: 10)
                                
                            }
                        }
                        .padding()
                    }
                    
                    NavigationLink(destination: GenerateRecipes()) {
                                          
                        HStack{
                            Image(systemName: "wand.and.stars").resizable().padding(/*@START_MENU_TOKEN@*/.leading, 10.0/*@END_MENU_TOKEN@*/).frame(width: 30, height: 25).foregroundColor(.white)
                            Text("Generate Recipe").foregroundColor(.white)
                                .font(.system(size:22,weight: .bold, design: .monospaced))
                                .padding(/*@START_MENU_TOKEN@*/.trailing, 14.0/*@END_MENU_TOKEN@*/)
                        }
                        .padding()
                        .background(Color("Button"))
                        .cornerRadius(25)
                    }.padding(.bottom, 25.0)
                }
                
            }.background(Color("BG"))
            
            
        }
    }
}
#Preview {
    Ideas()
}
