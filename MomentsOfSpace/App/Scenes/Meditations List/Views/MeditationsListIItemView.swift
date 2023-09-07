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
                            .fontWeight(.heavy)
                            .foregroundColor(Color(asset: Asset.Colors.darkGray))
                        Text(meditation.subtitle)
                            .font(.subheadline)
                            .fontWeight(.light)
                            .foregroundColor(Color(asset: Asset.Colors.darkGray))
                    }
                    Spacer()
                    Text(
                        meditation.totalDurationInSeconds.formatted(.units(allowed: [.hours, .minutes]))
                    )
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color(asset: Asset.Colors.darkGray))
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
