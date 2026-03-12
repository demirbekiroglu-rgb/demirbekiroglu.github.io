import SwiftUI

struct ContentView: View {
    struct Topic: Identifiable, Hashable {
        let id = UUID()
        let section: String
        let title: String
        let icon: String
        let description: String
        let cardColor: Color
        let badgeColor: Color
    }

    enum Screen {
        case home
        case menu
        case detail(Topic)
    }

    private let topics: [Topic] = [
        Topic(
            section: "Section 5",
            title: "Health care",
            icon: "🩺",
            description: "Health care is important because it helps prevent illnesses and treat problems early. It keeps people healthy by providing check-ups, medicines, and support when needed. Good health care also improves quality of life and helps people live longer, safer lives.",
            cardColor: Color(red: 0.80, green: 0.92, blue: 0.94),
            badgeColor: Color(red: 0.92, green: 0.96, blue: 0.98)
        ),
        Topic(
            section: "Section 10",
            title: "Sports",
            icon: "🎾",
            description: "Sports are important because they keep our body strong, active, and healthy. They help reduce stress, improve mood, and increase energy levels. Playing sports also teaches teamwork, discipline, confidence, and helps us build good habits for life.",
            cardColor: Color(red: 0.95, green: 0.91, blue: 0.78),
            badgeColor: Color(red: 0.98, green: 0.95, blue: 0.86)
        ),
        Topic(
            section: "Section 9",
            title: "Healthy food",
            icon: "🥬",
            description: "Healthy food is important because it gives our body the energy and nutrients it needs to grow and stay strong. Eating healthy helps our heart, brain, and muscles work better every day. It also strengthens the immune system, so we get sick less often.",
            cardColor: Color(red: 0.78, green: 0.89, blue: 0.82),
            badgeColor: Color(red: 0.88, green: 0.95, blue: 0.90)
        ),
        Topic(
            section: "Section 6",
            title: "Peaceful mind",
            icon: "🧠",
            description: "A peaceful mind is important because it helps us think clearly and make better decisions. It reduces stress and allows us to handle problems calmly. Having a peaceful mind also improves focus, happiness, and overall well-being.",
            cardColor: Color(red: 0.86, green: 0.83, blue: 0.95),
            badgeColor: Color(red: 0.93, green: 0.91, blue: 0.98)
        )
    ]

    @State private var screen: Screen = .home

    var body: some View {
        ZStack {
            wallpaper

            switch screen {
            case .home:
                homeView
            case .menu:
                menuView
            case .detail(let topic):
                detailView(topic)
            }
        }
        .animation(.spring(response: 0.38, dampingFraction: 0.86), value: stateKey)
    }

    private var stateKey: String {
        switch screen {
        case .home: return "home"
        case .menu: return "menu"
        case .detail(let topic): return topic.section
        }
    }

    private var wallpaper: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.03, green: 0.17, blue: 0.56),
                    Color(red: 0.18, green: 0.54, blue: 0.86),
                    Color(red: 0.44, green: 0.84, blue: 0.95)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            Circle()
                .fill(Color.white.opacity(0.35))
                .frame(width: 430, height: 430)
                .blur(radius: 10)
                .offset(x: 150, y: -250)

            Ellipse()
                .fill(Color.white.opacity(0.28))
                .frame(width: 640, height: 220)
                .rotationEffect(.degrees(-8))
                .offset(x: 120, y: -80)

            Ellipse()
                .fill(Color.white.opacity(0.24))
                .frame(width: 600, height: 200)
                .rotationEffect(.degrees(8))
                .offset(x: -120, y: 170)
        }
    }

    private var homeView: some View {
        VStack(spacing: 24) {
            HStack {
                Text("HEALTH")
                    .font(.system(size: 40, weight: .light, design: .serif))
                    .tracking(6)
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, 60)

            Spacer()

            Button {
                screen = .menu
            } label: {
                VStack(spacing: 4) {
                    Text("🫶")
                        .font(.system(size: 34))
                    Text("Open")
                        .font(.caption.weight(.medium))
                        .foregroundStyle(.black.opacity(0.65))
                }
                .frame(width: 70, height: 70)
                .background(Color.white.opacity(0.9), in: RoundedRectangle(cornerRadius: 14, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: 14, style: .continuous)
                        .stroke(.white.opacity(0.65), lineWidth: 1)
                )
                .shadow(color: .black.opacity(0.22), radius: 8, x: 0, y: 6)
            }

            Spacer()
        }
    }

    private var menuView: some View {
        VStack(spacing: 14) {
            Spacer(minLength: 60)

            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                ForEach(topics) { topic in
                    Button {
                        screen = .detail(topic)
                    } label: {
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Text(topic.section)
                                    .font(.system(size: 16, weight: .bold, design: .rounded))
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 6)
                                    .background(topic.badgeColor, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                                Spacer()
                            }

                            Spacer(minLength: 4)

                            HStack(alignment: .bottom) {
                                Text(topic.title)
                                    .font(.custom("Noteworthy", size: 28))
                                    .foregroundStyle(.black.opacity(0.75))
                                    .lineLimit(2)
                                Spacer(minLength: 4)
                                Text(topic.icon)
                                    .font(.system(size: 34))
                            }
                        }
                        .padding(12)
                        .frame(maxWidth: .infinity, minHeight: 140)
                        .background(topic.cardColor, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .stroke(.white.opacity(0.45), lineWidth: 1)
                        )
                    }
                }
            }
            .padding(.horizontal, 16)

            HStack(spacing: 10) {
                Button("Back") { screen = .home }
                    .buttonStyle(NavButtonStyle())
            }
            .padding(.top, 2)

            Spacer()
        }
    }

    private func detailView(_ topic: Topic) -> some View {
        VStack(spacing: 12) {
            HStack {
                Text(topic.section)
                    .font(.system(size: 38, weight: .bold, design: .rounded))
                    .padding(.horizontal, 14)
                    .padding(.vertical, 8)
                    .background(Color.white.opacity(0.9), in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.top, 42)

            VStack(alignment: .leading, spacing: 14) {
                HStack {
                    Text(topic.icon)
                        .font(.system(size: 48))
                    Text(topic.title)
                        .font(.custom("Noteworthy", size: 40))
                        .foregroundStyle(.black.opacity(0.75))
                }

                Text(topic.description)
                    .font(.custom("Noteworthy", size: 34))
                    .foregroundStyle(.black.opacity(0.75))
                    .lineSpacing(10)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(18)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(topic.cardColor, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
            .overlay(
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(.white.opacity(0.5), lineWidth: 1)
            )
            .padding(.horizontal, 16)

            HStack(spacing: 10) {
                Button("Sections") { screen = .menu }
                    .buttonStyle(NavButtonStyle())
                Button("Home") { screen = .home }
                    .buttonStyle(NavButtonStyle())
            }

            Spacer(minLength: 24)
        }
    }
}

private struct NavButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 16, weight: .semibold, design: .rounded))
            .foregroundStyle(.white)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .background(Color.black.opacity(0.24), in: Capsule())
            .overlay(Capsule().stroke(.white.opacity(0.35), lineWidth: 1))
            .scaleEffect(configuration.isPressed ? 0.96 : 1)
            .animation(.easeOut(duration: 0.12), value: configuration.isPressed)
    }
}

#Preview {
    ContentView()
}
