//
//  Photo.swift
//  DiolingoApp
//
//  Created by لجين إبراهيم الكنهل on 28/10/1444 AH.
//

import Foundation
import SwiftUI
struct Photo: View{
    var photo: String
    var name: String
    var body: some View{
        HStack{
            ZStack{
                Color(.white)
                    .cornerRadius(8)
                    .frame(width: 150, height: 200)
                    .shadow(radius: 5)
                VStack(alignment: .center){
                    Image(photo)
                        .resizable()
                        .frame(width: 100 ,height: 100)
                    //.padding(.horizontal, 15)
                    Text(name)
                        .foregroundColor(.gray)
                        .font(.title3)
                    // .padding(.leading,0)
                }
            }
        }
    }
}
