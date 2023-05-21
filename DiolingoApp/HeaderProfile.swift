import SwiftUI

struct HeaderProfile: View {
    var body: some View {
        HStack(alignment: .top){
            VStack(spacing: 5){
                Text("Lujain")
                    .bold()
                    .font(.title)
                VStack(spacing: 10){
                    Text("Lujain727265")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .bold()
                    Text("joined April 23")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .bold()
                }.padding(.bottom,16)
                HStack{
                    Image("FrenchFlag")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Image("JapaneseFlag")
                        .resizable()
                        .frame(width: 40, height: 40)
                        
                }.padding(.bottom,8)
              
            }.padding(.leading, 16)
            Spacer()
            ZStack{
                
                Circle()
                    .stroke(Color.gray, style: StrokeStyle(lineWidth: 5, lineCap: .round, dash: [16]))
                    .frame(width: 100, height: 100)
                    .padding(.trailing, 24)
                    .padding(.top, 10)
                
                
                Button("L"){
                }
                    .bold()
                    .foregroundColor(.gray)
                    .font(.largeTitle)
                    .padding(.trailing,20)
                ImagePickerView()
            }
        }
        HStack{
            Text("1  Following")
                .foregroundColor(Color("MyBlue"))
                .bold()
            Text(" 0  Followers")
                .foregroundColor(Color("MyBlue"))
                .bold()
            Spacer()
        }.padding(.leading,16 )
            .padding(.bottom,16 )
    }
}

struct HeaderProfile_Previews: PreviewProvider {
    static var previews: some View {
        HeaderProfile()
    }
}
