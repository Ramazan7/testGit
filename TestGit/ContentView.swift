//
//  ContentView.swift
//  TestGit
//
//  Created by Admin on 27.06.2021.
//

import SwiftUI


struct ContentView: View {
    
    @State private var username : String = ""
    @State private var password : String = ""
    @State private var labelSign : String = ""
    @State private var showModal: Bool = false
    
    
    var body: some View {
        
        ZStack{
            
            Form{
                
                Section(header: Text("Sign")){
                    
                    Text(labelSign).listRowBackground(Color.init(#colorLiteral(red: 0.9568104148, green: 0.9574205279, blue: 0.9724851251, alpha: 1))).foregroundColor(.red)
                    TextField("Login", text: $username)
                    
                    SecureField("Password", text: $password)
                    
                    Button("Open") {
                        if username == "Admin" {
                            if password == "123" {
                                labelSign = ""
                                showModal.toggle()
                            }
                        }else{labelSign = "Error"}
                    }.fullScreenCover(isPresented: $showModal, content: {
                        NewView()
                    })
                    
                    
                }
                
            }
            .frame(height:220)
            
        }
        .background(Image("planet"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
