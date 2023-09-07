import SwiftUI
import MomentsOfSpaceModel

extension MeditationsListView {
    struct ItemView: View {
        let meditation: Meditation

        var body: some View {
            ZStack {
                Color(.white)

                HStack {
                    VStack(alignment: .leading, spacing: 16) {
                        Text(meditation.title)
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color(asset: Asset.Colors.darkGray))
                        Text(meditation.subtitle)
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(Color(asset: Asset.Colors.darkGray))
                    }
                    Spacer()
                    Text(meditation.totalDurationInSeconds.description)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 24)
            }
            .cornerRadius(16)
            .shadow(radius: 4)
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
