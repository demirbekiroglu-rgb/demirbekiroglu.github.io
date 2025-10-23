import SwiftUI

import SwiftUI

struct ContentView: View {
    // Milestone 2: Variables
    @State private var hour = 10
    @State private var minuteSeg = 0   // 0=up, 1=right, 2=down, 3=left
    
    var body: some View {
        VStack {
            // Milestone 2: Text to show hour
            Text("Hour: \(hour)")
                .font(.title)
                .padding()
            
            // Milestone 1: Clock face
            ZStack {
                // Face color changes based on logic
                if hour % 2 == 0 {
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.red)
                } else {
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(hour < 12 ? .yellow : .blue)
                }
                
                // Hour hand (short rectangle)
                Rectangle()
                    .frame(width: 10, height: 60)
                    .foregroundColor(.black)
                    .offset(y: -30)
                
                // Minute hand (long rectangle) with if–else rotation
                if minuteSeg == 0 {
                    Rectangle()
                        .frame(width: 6, height: 80)
                        .foregroundColor(.black)
                        .offset(y: -40)
                } else if minuteSeg == 1 {
                    Rectangle()
                        .frame(width: 6, height: 80)
                        .foregroundColor(.black)
                        .rotationEffect(.degrees(90))
                        .offset(x: 40)
                } else if minuteSeg == 2 {
                    Rectangle()
                        .frame(width: 6, height: 80)
                        .foregroundColor(.black)
                        .rotationEffect(.degrees(180))
                        .offset(y: 40)
                } else {
                    Rectangle()
                        .frame(width: 6, height: 80)
                        .foregroundColor(.black)
                        .rotationEffect(.degrees(270))
                        .offset(x: -40)
                }
                
                // Small circle in the center
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
            }
            .onTapGesture {
                // Milestone 3: Interaction
                minuteSeg += 1
                if minuteSeg == 4 {
                    minuteSeg = 0
                    hour += 1
                }
                if hour == 24 {
                    hour = 0
                }
            }
            .padding()
            
            // Milestone 4: Extra Design
            HStack {
                Text(hour < 12 ? "AM" : "PM")
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black))
                
                Spacer()
                
                Text("Hour: \(hour)")
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.black))
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ContentView()
}

