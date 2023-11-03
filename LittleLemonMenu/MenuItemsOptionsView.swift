//
//  MenuItemsOptionsView.swift
//  LittleLemonMenu
//
//  Created by russell price on 4/13/23.
//

import SwiftUI

struct MenuItemsOptionsView: View {
    var body: some View {
        List{
            Section(header: Text("Select Categories")){
                Text("Food")
                Text("Drink")
                Text("Dessert")}
            Section(header: Text("Sort By")){
                Text("Most Popular")
                Text("Price $-$$$")
                Text("Food")}
            }.navigationTitle("Filter")
                .toolbar{ Button("Done"){
                    print("Done")
                }
            }
        }
    }
struct MenuItemsOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionsView()
    }
}
