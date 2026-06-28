import SwiftUI

struct HomeView: View {
    @Environment(\.scenePhase) private var scenePhase
    private let viewModel: HomeViewModel

    init(viewModel: HomeViewModel = HomeViewModel()) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack(spacing: 24) {
            Text(viewModel.title)
                .font(.largeTitle.weight(.semibold))
                .foregroundStyle(.primary)

            Button("Ouvrir Waze") {
                viewModel.openTestWaypoint()
            }
            .buttonStyle(.borderedProminent)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
        .task {
            viewModel.startLocationMonitoring()
        }
        .onChange(of: scenePhase) { _, newPhase in
            viewModel.scenePhaseDidChange(newPhase)
        }
    }
}

#Preview {
    HomeView()
}
