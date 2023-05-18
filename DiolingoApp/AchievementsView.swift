import SwiftUI

struct AchievementsView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                Color("MyGray")
                    .frame(width: 324, height: 16)
                    .cornerRadius(100)
                Color("MyGreen")
                    .frame(width: 200, height: 16)
                    .cornerRadius(100)
                    .padding(.trailing,124)
            }
            .padding(.top, 32)
            Spacer()
            
            HStack(alignment: .top){
                Image("FirstIcon")
                ZStack{
                    Image( "BubbleL")
                        .resizable()
                        .frame(width: 265, height: 100)
                        .padding(.top, 20)
                    Text("""
 Here's what you can
 achieve!
""")
                    .foregroundColor(.black)
                    .font(.title2)
                }
            }
            .padding(.bottom, 100)
            VStack{
                Goals(goalImage: "ch", textB: "Converse with confidence", textS: "2222jft")
                Goals(goalImage: "v", textB: "Converse with confidence", textS: "2222jft")
                Goals(goalImage: "W", textB: "Converse with confidence", textS: "2222jft")
            }.border(.gray)
                .cornerRadius(10)
                .padding(.bottom, 150)
            
            ZStack(){
                Color("MyGreen")
                    .cornerRadius(10)
                    .frame(width: 350, height: 50)
                    .shadow(radius: 5)
                    .padding()
                NavigationLink("CONTINUE", destination: TimeView() )
                    .foregroundColor(.white)
                    .font(.headline)
                    .bold()
            } .padding(.bottom,10) }
        .padding(.horizontal,16)
        //.padding(.horizontal,16)
    } }

struct AchievementsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsView()
    }
}
