////  /*
////
////  Project: MatchedGeometryEffect
////  File: MatchedGeometryEffectexample.swift
////  Created by: Elaidzha Shchukin
////  Date: 17.07.2023
////
////  */
//
//import SwiftUI
//
//struct MatchedGeometryEffectexample: View {
//    
//    let categories: [String] = ["Americano", "Cappuccino", "Espresso"]
//    @State private var selected: String = ""
//    
//    var body: some View {
//    
//        HStack {
//            ForEach(categories, id: \.self) { category in
//                ZStack {
//                    if selected == category {
//                        
//                        RoundedRectangle(cornerSize: 12)
//                            .fill(Color.gray.opacity(0.4))
//                    }
//                 
//                    Text(category)
//                }
//                .frame(maxWidth: .infinity)
//                .frame(height: 50)
//                .onTapGesture {
//                    withAnimation(.spring()) {
//                        selected = category
//                    }
//                }
//            }
//        }
//        .padding()
//    }
//}
//
//struct MatchedGeometryEffectexample_Previews: PreviewProvider {
//    static var previews: some View {
//        MatchedGeometryEffectexample()
//    }
//}
