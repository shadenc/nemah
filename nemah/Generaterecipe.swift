
import SwiftUI

struct Ingredient: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    var isSelected: Bool = false
}
struct GenerateRecipes: View {
    @State private var isMeatsSheetPresented = false
    @State private var isFroutsSheetPresented = false
    @State private var isVeggiesSheetPresented = false
    @State private var isMilkSheetPresented = false
    @State private var isGrainsSheetPresented = false
    
    @State var selectedIngredients: Set<UUID> = []
    @State var ingredientsDataMeat = [
        Ingredient(name: "Fish", imageName: "fish"),
        Ingredient(name: "meat1", imageName: "meat1"),
        Ingredient(name: "Chicken", imageName: "chickin")
    ]
    
    @State var ingredientsDataFrouts = [
        Ingredient(name: "apple", imageName: "apple"),
        Ingredient(name: "Banana", imageName: "Banana"),
        Ingredient(name: "grab", imageName: "grab"),
        Ingredient(name: "ja", imageName: "ja"),
        Ingredient(name: "Redbary", imageName: "Redbary"),
    ]
    
    @State var ingredientsDataVeg = [
        Ingredient(name: "lim", imageName: "lim"),
        Ingredient(name: "mal", imageName: "mal"),
        Ingredient(name: "on", imageName: "on"),
        Ingredient(name: "pam", imageName: "pam"),
        Ingredient(name: "pro", imageName: "pro"),
        Ingredient(name: "qr", imageName: "qr"),
        Ingredient(name: "tho", imageName: "tho"),
        Ingredient(name: "Tom", imageName: "Tom"),
        Ingredient(name: "tom2", imageName: "tom2"),
        Ingredient(name: "ze", imageName: "ze")
    ]
    
    
    @State var ingredientsDataMilk = [
        Ingredient(name: "ch", imageName: "ch"),
        Ingredient(name: "milk2 1", imageName: "milk2 1")
    ]
    
    
    
    @State var ingredientsDataGrains = [
        Ingredient(name: "cor 1", imageName: "cor 1"),
        Ingredient(name: "sh", imageName: "sh"),
        Ingredient(name: "pin", imageName: "pin"),
        Ingredient(name: "Rice", imageName: "Rice"),
        Ingredient(name: "ads", imageName: "ads")
    ]
    
    
    @State var selectedIngredientsDicMeat: [UUID: Bool] = [:]
    let columnsM: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State var selectedIngredientsDicFrouts: [UUID: Bool] = [:]
    let columnsF: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State var selectedIngredientsDicVeg: [UUID: Bool] = [:]
    let columnsV: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State var selectedIngredientsDicMilk: [UUID: Bool] = [:]
    let columnsMK: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State var selectedIngredientsDicGrains: [UUID: Bool] = [:]
    let columnsG: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
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
                                        LazyVGrid(columns: columnsM, spacing: 10) {
                                            ForEach(ingredientsDataMeat) { ingredient in
                                                Image(ingredient.imageName)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .overlay(alignment: .bottomTrailing) {
                                                        ZStack {
                                                            Circle()
                                                                .stroke(.white, lineWidth: 2)
                                                                .frame(width: 28)
                                                            
                                                            
                                                            if selectedIngredientsDicMeat[ingredient.id] ?? false {
                                                                Circle()
                                                                    .foregroundColor(.blue)
                                                                    .frame(width: 20)
                                                                
                                                                Image(systemName: "checkmark")
                                                                    .foregroundColor(.white)
                                                            }
                                                        }
                                                    }
                                                    .onTapGesture {
                                                        withAnimation(.spring()) {
                                                            
                                                            self.selectedIngredientsDicMeat[ingredient.id]?.toggle()
                                                            
                                                            
                                                        }
                                                    }
                                            }
                                        }
                                        .padding(.horizontal, 30)
                                        
                                        
                                        
                                    }
                                    .onAppear{
                                        self.ingredientsDataMeat.forEach { ing in
                                            
                                            self.selectedIngredientsDicMeat[ing.id] = false
                                            print(selectedIngredientsDicMeat[ing.id])
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
                                        LazyVGrid(columns: columnsF, spacing: 10) {
                                            ForEach(ingredientsDataFrouts) { ingredient in
                                                Image(ingredient.imageName)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .overlay(alignment: .bottomTrailing) {
                                                        ZStack {
                                                            Circle()
                                                                .stroke(.white, lineWidth: 2)
                                                                .frame(width: 28)
                                                            
                                                            
                                                            if selectedIngredientsDicFrouts[ingredient.id] ?? false {
                                                                Circle()
                                                                    .foregroundColor(.blue)
                                                                    .frame(width: 20)
                                                                
                                                                Image(systemName: "checkmark")
                                                                    .foregroundColor(.white)
                                                            }
                                                        }
                                                    }
                                                    .onTapGesture {
                                                        withAnimation(.spring()) {
                                                            
                                                            self.selectedIngredientsDicFrouts[ingredient.id]?.toggle()
                                                            
                                                            
                                                        }
                                                    }
                                            }
                                        }
                                        .padding(.horizontal, 30)
                                        
                                        
                                        
                                    }
                                    .onAppear{
                                        self.ingredientsDataFrouts.forEach { ing in
                                            
                                            self.selectedIngredientsDicFrouts[ing.id] = false
                                            print(selectedIngredientsDicFrouts[ing.id])
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
                                        LazyVGrid(columns: columnsV, spacing: 10) {
                                            ForEach(ingredientsDataVeg) { ingredient in
                                                Image(ingredient.imageName)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .overlay(alignment: .bottomTrailing) {
                                                        ZStack {
                                                            Circle()
                                                                .stroke(.white, lineWidth: 2)
                                                                .frame(width: 28)
                                                            
                                                            
                                                            if selectedIngredientsDicVeg[ingredient.id] ?? false {
                                                                Circle()
                                                                    .foregroundColor(.blue)
                                                                    .frame(width: 20)
                                                                
                                                                Image(systemName: "checkmark")
                                                                    .foregroundColor(.white)
                                                            }
                                                        }
                                                    }
                                                    .onTapGesture {
                                                        withAnimation(.spring()) {
                                                            
                                                            self.selectedIngredientsDicVeg[ingredient.id]?.toggle()
                                                            
                                                            
                                                        }
                                                    }
                                            }
                                        }
                                        .padding(.horizontal, 30)
                                        
                                        
                                        
                                    }
                                    .onAppear{
                                        self.ingredientsDataVeg.forEach { ing in
                                            
                                            self.selectedIngredientsDicVeg[ing.id] = false
                                            print(selectedIngredientsDicVeg[ing.id])
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
                                        LazyVGrid(columns: columnsMK, spacing: 10) {
                                            ForEach(ingredientsDataMilk) { ingredient in
                                                Image(ingredient.imageName)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .overlay(alignment: .bottomTrailing) {
                                                        ZStack {
                                                            Circle()
                                                                .stroke(.white, lineWidth: 2)
                                                                .frame(width: 28)
                                                            
                                                            
                                                            if selectedIngredientsDicMilk[ingredient.id] ?? false {
                                                                Circle()
                                                                    .foregroundColor(.blue)
                                                                    .frame(width: 20)
                                                                
                                                                Image(systemName: "checkmark")
                                                                    .foregroundColor(.white)
                                                            }
                                                        }
                                                    }
                                                    .onTapGesture {
                                                        withAnimation(.spring()) {
                                                            
                                                            self.selectedIngredientsDicMilk[ingredient.id]?.toggle()
                                                            
                                                            
                                                        }
                                                    }
                                            }
                                        }
                                        .padding(.horizontal, 30)
                                        
                                        
                                        
                                    }
                                    .onAppear{
                                        self.ingredientsDataMilk.forEach { ing in
                                            
                                            self.selectedIngredientsDicMilk[ing.id] = false
                                            print(selectedIngredientsDicMilk[ing.id])
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
                                    LazyVGrid(columns: columnsG, spacing: 10) {
                                        ForEach(ingredientsDataGrains) { ingredient in
                                            Image(ingredient.imageName)
                                                .resizable()
                                                .scaledToFit()
                                                .overlay(alignment: .bottomTrailing) {
                                                    ZStack {
                                                        Circle()
                                                            .stroke(.white, lineWidth: 2)
                                                            .frame(width: 28)
                                                        
                                                        
                                                        if selectedIngredientsDicGrains[ingredient.id] ?? false {
                                                            Circle()
                                                                .foregroundColor(.blue)
                                                                .frame(width: 20)
                                                            
                                                            Image(systemName: "checkmark")
                                                                .foregroundColor(.white)
                                                        }
                                                    }
                                                }
                                                .onTapGesture {
                                                    withAnimation(.spring()) {
                                                        
                                                        self.selectedIngredientsDicGrains[ingredient.id]?.toggle()
                                                        
                                                        
                                                    }
                                                }
                                        }
                                    }
                                    .padding(.horizontal, 30)
                                    
                                    
                                    
                                }
                                .onAppear{
                                    self.ingredientsDataGrains.forEach { ing in
                                        
                                        self.selectedIngredientsDicGrains[ing.id] = false
                                        print(selectedIngredientsDicGrains[ing.id])
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

