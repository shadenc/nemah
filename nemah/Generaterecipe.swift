
//  SwiftUIView.swift
//  nemah
//
//  Created by Bsmah Ali on 24/03/1445 AH.
//

import SwiftUI

struct GenerateRecipes: View {
    @State private var isMeatsSheetPresented = false
    @State private var isFroutsSheetPresented = false
    @State private var isVeggiesSheetPresented = false
    @State private var isMilkSheetPresented = false
    @State private var isGrainsSheetPresented = false

    
    var body: some View {
    
        NavigationStack {
            ZStack{
                

                Color("BG").ignoresSafeArea()
                VStack(spacing: 20) {
                    VStack{
                    RoundedRectangle(cornerRadius: 20)
                    .fill(
                                                    
                 Color(#colorLiteral(red: 0.1923318505, green: 0.2245685756, blue: 0.2881854773, alpha: 1)))
                                            
                .frame(width: 349 ,height: 169 )
                .overlay {
                VStack{
                HStack{
                Spacer()
                RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(width: 59 ,height: 61 )
                .overlay(
                Image(systemName: "wand.and.stars")
                .font(.title)
                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.702395618, blue: 0.536053896, alpha: 1))))
                                                            Spacer()
                                                            
                Text("We’ll conjure a recipe from     your ingredients")
                .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
                Spacer()
                                                        }
                .padding(10)
                           
                    
                                                        
                Button(action: {})  { Label("Generate Recipe", systemImage: "wand.and.stars")
                                                            
                            .foregroundColor(Color(#colorLiteral(red: 0.7763370872, green: 1, blue: 0.8602109551, alpha: 1)))
                            .frame(width: 316, height: 55)
                            .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color(#colorLiteral(red: 0, green: 0.702395618, blue: 0.536053896, alpha: 1))))
                                                        }
                                                        
                                                        
                                                    }
                                                }
                                        }

                    VStack{
                                            HStack{
                                                Spacer(minLength: 10)
                                                
                                                
                                                Color(#colorLiteral(red: 0.1923318505, green: 0.2245685756, blue: 0.2881854773, alpha: 1))
                                                    .frame(height: 1 / UIScreen.main.scale)
                                                Spacer(minLength: 10)
                                            }
                                        }
                                        
                    ScrollView {
                        Button(action: {
                            isMeatsSheetPresented.toggle()
                            
                        }, label: {
                            ZStack {
                                
                                
                                Image("meat2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 349, height: 120)
                                    .cornerRadius(10)
                                    .shadow(radius: 22)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.clear, lineWidth: 10)
                                            .shadow(color:Color.black.opacity(1),radius: 5, x: 0, y: 4)
                                    )
                                
                                Text("Meats")
                                    .font(.system(size: 36, weight: .bold))
                                    .offset(x: -100)
                                    .foregroundColor(.white)
                                
                            }
                        })
                        
                        
                        .sheet(isPresented: $isMeatsSheetPresented, content: {
                            
                            NavigationStack{
                                ZStack{
                                    Color(red: 37.0 / 255.0, green: 43.0 / 255.0, blue: 57.0 / 255.0).ignoresSafeArea()
                                    

                                        ScrollView{
                                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10){
                                                Image("fish")
                                                Image("meat1")
                                                Image("chickin")
                                              
                                            }
                                        }
                                    VStack{
                                        HStack{
                                            Text("Meats")
                                                .font(.title2)
                                                .foregroundColor(.white)
                                
                                                .position(CGPoint(x: 50, y:-30))
                                            
                                            
                                        }
                                        
                                        
                                    }
                                }
                                
                        
                                .navigationBarTitleDisplayMode(.inline)
                                .toolbar{
                                    ToolbarItem(placement: .topBarTrailing) {
                                        Button("Done") {
                                            
                                            isMeatsSheetPresented.toggle()
                                        }
                                    }
                                }
                            }
                        })
                        
                        
                        
                        Button(action: {isFroutsSheetPresented.toggle()
                        }, label: {
                            ZStack {
                                Image("frout2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 349, height: 120)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.clear, lineWidth: 10)
                                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 4)
                                    )
                                Text("Frouts")
                                    .font(.system(size: 36, weight: .bold))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .offset(x: -240)
                            }
                        })
                        .sheet(isPresented: $isFroutsSheetPresented, content: {
                            
                            NavigationStack{
                                ZStack{
                                    Color(red: 37.0 / 255.0, green: 43.0 / 255.0, blue: 57.0 / 255.0).ignoresSafeArea()
                                    
                                    ScrollView{
                                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10){
                                            Image("apple")
                                            Image("Banana")
                                            Image("grab")
                                            Image("ja")
                                            Image("Redbary")
                                           
                                        }
                                    }

                                        ScrollView{
                                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10){
                                               
                                              
                                            }
                                        }
                                    VStack{
                                        HStack{
                                            Text("Frouts")
                                                .font(.title2)
                                                .foregroundColor(.white)
                                
                                                .position(CGPoint(x: 50, y:-30))
                                            
                                            
                                        }
                                        
                                        
                                    }
                                }
                                
                             
                                .navigationBarTitleDisplayMode(.inline)
                                .toolbar{
                                    ToolbarItem(placement: .topBarTrailing) {
                                        Button("Done") {
                                            
                                            isFroutsSheetPresented.toggle()
                                        }
                                    }
                                }
                            }
                            
                        })
                        
                        
                        
                        Button(action: {isVeggiesSheetPresented.toggle()},
                               label: {
                            ZStack {
                                Image("vigi2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 349, height: 120)
                                    .cornerRadius(10)
                                
                                Text("Vegetables")
                                    .font(.system(size: 36, weight: .bold))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .offset(x: -160)
                                
                            }
                        })
                        
                        .sheet(isPresented: $isVeggiesSheetPresented, content: {
                            NavigationStack{
                                ZStack{
                                    Color(red: 37.0 / 255.0, green: 43.0 / 255.0, blue: 57.0 / 255.0).ignoresSafeArea()
                                    

                                        ScrollView{
                                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10){
                                                Image("lim")
                                                Image("mal")
                                                Image("on")
                                                Image("pam")
                                                Image("pro")
                                                Image("qr")
                                                Image("tho")
                                                Image("Tom")
                                                Image("tom2")
                                                Image("ze")
                                            }
                                        }
                                    VStack{
                                        HStack{
                                            Text("Vegetables")
                                                .font(.title2)
                                                .foregroundColor(.white)
                                
                                                .position(CGPoint(x: 70, y:-30))
                                            
                                            
                                        }
                                        
                                        
                                    }
                                    
                                }
                                
                             
                                .navigationBarTitleDisplayMode(.inline)
                                .toolbar{
                                    ToolbarItem(placement: .topBarTrailing) {
                                        Button("Done") {
                                            
                                            isVeggiesSheetPresented.toggle()
                                        }
                                    }
                                }
                            }

                            
                            
                        })
                        
                        Button(action: {isMilkSheetPresented.toggle()}, label: {
                            ZStack {
                                Image("milk2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 349, height: 120)
                                    .cornerRadius(10)
                                
                                
                                Text("Milk and cheese")
                                    .font(.system(size: 36, weight: .bold))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .offset(x: -88)
                            }
                        })
                        .sheet(isPresented: $isMilkSheetPresented, content: {
                            NavigationStack{
                                ZStack{
                                    Color(red: 37.0 / 255.0, green: 43.0 / 255.0, blue: 57.0 / 255.0).ignoresSafeArea()
                                    

                                        ScrollView{
                                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10){
                                                Image("ch")
                                                Image("milk2 1")
                                                
                                              
                                            }
                                        }
                                    VStack{
                                        HStack{
                                            Text("Milk and Cheese")
                                                .font(.title2)
                                                .foregroundColor(.white)
                                
                                                .position(CGPoint(x: 99, y:-30))
                                            
                                            
                                        }
                                        
                                        
                                    }
                                }
                             
                                .navigationBarTitleDisplayMode(.inline)
                                .toolbar{
                                    ToolbarItem(placement: .topBarTrailing) {
                                        Button("Done") {
                                            
                                            isMilkSheetPresented.toggle()
                                        }
                                    }
                                }
                            }

                            
                            
                        })
                        
                        Button(action: {isGrainsSheetPresented.toggle()}, label: {
                            ZStack {
                                Image("grin2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 349, height: 120)
                                    .cornerRadius(10)
                                
                                
                                Text("Grains")
                                    .font(.system(size: 36, weight: .bold))
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .offset(x: -245)
                            }
                            
                            
                            
                        })
                    }
                .sheet(isPresented: $isGrainsSheetPresented, content: {
                    NavigationStack{
                        ZStack{
                            Color(red: 37.0 / 255.0, green: 43.0 / 255.0, blue: 57.0 / 255.0).ignoresSafeArea()
                            

                                ScrollView{
                                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10){
                                        Image("cor 1")
                                        Image("sh")
                                        Image("pin")
                                        Image("Rice")
                                        Image("ads")
                                    }
                                }
                            VStack{
                                HStack{
                                    Text("Grins")
                                        .font(.title2)
                                        .foregroundColor(.white)
                        
                                        .position(CGPoint(x: 45, y:-30))
                                    
                                    
                                }
                                
                                
                            }
                        }
                     
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar{
                            ToolbarItem(placement: .topBarTrailing) {
                                Button("Done") {
                                    
                                    isGrainsSheetPresented.toggle()
                                }
                            }
                        }
                    }

                    
                })
            }
        }
            }
        }
    }

#Preview {
    GenerateRecipes()
}

