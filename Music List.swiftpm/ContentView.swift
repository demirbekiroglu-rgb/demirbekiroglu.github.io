import SwiftUI

struct ContentView: View {
  
    let musicPlaylist = ["🎸 Guitar Solo", "🥁 Drum Beat", "🎹 Piano Tune", "🎤 Vocal Hit"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("My Array Map V1 – Music Edition")
                .font(.title)
                .padding(.bottom, 20)
            
            
            ForEach(0..<musicPlaylist.count, id: \.self) { index in
                Text("Item \(index): \(musicPlaylist[index])")
            }
            
            
            Text("Total songs: \(musicPlaylist.count)")
                .padding(.top, 20)
                .font(.headline)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

