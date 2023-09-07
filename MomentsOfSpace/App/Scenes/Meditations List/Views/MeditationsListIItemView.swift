import SwiftUI
import MomentsOfSpaceModel

extension MeditationsListView {
    struct ItemView: View {
        let meditation: Meditation

        var body: some View {
            HStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text(meditation.title)
                    Text(meditation.subtitle)
                }
                Spacer()
                Text(meditation.totalDurationInSeconds.description)
            }
            .padding()
        }
    }
}

struct MeditationsListIItemView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationsListView.ItemView(
            meditation: .init(
                id: 1,
                audioFiles: [],
                title: "Test",
                subtitle: "Test",
                description: "Test"
            )
        )
    }
}
