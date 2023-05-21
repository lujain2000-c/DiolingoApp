import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                VStack(alignment: .center) {
                    Image( "Hi")
                        .padding(.top,70)
                    Text("""
The free, fun, and effective way
          to learn a language!
""")
                    .foregroundColor(.gray)
                    .font(.title2)
                }
                Spacer()
                VStack{
                    ZStack{
                        Color("MyGreen")
                            .cornerRadius(10)
                            .frame(width: 350, height: 50)
                            .shadow(radius: 5)
                            .padding()
                        NavigationLink("GET STARTED", destination: LocationView() )
                            .foregroundColor(.white)
                            .font(.headline)
                            .bold()
                    }
                    ZStack{
                        Color(.white)
                            .cornerRadius(10)
                            .frame(width: 350, height: 50)
                            .shadow(radius: 5)
                        Button("I ALREADY HAVE AN ACCOUNT"){}
                        .foregroundColor(Color("MyGreen"))
                        .font(.headline)
                        .bold()
                    }
                }
            }
            .padding(.horizontal,30)
        }
    }   }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
