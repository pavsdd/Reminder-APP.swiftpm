//
//  ListView.swift
//  Reminder APP
//
//  Created by Ben Wojtowicz on 4/24/23.
//

import SwiftUI
struct ListView: View {
    @State var tasks: [taskDescription] = []
    var body: some View {
        VStack{
            Text("Tasks")
            NavigationLink("add item"){
                ListCreation(tasks: $tasks)
            }
            List(tasks, id: \.self) { currentTask in
                taskView(currentTask: currentTask)
            }
        }
    }
}
