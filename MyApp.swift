import SwiftUI

@main
struct MyApp: App {
    @State var events: [EventDescription] = []
    var body: some Scene {
        WindowGroup {
            ContentView(events: $events)
        }
    }
}
