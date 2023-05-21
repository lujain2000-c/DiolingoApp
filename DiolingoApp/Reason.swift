//
//  Reason.swift
//  DiolingoApp
//
//  Created by لجين إبراهيم الكنهل on 28/10/1444 AH.
//

import Foundation
import SwiftUI

struct Reason: View{
    var reasonImage: String
    var name: String
    var body: some View{
       // List{
            ZStack{
//                Color(.white)
//                    .cornerRadius(8)
//                    .frame(width: 350, height: 65)
//                    .shadow(radius: 5)
                HStack{
                    Image(reasonImage)
                        .resizable()
                        .frame(width: 50 ,height: 50)
                        .cornerRadius(15)
                        .padding(.horizontal, 15)
                    Text(name)
                        .foregroundColor(.black)
                        .font(.title2)
                        .bold()
                        .padding(.leading,0)
                }
                .padding(.trailing,120)
            }
            
       // }
    }
}
