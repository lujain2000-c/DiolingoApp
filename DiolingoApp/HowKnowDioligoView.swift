import SwiftUI

struct HowKnowDioligoView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                Color("MyGray")
                    .frame(width: 324, height: 16)
                    .cornerRadius(100)
                Color("MyGreen")
                    .frame(width: 56, height: 16)
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
 How did you hear
about Duolingo?
""")
                    .foregroundColor(.black)
                    .font(.title2)
                }
            }
            .padding(.bottom, 24)
            Spacer()
            Choices( name: "Tv")
            Choices( name: "Friends/Family")
            Choices( name: "App stor")
            Choices( name: "Tiktok")
            Choices( name: "Youtube")
            ZStack(){
                                Color("MyGreen")
                                .cornerRadius(10)
                                .frame(width: 350, height: 50)
                                .shadow(radius: 5)
                                   .padding()
                NavigationLink("CONTINUE", destination: LevelView() )
                    .foregroundColor(.white)
                                .font(.headline)
                                .bold()
                }
        }
        .padding(.horizontal,16)
    }
}

struct HowKnowDioligoView_Previews: PreviewProvider {
    static var previews: some View {
        HowKnowDioligoView()
    }
}






