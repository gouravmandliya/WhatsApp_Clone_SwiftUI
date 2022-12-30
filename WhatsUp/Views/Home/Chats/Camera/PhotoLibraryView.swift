//
//  Camera.swift
//  WhatsUp
//
//  Created by GOURAVM on 29/12/22.
//

import SwiftUI
import PhotosUI

struct PhotoLibraryView: View {
    @State private var photosPickerPresented = false
    @State private var photoPickerItems = [PhotosPickerItem]()
    var body: some View {
        Button {
            // Present photo Picker
            photosPickerPresented.toggle()
        } label: {
            Text("Show Photos Picker")
        }
        .photosPicker(isPresented: $photosPickerPresented, selection: $photoPickerItems)
    }
}

struct Camera_Previews: PreviewProvider {
    static var previews: some View {
        PhotoLibraryView()
    }
}
