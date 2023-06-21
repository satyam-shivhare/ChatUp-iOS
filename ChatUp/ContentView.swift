//
//  ContentView.swift
//  ChatUp
//
//  Created by Satyam Shivhare on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                ScrollViewReader { proxy in 
                    ScrollView{
                        ForEach(messagesManager.messages, id: \.id){ message in
                            MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messagesManager.lastMessageId){ Id in
                        withAnimation{
                            proxy.scrollTo(Id, anchor: .bottom)
                        }
                        
                    }
                }
            }
            .background(Color("Peach"))
            
            MessageField()
                .environmentObject(messagesManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
