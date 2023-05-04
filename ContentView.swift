import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Reminder App")
                    .italic()
                    .fontWeight(.bold)
                    .font(.system(size: 36))
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                Spacer()
                
                NavigationLink("List"){
                    ListView()
                        .frame(width: 500, height: 85)  .background(.blue)
                    .font(.title)
                }
                
                Spacer()
                    NavigationLink("Calendar"){
                        CalendarView()
                        .frame(width: 500, height: 50) .background(.blue)
                        .font(.title)
                    }
                    
                Spacer()
                    
            }
           
        }
    }
}
