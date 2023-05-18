//
//  Level.swift
//  DiolingoApp
//
//  Created by لجين إبراهيم الكنهل on 28/10/1444 AH.
//

import Foundation
import SwiftUI

struct Level: View{
    var levelImage: String
    var name: String
    var body: some View{
            ZStack{
                Color(.white)
                    .cornerRadius(8)
                    .frame(width: 350, height: 80)
                    .shadow(radius: 5)
                HStack{
                    Image(levelImage)
                        .resizable()
                        .frame(width: 50 ,height: 50)
                        .cornerRadius(15)
                        .padding(.horizontal, 15)
                    Text(name)
                        .foregroundColor(.black)
                        .font(.title3)
                        .bold()
                }
                .padding(.trailing,100)
            }
    }
}
