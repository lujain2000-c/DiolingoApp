import SwiftUI
//import SwiftAudioEx
import AVKit

class SoundManager {
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    func playSound(){
        
        guard let url = Bundle.main.url(forResource: "cat00001", withExtension: ".mp3")else{return}
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
            
        }
}
    


struct Lessone1View: View {
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 20, height: 20)
                    
                    Image(systemName: "clear.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.horizontal,10)
                        .foregroundColor(Color(.white))
                }
                ZStack(alignment: .top){
                    Color("MyGray")
                        .frame(width: 250, height: 16)
                        .cornerRadius(100)
                    Color("MyGreen")
                        .frame(width: 32, height: 16)
                        .cornerRadius(100)
                        .padding(.trailing,250)
                }
                .padding(.top, 32)
                HStack{
                    Image(systemName: "heart.fill")
                        .resizable()
                        .foregroundColor(.red)
                        .frame(width: 30, height:30)
                        .padding(.trailing,30)
                    Text("5")
                        .foregroundColor(.red)
                } }
            HStack{
                HStack{
                    Image( "New")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(.white))
                    Text("NEW WORD")
                        .foregroundColor(.purple)
                        .bold()  }
                Spacer() }
            Text("Select the correct imge")
                .bold()
                .font(.title)
                .padding(.trailing,70)
            ZStack{
               
                HStack{
                    
                    Image( "Voice")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(.white))
                    
                    
                    Text("Tha cat")
                        .foregroundColor(.purple)
                    .bold()}
                .padding(.trailing, 250)
                
                Button("P"){
                    SoundManager.instance.playSound()
                    
                }.padding(.trailing, 290)
            }
            VStack{
                HStack{
                    Photo(photo: "Cat", name: "Cat")
                    Photo(photo: "Man", name: "Man")
                }
                HStack{
                    Photo(photo: "One", name: "One")
                    Photo(photo: "Boy", name: "Boy")
                }
                
            }
            Spacer()
            ZStack(){
                Color("MyGreen")
                    .cornerRadius(10)
                    .frame(width: 350, height: 50)
                    .shadow(radius: 5)
                NavigationLink("CHECK", destination: HomePageView() )
                    .foregroundColor(.white)
                    .font(.headline)
                    .bold()
            }
        }.padding(.leading, 10)
    }
}

struct Lessone1View_Previews: PreviewProvider {
    static var previews: some View {
        Lessone1View()
    }
}

