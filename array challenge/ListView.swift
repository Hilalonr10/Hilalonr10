//
//  ContentView.swift
//  array challenge
//
//  Created by Hilal Öner on 7/6/23.
//

import SwiftUI

struct ArrayView: View {
    
    var array = ["fatma","hilal","school","laptop","pencil"]
    @State var items = [String]()
    
    var body: some View {
        
        VStack{
            List(items,id:\.self) { item in
                
                Text(item)
                .bold()
                
                .listRowSeparator(.visible)
                .listRowBackground(
                    Color(.systemPink)
                        .opacity(0.3))
                }
                    
               
            Button("tap me ") {
                
                let randIndex = Int.random(in: 0...array.count-1)
                
                items.append(array[randIndex])
            }
            
            }
           
        }
       
    }
    

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ArrayView()
    }
}
