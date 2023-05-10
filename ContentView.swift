import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Reminder App")
                    .font(.custom("chalkboard", size: 30))
                    .frame(width: 200, height: 75)
                    .foregroundColor(.blue)
                Spacer()
                
                NavigationLink {
                    ListView()
                } label: {
                    Text("List")
                        .frame(width: 100, height: 100)
                    .font(.custom("chalkboard", size: 30))
                    .foregroundColor(.red)
                }

                
                Spacer()
                
                NavigationLink {
                    CalendarView()
                } label: {
                    Text("Calendar")
                        .frame(width: 200, height: 100)
                    .font(.custom("chalkboard", size: 30))
                    .foregroundColor(.blue)
                }

                    
                Spacer()
                    
            }
           
        }
    }
}
