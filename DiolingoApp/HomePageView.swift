

import SwiftUI

struct HomePageView: View {
   
    var body: some View {
        
        
            
            ZStack{
                Color("MyGreen")
                
                VStack{
                    Image("Header")
                        .resizable()
                        .frame(width: 350, height: 30)
                        .padding(.top, 70)
                    HStack{
                        Image(systemName: "list.bullet")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                        Text("Intro to Franch")
                            .foregroundColor(.white)
                            .bold()
                            .font(.title3)
                            .padding(.leading, 80)
                    }.padding(.top,24)
                        .padding(.trailing, 100)
                    Divider()
                    ZStack{
                        Image("L")
                            .resizable()
                            .frame(width: 500, height: 650)
                        Divider()
                        
                        ZStack{
                            VStack{
                                Color.white
                            }.ignoresSafeArea()
                                .frame(width: 500, height: 80)
                                .padding(.top, 550)
                            HStack(spacing: 8 ){
                                Image("Home")
                                Image("5")
                                Image("4")
                                Image("3")
                                ZStack{
                                    Image("Profile")
                                    NavigationLink("Profile",destination: ProfileView())
                                        .font(.caption2)
                                    
                                }
                                
                                Image("1")
                                
                            }.padding(.top,570)
    }
                        }
                    
                }
            }
            // }
            .ignoresSafeArea()
            
        
        }
        
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
        //   .environmentObject(ProfileView())
    }
}
