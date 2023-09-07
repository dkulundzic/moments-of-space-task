import SwiftUI
import ComposableArchitecture

@main
struct MomentsOfSpaceApp: App {
    var body: some Scene {
        WindowGroup {
            MeditationsListView(
                store: Store(initialState: MeditationsListReducer.State()) {
                    MeditationsListReducer()
                }
            )
        }
    }
}
