//
//  Time.swift
//  DiolingoApp
//
//  Created by لجين إبراهيم الكنهل on 28/10/1444 AH.
//

import Foundation
import SwiftUI
struct Time: View{
    var time: String
    var name: String
    var body: some View{
       VStack(spacing: 10){
            ZStack{
                Color(.white)
                    .cornerRadius(8)
                    .frame(width: 350, height: 65)
                    .shadow(radius: 5)
                HStack{
                    Text(time)
                        .foregroundColor(.black)
                        .font(.title2)
                        .bold()
                        .padding(.leading,20)
                    
                    Spacer()
                    Text(name)
                        .foregroundColor(.gray)
                        .font(.title3)
                        
                        .padding(.horizontal, 17)
                }
            
            }
            
        }
    }
}
