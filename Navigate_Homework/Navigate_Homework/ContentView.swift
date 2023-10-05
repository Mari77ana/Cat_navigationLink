//
//  ContentView.swift
//  Navigate_Homework
//
//  Created by Mariana Laic on 2023-09-27.
//

import SwiftUI

struct Cat: Identifiable{
    var id: UUID = UUID()
    let catName: String
    let catAge: Int
}

struct ContentView: View {
    let cats:[Cat] = [Cat(catName: "Katta", catAge: 3),
                      Cat(catName: "Marcus", catAge: 4),
                      Cat(catName: "Joakim", catAge: 5)]
    
    var body: some View {
        // Wrappar hela
        NavigationStack{
            
            ZStack {
                Color(.systemGray6).ignoresSafeArea()
                VStack(alignment: .leading) {
                    
                    Text("Our cats").bold().font(.title).padding(20)
                    
                    
                    List(cats){
                        cat in catView(cat:cat)
                    }
                    
                    
                }
                
                
            }
        }
       
    }
        
}


struct catView: View {
    var cat: Cat
    var body: some View {
        
        NavigationLink(destination: SecondViewScreen (cat:cat), label: {
            HStack(){
               Image("cat")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("\(cat.catName)").padding()
            }
        })
        
    }
}


struct SecondViewScreen: View {
    var cat: Cat
    var body: some View {
        Image("3cats").padding(.bottom)
            .frame(width: 250, height: 200)
        
        VStack(alignment: .leading){
            Text("\(cat.catName)").bold().font(.title).padding(.bottom, 10)
            Text("\(cat.catAge) år").font(.system(size: 20)).padding(.bottom, 20)
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's  essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. industry's  essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem")
                      .frame(width: 330, height: 350)
                      .padding(.top, -20)
            
        }
       
     
        
    }
}
#Preview {
   ContentView()
   //SecondViewScreen(cat:Cat(catName: "Katta", catAge: 3))
    
}
