import SwiftUI
struct ListView: View {
    @State var tasks: [taskDescription] = []
    
    var body: some View {
        VStack{
            Text("Tasks")
                .font(.custom("chalkboard", size: 45))
                .frame(width: 190, height: 40)
            Divider()
                       
                Spacer()
                
            List(tasks, id: \.self) { Task in
                taskView(currentTask: Task)
            }
                NavigationLink {
                    ListCreation(tasks: $tasks)
                } label: {
                    Text("Add Item")
                        .frame(width: 170
                               , height: 70)
                        .font(.custom("chalkboard", size: 25))
                        .background(.red)
                        .foregroundColor(.white)
                    
                }
                .padding()
                
            }
           }
}
