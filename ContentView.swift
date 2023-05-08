import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Reminder App")
                    .font(.custom("chalkboard", size: 40))
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                Spacer()
                
                NavigationLink {
                    ListView()
                } label: {
                    Text("List")
                        .frame(width: 100, height: 100)
                    .font(.custom("chalkboard", size: 30))
                }

                
                Spacer()
                
                NavigationLink {
                    CalendarView()
                } label: {
                    Text("Calendar")
                        .frame(width: 100, height: 100)
                    .font(.custom("chalkboard", size: 30))
                }

                    
                Spacer()
                    
            }
           
        }
    }
}
