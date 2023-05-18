//
//  Goals.swift
//  DiolingoApp
//
//  Created by لجين إبراهيم الكنهل on 28/10/1444 AH.
//

import Foundation
import SwiftUI
struct Goals: View{
   var goalImage: String
   var textB: String
   var textS: String
   var body: some View{
       
           HStack{
               Image(goalImage)
               VStack{
                   Text(textB)
                       .bold()
                   Text(textS)
                       .font(.caption2)
                       .foregroundColor(.gray)
               }
           }
           Divider()
//            HStack{
//                Image("v")
//                VStack{
//                    Text("Converse with confidence")
//                        .bold()
//                    Text("2222jft")
//                        .font(.caption2)
//                        .foregroundColor(.gray)
//                }
//            }
//            Divider()
//            HStack{
//                Image("W")
//                VStack{
//                    Text("Converse with confidence")
//                        .bold()
//                    Text("2222jft")
//                        .font(.caption2)
//                        .foregroundColor(.gray)
//                }
//            }
     
   }
}
