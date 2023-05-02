import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Reminder App")
                    .italic()
                    .fontWeight(.bold)
                    .font(.system(size: 36))
                Spacer()
                
                NavigationLink("List"){
                    ListView()
                }
                
                Spacer()
                    NavigationLink("Calendar"){
                        CalendarView()
                    }
                Spacer()
                
            }
           
        }
    }
}
