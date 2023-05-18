import SwiftUI

struct GetReadyv: View {
    var body: some View {
        VStack(spacing: 200){
            VStack(alignment: .center) {
                ZStack{

                    Image( "BubbleB")
                        .resizable()
                        .frame(width: 300, height: 150)
                        .padding(.top, 20)
                     
Text("""
    Okay! Get ready for Unit 1
        Lessone 1 .
""")
                        .foregroundColor(.black)
                        .font(.title2)
                }
                   .frame(width: 300, height: 50)
                    
                Image( "GetReady")
                    .padding(.top, 50)
                    
            }
            .padding(.top, 100)
            
            ZStack{
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
    }
}

struct GetReadyv_Previews: PreviewProvider {
    static var previews: some View {
        GetReadyv()
    }
}
