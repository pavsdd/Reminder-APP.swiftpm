//
//  ListView.swift
//  Reminder APP
//
//  Created by Ben Wojtowicz on 4/24/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack{
            Text("Tasks")
            NavigationLink("add item"){
                ListCreation()
            }
        }
    }
}
