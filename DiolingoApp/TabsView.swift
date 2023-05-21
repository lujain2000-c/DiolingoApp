//
//  TabsView.swift
//  DiolingoApp
//
//  Created by لجين إبراهيم الكنهل on 01/11/1444 AH.
//

import SwiftUI

struct TabsView: View {
    // @State var selectedTab: Int = 0
     var body: some View {
         
         TabView {
             HomePageView()
                // .badge(2)
                 .tabItem {
                     Label("Received", systemImage: "house")
                 }
             ProfileView()
                 .tabItem {
                     Label("Sent", systemImage: "person.crop.circle")
                 }
             AlertsView()
                // .badge("!")
                 .tabItem {
                     Label("Account", systemImage: "bell")
                 }
         } .onAppear() { UITabBar.appearance().barTintColor = .blue}
//         ZStack{
//
//             TabView {
//                 HomePageView()
//                            .tabItem {
//                               Image( "Home")
//                            }
//                 AlertsView()
//                              .tabItem {
//                                 Image( "3"  )
//                               }.tag(4)
//
//
//                 ProfileView()
//                            .tabItem {
//                                Image(  "Profile")
//                            }
//         }
//         }
//        .onAppear() {
//             UITabBar.appearance().barTintColor = .blue
         
 //        TabView {
 //
 //            ContentView()
 //                .tabItem {
 //                    Label("Menu", systemImage: "list.dash")
 //                }
 //            HomePageView()
 //                .tabItem {
 //                    Label("Order", systemImage: "square.and.pencil")
 //                 //   Image(  "5"  )
 //                }
 //
 //            ProfileView()
 //                .tabItem {
 //                    Image( "Profile"  )
 //                }
 ////            AlertsView()
 ////                .tabItem {
 ////                    Image( "3"  )
 ////                }.tag(4)
 //        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
