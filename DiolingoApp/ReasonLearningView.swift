
import SwiftUI

struct ReasonLearningView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                Color("MyGray")
                    .frame(width: 324, height: 16)
                    .cornerRadius(100)
                
                Color("MyGreen")
                    .frame(width: 160, height: 16)
                    .cornerRadius(100)
                    .padding(.trailing,170)
            }
            .padding(.top, 32)
            Spacer()
            
            HStack{
                Image("h")
                ZStack{
                    Image( "BubbleL")
                        .resizable()
                        .frame(width: 250, height: 100)
                        .padding(.top, 20)
                    
                    Text("""
 Why are you
learning French?
""")
                    .foregroundColor(.black)
                    .font(.title2)
                }
            }
            .padding(.bottom, 24)
            Spacer()
            List{
                Reason(reasonImage: "Fun", name: "Just for fun")
                Reason(reasonImage: "Bag", name: "Jop                  ")
                Reason(reasonImage: "Book", name: "educcation   ")
                Reason(reasonImage: "Peopel", name: "Travel             ")
                Reason(reasonImage: "Others", name: "Other               ")
            }.scrollContentBackground(.hidden)
            ZStack(){
                                Color("MyGreen")
                                .cornerRadius(10)
                                .frame(width: 350, height: 50)
                                .shadow(radius: 5)
                                   .padding()
                NavigationLink("CONTINUE", destination: FunView() )
                    .foregroundColor(.white)
                                .font(.headline)
                                .bold()
                }
        }
        .padding(.horizontal,16)
    }
}

struct ReasonLearningView_Previews: PreviewProvider {
    static var previews: some View {
        ReasonLearningView()
    }
}





