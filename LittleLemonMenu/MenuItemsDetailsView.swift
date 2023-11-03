//
//  MenuItemsDetailsView.swift
//  LittleLemonMenu
//
//  Created by russell price on 4/13/23.
//

import SwiftUI

struct MenuItemsDetailsView: View {
    var body: some View {
            VStack{
                Image("LittleLemonLogo")
                    .resizable()
                    .frame(width: 250, height: 400, alignment: .center)
                    .padding()
                Text("Title:")
                    .bold()
                    .padding()
                Text("Ingredients:")
                    .bold()
                    .padding()
            }.navigationTitle("Food")
        }
    }

struct MenuItemsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsDetailsView()
    }
}
