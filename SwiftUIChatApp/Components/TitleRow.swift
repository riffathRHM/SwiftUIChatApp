//
//  TitleRow.swift
//  SwiftUIChatApp 
// Created by Mohamed Riffath on  9/28/24.



import SwiftUI

struct TitleRow: View {
    
    var imageUrl = URL(string: "https://images.unsplash.com/photo-1544005313-94ddf0286df2") // Direct link to the image
    var name = "Sarah Smith"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment:.leading){
                Text(name)
                    .font(.title).bold()
                Text("online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }.frame(maxWidth:.infinity , alignment: .leading)
            //VStack
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
            
        }.padding()
        //HStack
    }
}

#Preview {
    TitleRow()
        .background(Color("Peach"))
}
