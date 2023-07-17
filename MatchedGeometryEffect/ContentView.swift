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
                    .frame(width: 150, height: 100)
                    .matchedGeometryEffect(id: "rectangle", in: namespace)
            }
            Spacer()
            
            if isClicked {
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 80, height: 50)
                    .matchedGeometryEffect(id: "rectangle", in: namespace)

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
        ContentView()
    }
}
