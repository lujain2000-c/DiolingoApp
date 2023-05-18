
import SwiftUI

struct YourLevelView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                Color("MyGray")
                    .frame(width: 324, height: 16)
                    .cornerRadius(100)
                
                Color("MyGreen")
                    .frame(width: 140, height: 16)
                    .cornerRadius(100)
                    .padding(.trailing,200)
            }
            .padding(.top, 32)
            Spacer()
            
            HStack(alignment: .top){
                Image("Eyes")
                ZStack{
                    Image( "BubbleL")
                        .resizable()
                        .frame(width: 265, height: 100)
                        .padding(.top, 20)
                    
                    Text("""

 Okay, we'll start fresh

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
                NavigationLink("CONTINUE", destination: ReasonLearningView() )
                    .foregroundColor(.white)
                                .font(.headline)
                                .bold()
                }
         
        }
        .padding(.horizontal,16)
    }
}

struct YourLevelView_Previews: PreviewProvider {
    static var previews: some View {
        YourLevelView()
    }
}
