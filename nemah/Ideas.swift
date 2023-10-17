//
//  ContentView.swift
//  nemah
//
//  Created by Bsmah Ali on 24/03/1445 AH.
//

import SwiftUI

struct Ideas: View {
    @State private var index = 0
    var recipe: [String] = ["Edaam", "Kabda", "Marasee"]
    
    var body: some View {
        NavigationView{
        ZStack{
           
                VStack{
                    Text("Not sure what do you what to cook?").font(.title).bold().padding(.top, 20.0)
                        .foregroundColor(.white)
                    
                    
                    //Recipes Image
                    TabView(selection: $index) {
                        ForEach((0..<3), id: \.self) { index in
                            
                            Image(recipe[index])
                                .resizable().frame(width: 303,height: 455)
                        }
                    }
                    //Carousel 000
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    HStack(spacing: 2) {
                        ForEach((0..<3), id: \.self) { index in
                            Circle()
                                .fill(index == self.index ? Color.white : Color.white.opacity(0.5))
                                .frame(width: 12, height: 12)
                            
                        }
                    }
                    .padding()
                    
                    NavigationLink(destination: GenerateRecipes()) {
                                          
                        HStack{
                            Image(systemName: "wand.and.stars").resizable().padding(/*@START_MENU_TOKEN@*/.leading, 10.0/*@END_MENU_TOKEN@*/).frame(width: 30, height: 25).foregroundColor(.white)
                            Text("Generate Recipe").foregroundColor(.white)
                                .font(.system(size:22,weight: .bold, design: .monospaced))
                                .padding(/*@START_MENU_TOKEN@*/.trailing, 14.0/*@END_MENU_TOKEN@*/)
                        }
                        .padding()
                        .background(Color("Button"))
                        .cornerRadius(20)
                    }.padding(.bottom, 25.0)
                }
                
            }.background(Color("BG"))
            
            
        }
    }
}
#Preview {
    Ideas()
}
