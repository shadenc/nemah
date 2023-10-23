//
//  Recipe&ingredients.swift
//  nemah
//
//  Created by Bsmah Ali on 24/03/1445 AH.
//

import SwiftUI

struct RecipeIngredientsView: View {
    @State private var selection: Int = 0
//    init() {
//        //        UISegmentedControl.appearance().selectedSegmentTintColor = .green
//        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor:UIColor .black], for: .selected)
//        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor:UIColor .green], for: .normal
//        )
//    }
//    init() {
//        let colorAppearance = UISegmentedControl.appearance()
//        colorAppearance.backgroundColor = .red
//        colorAppearance.selectedSegmentTintColor = .blue
//        colorAppearance.tintColor = .green
//        colorAppearance.setTitleTextAttributes([.foregroundColor : UIColor.white], for: .normal)
//        colorAppearance.setDividerImage(
//            UIImage(),
//            forLeftSegmentState: .normal,
//            rightSegmentState: .normal,
//            barMetrics: .default
//        )
//
//    }
//    init() {
//        let colorAppearance = UISegmentedControl.appearance()
//        colorAppearance.backgroundColor = .red
//        colorAppearance.selectedSegmentTintColor = .blue
//        colorAppearance.tintColor = .green
//        colorAppearance.setTitleTextAttributes([.foregroundColor : UIColor.white], for: .normal)
//        colorAppearance.setDividerImage(
//            UIImage(),
//            forLeftSegmentState: .normal,
//            rightSegmentState: .normal,
//            barMetrics: .default
//        )
//
//    }

    var body: some View {
        NavigationView {
            ZStack{
                Color(#colorLiteral(red: 0.008782431483, green: 0.04830590636, blue: 0.1244747713, alpha: 1))
                    .ignoresSafeArea()
                
                VStack() {
                    Picker("Select a View",selection: $selection) {
                        Text("Recipes").tag(0)
                        .foregroundColor(.red)
                        
                        Text("Ingredients").tag(1)
                        
                    }
                  //


                    .pickerStyle(SegmentedPickerStyle())
                    .tint(Color.orange)
                    .padding()
                    
                    Spacer()
                    ScrollView{
                    if selection == 0 {
                        ZStack (alignment: .top){
                            Image("Group")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 369, height: 993)
                                .cornerRadius(15)
                                .overlay(
                                   
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color(#colorLiteral(red: 0.1630259752, green: 0.6882660985, blue: 0.5447278023, alpha: 1)), lineWidth: 4)
                                        .shadow(color: Color.black.opacity(5), radius:5,x: 0, y: 4)
                                    
                                        //.cornerRadius(15)
                                )
                            
                          //  LinearGradient(gradient: Gradient(colors: [.white.opacity(0.2), .black.opacity(0.9)]), startPoint: .top, endPoint: .bottom)
                            
                                
                                VStack(alignment: .leading){
                                 //   HStack{Spacer()}
                                 //   Spacer()
                                   Text("Kabsa")
                                     /*   .font(.title)
                                        .foregroundColor(.white)
                                        .bold()
                                        .padding(.leading, 19)*/
                
                                    
                                        .font(.system(size: 37, weight: .bold))
                                
                                        .offset(x: -30)
                                    
                                        .foregroundColor(.white)
                                        .padding(.leading, 19)
                                       .padding()
                                    
                                    Spacer()
                                    Text("Ingredients:")
                                        .foregroundColor(.color1)
                                        .bold()
                                        .font(.system(size: 24))
                                    
                                    Spacer()
                                    Text("1 onion, chopped")
                                    
                                    Text("1 tablespoon oil")
                                    Text("1 pound boneless, skinless chicken breasts, cut into bite-sized pieces")
                                    Text("1 teaspoon salt")
                                    Text("1/2 teaspoon black pepper")
                                    Text("1/4 teaspoon red pepper flakes")
                                    Text("1 (14.5 ounce) can diced tomatoes, undrained")
                                    Text("1 bay leaf")
                                    Text("2 cups water")
                                    Text("1 bouillon cube")
                                    Text("1 cup rice")
                                    
                                    
                                    Spacer()
                                    
                                    Text("Instructions:")
                                        .foregroundColor(.color1)
                                        .bold()
                                        .font(.system(size: 24))
                                    Spacer()
                                    Text("1. In a pot over medium heat, sauté the onion in oil until softened.")
                                    Text("2. Add the chicken, spices, and hot pepper to the pot and cook for 5 minutes, or until the chicken is browned.")
                                    Text("3. Add all remaining ingredients to the pot and bring to a boil.")
                                    Text("4. Reduce heat to low, cover the pot, and simmer for 25 minutes, or until the rice is cooked through.")
                                    Text("5. Serve immediately.")
                                    
                                    Spacer()
                                    Text("Tips:")
                                        .foregroundColor(.color1)
                                        .bold()
                                        .font(.system(size: 24))
                                   Spacer()
                                    Text("For a more flavorful dish, you can brown the chicken in a separate pan before adding it to the pot.")
                                    Text("You can also add other vegetables to the dish, such as carrots, potatoes, or peas.")
                                    
                                }.foregroundStyle(.white) .frame(width: 340).padding()
                               
                                
                            
                        }.foregroundStyle(.white) .frame(width: 350).padding()
                    } else {
                        IngredientsView()
                       /* ZStack(alignment: .top){
                            Image("Kabsa")
                                .resizable()
                                .frame(width: 369)
                                .overlay(
                                    Rectangle()
                                        .stroke(Color(#colorLiteral(red: 0.1630259752, green: 0.6882660985, blue: 0.5447278023, alpha: 1)), lineWidth: 4)
                                            .cornerRadius(15)?*/
                               // )
                            
                          //  LinearGradient(gradient: Gradient(colors: [.white.opacity(0.2), .black.opacity(0.9)]), startPoint: .top, endPoint: .bottom)
                            
                            }
                        }
                    }
                    
                }
            }
        .navigationBarBackButtonHidden(true)
        }
        
        
    }
    
    
    
    
    
    struct IngredientsView: View {
        var body: some View {
            
            //  ZStack {
            
            VStack {
                ZStack(alignment: .top){
                    Image("Chicken")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 361, height: 436)
                        .cornerRadius(15)
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(#colorLiteral(red: 0.1630259752, green: 0.6882660985, blue: 0.5447278023, alpha: 1)), lineWidth: 4)
                                .shadow(color: Color.black.opacity(5), radius:5,x: 0, y: 4)
                            
                            //.cornerRadius(15)
                        )
                    
                    //                            .resizable()
                    //                            .aspectRatio(contentMode: .fill)
                    //                            .frame(width: 361, height: 436)
                    //                            .cornerRadius(10)
                    //                            .shadow(radius: 22)
                    //                            .overlay(
                    //                                RoundedRectangle(cornerRadius: 10)
                    //                                    .stroke(Color.clear, lineWidth: 10)
                    //                                    .shadow(color:Color.black.opacity(1),radius: 5, x: 0, y: 4)
                    //                                    .frame(width: 369)
                    //                                    .overlay(
                    //                                        Rectangle()
                    //                                            .stroke(Color(#colorLiteral(red: 0.1630259752, green: 0.6882660985, blue: 0.5447278023, alpha: 1)), lineWidth: 4)
                    //                                            .cornerRadius(15)
                    //
                    //
                    //                                    )
                    //                            )
                    
                    Text("Chicken")
                        .font(.system(size: 36, weight: .bold))
                    // .font(.title)
                        .offset(x: -100)
                    
                        .foregroundColor(.white)
                        .padding(.leading, 19)
                        .padding()
                    VStack(alignment: .leading, spacing: 10) {
                       // Spacer()
                        
                        Text("How to store:")
                            .foregroundColor(.color1)
                            .bold()
                            .font(.system(size: 24)).padding(.top,100)
                        
                        
                        //.position(CGPoint(x: 39, y: 619))
                        Text("Cooked chicken Store airtight in the fridge for up to 3 days.Raw chicken Keep it in its original packaging or store it airtight in the fridge for up to 2 days.")
                        
                    //    Text("Raw chicken Keep it in its original packaging or store it airtight in the fridge for up to 2 days.")
                        
                        
                        Text("How to manage leftovers:").bold()
                            .font(.system(size: 24))
                            .foregroundColor(.color1)
                        Text("Leftover cooked chicken can be used in the same ways as fresh cooked chicken. It is important to reheat chicken thoroughly before eating.")
                    }.foregroundStyle(.white) .frame(width: 340).padding(.bottom)
                      // .padding(.leading,9)
                    
                }.foregroundStyle(.white) .frame(width: 350).padding()
                ZStack(alignment:.top){
                    Image("rice")
                    
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 361, height: 436)
                        .cornerRadius(15)
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(#colorLiteral(red: 0.1630259752, green: 0.6882660985, blue: 0.5447278023, alpha: 1)), lineWidth: 4)
                                .shadow(color: Color.black.opacity(5), radius:5,x: 0, y: 4)
                        )
                    
                    
                    Text("Rice")
                        .font(.system(size: 36, weight: .bold))
                    // .font(.title)
                        .offset(x: -100)
                    
                        .foregroundColor(.white)
                        .padding(.leading, -50)
                        .padding()
                    VStack(alignment: .leading, spacing: 10) {
                        //  Spacer()
                        
                        Text("How to store:")
                            .foregroundColor(.color1)
                            .bold()
                            .font(.system(size: 24)).padding(.top,100)
                        
                        
                        //.position(CGPoint(x: 39, y: 619))
                        Text("Cooked rice should be stored in an airtight container in the refrigerator for up to 3 days.")
                        
                        
                        
                        
                        
                        Text("How to manage leftovers:").bold()
                            .font(.system(size: 24))
                            .foregroundColor(.color1)
                        Text("Leftover cooked rice can be used in a variety of dishes, such as fried rice, rice pudding, and sushi. It can be frozen for up to 2 months.")
                    }.foregroundStyle(.white) .frame(width: 340).padding(.bottom)
                    
                }.foregroundStyle(.white) .frame(width: 350).padding(.bottom)
                
                ZStack(alignment: .top){
                    Image("tomato")
                    
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 361, height: 436)
                        .cornerRadius(15)
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(#colorLiteral(red: 0.1630259752, green: 0.6882660985, blue: 0.5447278023, alpha: 1)), lineWidth: 4)
                                .shadow(color: Color.black.opacity(5), radius:5,x: 0, y: 4)
                        )
                    Text("Tomatoes")
                        .font(.system(size: 36, weight: .bold))
                    // .font(.title)
                        .offset(x: -100)
                    
                        .foregroundColor(.white)
                        .padding(.leading, 40)
                        .padding()
                    VStack(alignment: .leading, spacing: 10) {
                        //Spacer()
                        
                        Text("How to store:")
                            .foregroundColor(.color1)
                            .bold()
                            .font(.system(size: 24)).padding(.top,100)
                        
                        
                        //.position(CGPoint(x: 39, y: 619))
                        Text("Store ripe tomatoes at room temperature for up to 3 days. Unripe tomatoes should ripen at room temperature, then move to the fridge for up to 2 days once ripe.")
                        
                        
                        
                        Text("How to manage leftovers:").bold()
                            .font(.system(size: 24))
                            .foregroundColor(.color1)
                        Text("Leftover tomatoes are versatile for salads, sauces, or canning. They store well in the fridge for up to 2 days.")
                    }.foregroundStyle(.white) .frame(width: 340).padding(.bottom)
                
                }.foregroundStyle(.white) .frame(width: 350).padding(.bottom)
                
                
                ZStack(alignment: .top){
                    Image("onion")
                    
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 361, height: 436)
                        .cornerRadius(15)
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(#colorLiteral(red: 0.1630259752, green: 0.6882660985, blue: 0.5447278023, alpha: 1)), lineWidth: 4)
                                .shadow(color: Color.black.opacity(5), radius:5,x: 0, y: 4)
                        )
                    Text("Onion")
                        .font(.system(size: 36, weight: .bold))
                    // .font(.title)
                        .offset(x: -100)
                    
                        .foregroundColor(.white)
                        .padding(.leading, -10)
                        .padding()
                    VStack(alignment: .leading, spacing: 10) {
                        //Spacer()
                        
                        Text("How to store:")
                            .foregroundColor(.color1)
                            .bold()
                            .font(.system(size: 24)).padding(.top,100)
                        
                        
                        //.position(CGPoint(x: 39, y: 619))
                        Text("Onions should be stored in a cool, dark place for up to 2 weeks.")
                        
                        
                        
                        Text("How to manage leftovers:").bold()
                            .font(.system(size: 24))
                            .foregroundColor(.color1)
                        Text("Use leftover onions in soups, stews.Options can also be pickled or frozen They last up to 2 weeks in the fridge.")
                    }.foregroundStyle(.white) .frame(width: 340).padding(.bottom)
                
                }.foregroundStyle(.white) .frame(width: 350).padding(.bottom)
                
          
//
//            ZStack(alignment: .top){
//                Image("onion")
//
//                    .resizable()
//                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                    .frame(width: 361, height: 436)
//                    .cornerRadius(15)
//                    .overlay(
//
//                        RoundedRectangle(cornerRadius: 10)
//                            .stroke(Color(#colorLiteral(red: 0.1630259752, green: 0.6882660985, blue: 0.5447278023, alpha: 1)), lineWidth: 4)
//                            .shadow(color: Color.black.opacity(5), radius:5,x: 0, y: 4)
//                    )
//
//                Text("Onion")
//                    .font(.system(size: 36, weight: .bold))
//                // .font(.title)
//                    .offset(x: -100)
//
//                    .foregroundColor(.white)
//                    .padding(.leading, 40)
//                    .padding()
//                VStack(alignment: .leading, spacing: 10) {
//                    // Spacer()
//
//                    Text("How to store:")
//                        .foregroundColor(.color1)
//                        .bold()
//                        .font(.system(size: 24)).padding(.top,100)
//
//
//                   // .position(CGPoint(x: 39, y: 619))
//                    Text("Onions should be stored in a cool, dark place for up to 2 weeks.").padding(.leading,-3)
//
//
//
//                    Text("How to manage leftovers:").bold()
//                        .font(.system(size: 24))
//                        .foregroundColor(.color1)
//
//                    Text("Use leftover onions in soups, stews, or pickling. They last up to 2 weeks in the fridge.").padding(.leading,-3)
//
//                }.foregroundStyle(.white) .frame(width: 340).padding(.bottom)
//
//            }.foregroundStyle(.white) .frame(width: 350).padding(.bottom)
        }
        }
                            }
                  //  }
       // }
  //  }

    
    #Preview {
        RecipeIngredientsView()
        
    }
