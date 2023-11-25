//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Noel Craig on 2022-12-27.
//

import SwiftUI

/*
 MVVM Architecture
 Model - data point
 View - UI
 ViewMoedel - manages Models for the View
 */

@main
struct ToDoListApp: App {
 @StateObject   var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
