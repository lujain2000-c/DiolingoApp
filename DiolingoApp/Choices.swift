//
//  Choices.swift
//  DiolingoApp
//
//  Created by لجين إبراهيم الكنهل on 28/10/1444 AH.
//

import Foundation
import SwiftUI
struct Choices: View{
    
    var name: String
    var body: some View{
        ScrollView{
            ZStack(alignment: .leading){
                Color(.white)
                    .cornerRadius(8)
                    .frame(width: 350, height: 65)
                    .shadow(radius: 5)
                    Text(name)
                        .foregroundColor(.black)
                        .font(.title2)
                        .bold()
                
                .padding(.leading,20)
              
            }
            
        }
    }
}
