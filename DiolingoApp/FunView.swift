//
//  FunView.swift
//  DiolingoApp
//
//  Created by لجين إبراهيم الكنهل on 28/10/1444 AH.
//

import SwiftUI

struct FunView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                Color("MyGray")
                    .frame(width: 324, height: 16)
                    .cornerRadius(100)
                
                Color("MyGreen")
                    .frame(width: 190, height: 16)
                    .cornerRadius(100)
                    .padding(.trailing,130)
            }
            .padding(.top, 32)
            Spacer()
            
            HStack(alignment: .top){
                Image("h1")
                ZStack{
                    Image( "BubbleL")
                        .resizable()
                        .frame(width: 265, height: 100)
                        .padding(.top, 20)
                    
                    Text("""

 Yay! Fun is my
specalty!

""")
                    .foregroundColor(.black)
                    .font(.title2)
                }
            }
            .padding(.bottom, 400)
            Spacer()
            
            ZStack(){
                                Color("MyGreen")
                                .cornerRadius(10)
                                .frame(width: 350, height: 50)
                                .shadow(radius: 5)
                                    
                                   .padding()
                NavigationLink("CONTINUE", destination:  AchievementsView() )
                    .foregroundColor(.white)
                                .font(.headline)
                                .bold()
                }
         
        }
        .padding(.horizontal,16)
    }
}

struct FunView_Previews: PreviewProvider {
    static var previews: some View {
        FunView()
    }
}
