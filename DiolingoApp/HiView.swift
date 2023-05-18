
import SwiftUI

struct HiView: View {
    var body: some View {
        VStack(spacing: 200){
            VStack(alignment: .center) {
                ZStack{
                    Image( "BubbleB")
                        .resizable()
                        .frame(width: 300, height: 100)
                        .padding(.top, 20)
                     
                    Text("   Hi there! I'm Dou!  ")
                        .foregroundColor(.black)
                        .font(.title2)
                }

                    
                Image( "Hi2")
                    
            }
            .padding(.top, 100)
            
            ZStack{
                                Color("MyGreen")
                                .cornerRadius(10)
                                .frame(width: 350, height: 50)
                                .shadow(radius: 5)
                                   .padding()
                NavigationLink("CONTINUE", destination: LetStartView() )
                    .foregroundColor(.white)
                                .font(.headline)
                                .bold()
                  
                }
        }
        //.padding(.horizontal,30)
    }
}

struct HiView_Previews: PreviewProvider {
    static var previews: some View {
        HiView()
    }
}
