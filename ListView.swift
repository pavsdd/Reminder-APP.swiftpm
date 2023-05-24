import SwiftUI
struct ListView: View {
    @State var tasks: [taskDescription] = []
    
    var body: some View {
        VStack{
            Text("Tasks")
                .font(.custom("chalkboard", size: 40))
                .frame(width: 200, height: 50)
            Divider()
                       
                Spacer()
                
            List(tasks, id: \.self) { Task in
                taskView(currentTask: Task)
            }
                NavigationLink {
                    ListCreation(tasks: $tasks)
                } label: {
                    Text("Add Item")
                        .frame(width: 175
                               , height: 75)
                        .font(.custom("chalkboard", size: 30))
                        .background(.red)
                        .foregroundColor(.white)
                    
                }
                .padding()
                
            }
           }
}
