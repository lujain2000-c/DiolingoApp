import SwiftUI

struct TimeView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                Color("MyGray")
                    .frame(width: 324, height: 16)
                    .cornerRadius(100)
                Color("MyGreen")
                    .frame(width: 210, height: 16)
                    .cornerRadius(100)
                    .padding(.trailing,130)
            }
            .padding(.top, 32)
            HStack{
                Image("FirstIcon")
                ZStack{
                    Image( "BubbleL")
                        .resizable()
                        .frame(width: 250, height: 100)
                        .padding(.top, 20)
                    Text("""
 What's your daily
learning goal?
""")
                    .foregroundColor(.black)
                    .font(.title2)
                }
            }
            .padding(.bottom, 24)
            Time(time: "5 min / day", name: "Casual")
            Time(time: "10 min / day", name: "Regular")
            Time(time: "15 min / day", name: "Seriuos")
            Time(time: "20 min / day", name: "Intense")
            Spacer()
            ZStack(){
                                Color("MyGreen")
                                .cornerRadius(10)
                                .frame(width: 350, height: 50)
                                .shadow(radius: 5)
                                    
                                   .padding()
                NavigationLink("CONTINUE", destination: GetReadyv() )
                    .foregroundColor(.white)
                                .font(.headline)
                                .bold()
                } }
        .padding(.horizontal,16)
    } }

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}




