
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
                    
                    
                    
                    
                    Button(action: {
                        isMeatsSheetPresented.toggle()
                        
                    }, label: {
                        ZStack {
                            
                            //test
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
                        
                        IngredientsViewSheet(isMeatsSheetPresented: $isMeatsSheetPresented)
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
                    
                    ZStack{
                        Color(red: 37.0 / 255.0, green: 43.0 / 255.0, blue: 57.0 / 255.0).ignoresSafeArea()
                        
                        VStack {
                            
                            HStack{
                                Text("Frouts")
                                    .font(.system(size: 20)).bold()
                                    .foregroundColor(.white)
                                    .padding(.horizontal).position(CGPoint(x: 50, y: 30))
                                    Button(action: {
                                        isFroutsSheetPresented.toggle() // This dismisses the sheet when "Done" is tapped
                                                               }) {
                               Text("Done")
                              .foregroundColor(.blue)
                              .padding().position(CGPoint(x: 155, y: 25))
                                
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
                    ZStack{
                        Color(red: 37.0 / 255.0, green: 43.0 / 255.0, blue: 57.0 / 255.0).ignoresSafeArea()
                        
                        VStack {
                            
                            HStack{
                                Text("Vegetables")
                                    .font(.system(size: 25)).bold()
                                    .foregroundColor(.white)
                                    .padding(.horizontal).position(CGPoint(x: 80, y: 30))
                                    Button(action: {
                                        isVeggiesSheetPresented.toggle() // This dismisses the sheet when "Done" is tapped
                                                               }) {
                               Text("Done")
                              .foregroundColor(.blue)
                              .padding().position(CGPoint(x: 155, y: 25))
                                
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
                    ZStack{
                        Color(red: 37.0 / 255.0, green: 43.0 / 255.0, blue: 57.0 / 255.0).ignoresSafeArea()
                        
                        VStack {
                            
                            HStack{
                                Text("Milk and Cheese")
                                    .font(.system(size: 20)).bold()
                                    .foregroundColor(.white)
                                    .padding(.horizontal).position(CGPoint(x: 90, y: 30))
                                    Button(action: {
                                        isMilkSheetPresented.toggle() // This dismisses the sheet when "Done" is tapped
                                                               }) {
                               Text("Done")
                              .foregroundColor(.blue)
                              .padding().position(CGPoint(x: 155, y: 25))
                                
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
                .sheet(isPresented: $isGrainsSheetPresented, content: {
                    ZStack{
                        Color(red: 37.0 / 255.0, green: 43.0 / 255.0, blue: 57.0 / 255.0).ignoresSafeArea()
                        
                        VStack {
                            
                            HStack{
                                Text("Grains")
                                    .font(.system(size: 22)).bold()
                                    .foregroundColor(.white)
                                    .padding(.horizontal).position(CGPoint(x: 50, y: 30))
                                    Button(action: {
                                        isGrainsSheetPresented.toggle() // This dismisses the sheet when "Done" is tapped
                                                               }) {
                               Text("Done")
                              .foregroundColor(.blue)
                              .padding().position(CGPoint(x: 155, y: 25))
                                
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

