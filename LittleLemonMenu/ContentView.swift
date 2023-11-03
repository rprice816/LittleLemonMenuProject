//
//  ContentView.swift
//  LittleLemonMenu
//
//  Created by russell price on 4/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            MenuItemsView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
