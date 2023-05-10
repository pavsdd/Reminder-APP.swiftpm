import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Reminder App")
                    .font(.custom("chalkboard", size: 50))
                    .frame(width: 300, height: 75)
                    .foregroundColor(.purple)
                Spacer()
                
                NavigationLink {
                    ListView()
                } label: {
                    Text("List")
                        .frame(width: 100, height: 100)
                    .font(.custom("chalkboard", size: 45))
                    .foregroundColor(.red)
                }

                
                Spacer()
                
                NavigationLink {
                    CalendarView()
                } label: {
                    Text("Calendar")
                        .frame(width: 200, height: 100)
                    .font(.custom("chalkboard", size: 45))
                    .foregroundColor(.blue)
                }

                    
                Spacer()
                    
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.yellow)
        }
    }
}
