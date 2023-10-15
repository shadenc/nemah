//
//  IngrdiensViewSheet.swift
//  nemah
//
//  Created by sarah alothman on 30/03/1445 AH.
//

import SwiftUI


struct IngredientsViewSheet: View {
    @Binding var isMeatsSheetPresented: Bool
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 37.0 / 255.0, green: 43.0 / 255.0, blue: 57.0 / 255.0).ignoresSafeArea()
                
//                VStack {
                    ScrollView{
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10){
                            Image("fish")
                            Image("meat1")
                            Image("fish")
                            Image("meat1")
                            Image("fish")
                            Image("meat1")
                            Image("fish")
                            Image("meat1")
                        }
                    }
                   // Spacer()
                    
                    
                //}
                
            }
            .navigationTitle("Meals")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        
                    }
                }
            }
        }
    }
}
#Preview {
    IngredientsViewSheet(isMeatsSheetPresented: .constant(true))
}
