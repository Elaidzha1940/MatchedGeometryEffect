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
    var body: some View {
        
        VStack {
            
            if !isClicked {
                
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 40, height: 40)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
