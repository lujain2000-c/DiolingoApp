import PhotosUI
import SwiftUI

struct ImagePickerView: View {

    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?

var body: some View {
    VStack {
        PhotosPicker("L", selection: $avatarItem, matching: .images)
            .bold()
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding(.trailing,20)

        if let avatarImage {
            avatarImage
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(50)
                .padding(.bottom, 80)
                .padding(.trailing, 20)
                .padding(.top,7)

        }
    }
    .onChange(of: avatarItem) { _ in
        Task {
            if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                if let uiImage = UIImage(data: data) {
                    avatarImage = Image(uiImage: uiImage)
                    return
                }
            }

            print("Failed")
        }
    }
}
}

