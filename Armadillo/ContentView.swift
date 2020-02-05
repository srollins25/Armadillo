//
//  ContentView.swift
//  Armadillo
//
//  Created by stephan rollins on 1/26/20.
//  Copyright © 2020 OmniStack. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: Armadillo.getArmadillo()) var armadillo: FetchedResults<Armadillo>
    
    @State private var newArmadillo = ""
    
    @State var accounts = [
    Account(account: "Google", username: "test", email: "email@email.com", pw: "qwertyuiop", created: Date().timeIntervalSince1970),
    Account(account: "Google", username: "test2", email: "email2@email.com", pw: "qwertyuiop", created: Date().timeIntervalSince1970),
        Account(account: "Google", username: "test3", email: "email3@email.com", pw: "qwertyuiop", created: Date().timeIntervalSince1970)
    ]
    
    var body: some View {
        
        NavigationView
        {
            VStack
            {
                List
                {
                    ForEach(accounts) { item in
                    ZStack
                    {
                Rectangle().fill(Color.white).cornerRadius(10).shadow(color: .gray, radius: 5, x: 1, y: 1)
                        
                        HStack
                        {
                            Image(systemName: "photo").resizable().frame(width: 32, height: 32)

                            VStack(alignment: .leading)
                            {
                                HStack
                                {
                                    Text(item.account)
                                    Spacer()
                                    Text(String(item.created))
                                }
                                
                                Spacer()
                                HStack {
                                    Text(item.email)
                                    Spacer()
                                    Text(item.pw)
                                }
                            }
                        }.padding()
                    }.onTapGesture {
                        print("testing tap: ", item.id)
                    }.padding(1)
                    }.onDelete(perform: delete)
                }
                
                .navigationBarTitle(Text("Keys"))
                .navigationBarItems(trailing: Button(action: {
                    
                }){
                    Image(systemName: "plus.circle").resizable().frame(width: 25, height: 25)
                })
            }
            
        }
    }
    
    func delete(at offsets: IndexSet)
    {
        accounts.remove(atOffsets: offsets)
    }
}

//#if DEBUG
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(accounts: testarr)
//    }
//}
//#endif




































