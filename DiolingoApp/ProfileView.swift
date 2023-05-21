

import SwiftUI

struct ProfileView: View {
   // @Binding var selectTab: Int
    var body: some View {
        VStack{
            HeaderProfile()
            
            HStack{
                ZStack{
                    Color(.white)
                        .cornerRadius(10)
                        .frame(width: 270, height: 56)
                        .shadow(radius: 5)
                    HStack{
                        Image(systemName: "person.fill.badge.plus")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundColor(Color("MyBlue"))
                        Button("ADD FRIENDS"){}
                        .foregroundColor(Color("MyBlue"))
                        .font(.title2)
                        .bold()
                    }
                }.padding(.leading, 16)
                Spacer()
                ZStack{
                    Color(.white)
                        .cornerRadius(10)
                        .frame(width: 70, height: 56)
                        .shadow(radius: 5)
                    HStack{
                        Image(systemName: "square.and.arrow.up")
                            .resizable()
                            .frame(width: 24, height: 32)
                            .bold()
                            .foregroundColor(Color("MyBlue"))
                            
                    }
                }.padding(.trailing, 16)
            }.padding(.bottom,16)
                
            Divider()
                .bold()
                Spacer()
           
        }.padding(.top,20 )
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
