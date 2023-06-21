//
//  TitleRow.swift
//  ChatUp
//
//  Created by Satyam Shivhare on 05/04/23.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string:  "https://cdn.pixabay.com/photo/2018/01/06/09/25/hijab-3064633_1280.jpg")
    
    var name = "Sarah Smith"
    var body: some View {
        HStack(spacing: 20){
            AsyncImage(url:imageUrl){ image in
                image.resizable()
                    .aspectRatio(contentMode : .fill)
                    .frame(width: 50 , height: 50)
                    .cornerRadius(50)
            }placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading){
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                
            }.frame(maxWidth: .infinity , alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }.padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
