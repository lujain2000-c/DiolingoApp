import SwiftUI

struct LanguagesListView: View {
    var body: some View {
            VStack{
                ZStack(alignment: .top){
                    Color("MyGray")
                        .frame(width: 324, height: 16)
                        .cornerRadius(100)
                    Color("MyGreen")
                        .frame(width: 32, height: 16)
                        .cornerRadius(100)
                        .padding(.trailing,300)
                }
                .padding(.top, 32)
                Spacer()
                
                HStack{
                    Image("FirstIcon")
                    ZStack{
                        Image( "BubbleL")
                            .resizable()
                            .frame(width: 250, height: 100)
                            .padding(.top, 20)
                        
                        Text("""
     What would you like
    to learn?
""")
                        .foregroundColor(.black)
                        .font(.title2)
                    }
                }
                .padding(.bottom, 24)
                Spacer()
                Flag(flagImage: "SpanishFlag", name: "spanish")
                Flag(flagImage: "FrenchFlag", name: "French")
                Flag(flagImage: "GermanFlag", name: "German")
                Flag(flagImage: "ItalianFlag", name: "Italian")
                Flag(flagImage: "JapaneseFlag", name: "Japanese")
                ZStack(){
                                    Color("MyGreen")
                                    .cornerRadius(10)
                                    .frame(width: 350, height: 50)
                                    .shadow(radius: 5)
                                       .padding()
                    NavigationLink("CONTINUE", destination: HowKnowDioligoView() )
                        .foregroundColor(.white)
                                    .font(.headline)
                                    .bold()
                }  }
            .padding(.horizontal,16)
    }
}

struct LanguagesListView_Previews: PreviewProvider {
    static var previews: some View {
        LanguagesListView()
    }
}






