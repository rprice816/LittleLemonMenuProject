//
//  MenuItemsView.swift
//  LittleLemonMenu
//
//  Created by russell price on 4/13/23.
//

import SwiftUI

struct MenuItemsView: View {
    private var gridItemLayout = [
        GridItem(.flexible(minimum: 100, maximum: 100), spacing:20),
        GridItem(.flexible(minimum: 100, maximum: 100), spacing:20),
        GridItem(.flexible(minimum: 100, maximum: 100))]
    var body: some View {
        NavigationView{
                ScrollView {
                    LazyVGrid(columns: gridItemLayout, spacing: 12, content: {
                        Section(header: Text("Food").font(.title)){
                            ForEach(1..<13, id: \.self){_ in
                                VStack(alignment: .leading){
                                    Spacer()
                                        .frame(width: 100, height: 100)
                                        .background(Color.black)
                                    NavigationLink("Food", destination: MenuItemsDetailsView())
                                        .foregroundColor(Color.black)
                                    Spacer()}
                                .padding()}
                        }
                    }).padding(.horizontal)
                    LazyVGrid(columns: gridItemLayout, spacing: 12, content: {
                        Section(header: Text("Drinks").font(.title)){
                            ForEach(1..<9, id: \.self){ num in
                                VStack(alignment: .leading){
                                    Spacer()
                                        .frame(width: 100, height: 100)
                                        .background(Color.black)
                                    NavigationLink("Drink", destination: MenuItemsDetailsView())
                                        .foregroundColor(Color.black)
                                    
                                    Spacer()}
                                .padding()}
                        }
                        }).padding(.horizontal)
                    LazyVGrid(columns: gridItemLayout, spacing: 12, content: {
                        Section(header: Text("Desserts").font(.title)){
                            ForEach(1..<5, id: \.self){_ in
                                VStack(alignment: .leading){
                                    Spacer()
                                        .frame(width: 100, height: 100)
                                        .background(Color.black)
                                    NavigationLink("Dessert", destination: MenuItemsDetailsView())
                                        .foregroundColor(Color.black)
                                    Spacer()}
                                .padding()}
                        }
                        }).padding(.horizontal)
                }.navigationTitle("Menu")
                    .toolbar{
                        NavigationLink(destination: MenuItemsOptionsView(), label: {Label("Filter", systemImage: "slider.horizontal.3")})
                    }
            }
        }
    }
struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}

