//
//  taskView.swift
//  Reminder APP
//
//  Created by Vasil Popov on 4/26/23.
//

import SwiftUI

struct taskView: View {
    @State var currentTask: taskDescription
    var body: some View {
        VStack{
            Text(currentTask.name)
//            Text(currentTask.priority)
        }
    }
}


