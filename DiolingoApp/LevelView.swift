import SwiftUI

struct LevelView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                Color("MyGray")
                    .frame(width: 324, height: 16)
                    .cornerRadius(100)
                Color("MyGreen")
                    .frame(width: 120, height: 16)
                    .cornerRadius(100)
                    .padding(.trailing,250)
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
 How much French
do you know?
""")
                    .foregroundColor(.black)
                    .font(.title2)
                }
            }
            .padding(.bottom, 24)
            Spacer()
            Level(levelImage: "Level1", name: "new to French")
            Level(levelImage: "Level2", name: " some words ")
            Level(levelImage: "Level3", name: "simpel conversations")
            Level(levelImage: "Level4", name: "intermediate")
            ZStack(){
                                Color("MyGreen")
                                .cornerRadius(10)
                                .frame(width: 350, height: 50)
                                .shadow(radius: 5)
                                    
                                   .padding()
                NavigationLink("CONTINUE", destination: YourLevelView() )
                    .foregroundColor(.white)
                                .font(.headline)
                                .bold()
                }
        }
        .padding(.horizontal,16)
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView()
    }
}




