//
//  NewView.swift
//  TestGit
//
//  Created by Admin on 30.06.2021.
//

import SwiftUI

struct NewView: View {
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        
            NavigationView{
                VStack{
                    
                }
                
            
                .navigationBarItems(trailing: Button("Close"){
                    self.presentationMode.wrappedValue.dismiss()
                })
        }
       
       
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
