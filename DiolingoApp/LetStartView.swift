//
//  LetStartView.swift
//  DiolingoApp
//
//  Created by لجين إبراهيم الكنهل on 28/10/1444 AH.
//

import SwiftUI

struct LetStartView: View {
    var body: some View {
        VStack(spacing: 200){
            VStack(alignment: .center) {
                ZStack{
                    Image( "BubbleB")
                        .resizable()
                        .frame(width: 300, height: 100)
                        .padding(.top, 20)
                        
                    Text(" Let's get this party started!")
                        .foregroundColor(.black)
                        .font(.title2)
                }
                
                Image( "Let'sStart")
            }
            .padding(.top, 100)
           
            
            ZStack(){
                                Color("MyGreen")
                                .cornerRadius(10)
                                .frame(width: 350, height: 50)
                                .shadow(radius: 5)
                                   .padding()
                NavigationLink("CONTINUE", destination: LanguagesListView() )
                    .foregroundColor(.white)
                                .font(.headline)
                                .bold()
                }
        }
    }
}
    

struct LetStartView_Previews: PreviewProvider {
    static var previews: some View {
        LetStartView()
    }
}
