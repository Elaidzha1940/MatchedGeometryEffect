//  /*
//
//  Project: MatchedGeometryEffect
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.07.2023
//
//  */

import SwiftUI

struct ContentView: View {
    
    @State private var isClicked: Bool = false
    @Namespace private var namespace
    
    var body: some View {
        
        VStack {
            
            if !isClicked {
                RoundedRectangle(cornerRadius: 20)
                    .matchedGeometryEffect(id: "rectangle", in: namespace)
                    .frame(width: 122, height: 36)
            }
            Spacer()
            
            if isClicked {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .matchedGeometryEffect(id: "rectangle", in: namespace)
                        .frame(width: 300, height: 60)
                        .foregroundColor(.gray.opacity(0.9))
                    Text("Hello!")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                }
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red.opacity(0.5))
        .onTapGesture {
            withAnimation(.easeInOut) {
                isClicked.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectexample()
    }
}

struct MatchedGeometryEffectexample: View {
    
    let categories: [String] = ["Americano", "Cappuccino", "Espresso"]
    @State private var selected: String = ""
    @Namespace private var namespacee
    
    var body: some View {
        
        HStack {
            ForEach(categories, id: \.self) { category in
                ZStack {
                    if selected == category {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.cyan.opacity(0.6))
                            .matchedGeometryEffect(id: "category_background", in: namespacee)
                    }
                    Text(category)
                        .bold()
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        selected = category
                                    }
                                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.brown.opacity(0.6))    }
}

