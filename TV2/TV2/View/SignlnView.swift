//
//  SignlnView.swift
//  TV2
//
//  Created by user on 06.06.2021.
//

import SwiftUI

struct SignlnView: View {
    @State var username = ""
    var body: some View {
        ZStack(alignment: .top){
            
            Image("backgroundimage")
                .resizable()
                .frame(width: UIScreen.main.bounds.width,
                       height:
                        UIScreen.main.bounds.height,
                       alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            VStack{
                ZStack{
                    Rectangle()
                        .frame(width: 697, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .shadow(radius: 2 )
                    
                    HStack(spacing:0){
                        
                        Image("person_110935").padding()
                        
                        Divider() .frame(width: 1, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        CustomUserName(placeholder: Text("Ivanov.I"), username: $username).padding(.horizontal, 10)
                    } .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                .frame(width: 697, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                ZStack{
                    Rectangle()
                        .frame(width: 697, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .shadow(radius: 2 )
                    
                    HStack(spacing:0){
                        
                        Image("pass").padding()
                        
                        Divider() .frame(width: 1, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        CustomUserName(placeholder: Text("Ivanov.I"), username: $username).padding(.horizontal, 10)
                    } .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                .frame(width: 697, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
            }
            .offset(y: 520)
            
        }
    }
    
    struct SignlnView_Previews: PreviewProvider {
        static var previews: some View {
            SignlnView()
        }
    }
    struct CustomUserName: View {
        
        @State var placeholder: Text
        @Binding var username: String
        @State var edit: (Bool) -> () = {_ in}
        @State var commit: () -> () = {}
        var body: some View{
            ZStack(alignment: .leading) {
                placeholder.foregroundColor(.gray).font(.custom("", size: 24))
            }
            TextField("", text:$username, onEditingChanged: edit, onCommit: commit).frame(width: 630, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).font(.custom("", size: 24)).foregroundColor(.gray)
        }
    }
    
}
