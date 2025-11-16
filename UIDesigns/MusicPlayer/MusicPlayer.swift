// A sample of UI of a custom music player.

import SwiftUI

struct MusicPlayer: View {
    // Song duration in seconds (4:11)
    let songDuration: Double = 251
    
    private var elapsedSeconds: Int {
        Int(Double(songDuration) * songPosition)
    }
    
    private var remainingSeconds: Int {
        max(Int(songDuration) - elapsedSeconds, 0)
    }
    
    @State private var songPosition = 0.2
    @State private var volumeLevel = 0.5
    @State private var isPlaying = false
    
    var body: some View {
        ZStack {
            // Fondo
            LinearGradient(colors: [.blue.opacity(0.6), .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                VStack(spacing: 12) {
                    // Imagen de círculos con un SF Symbol animado al reproducirse.
                    Circle()
                        .fill(Color.myBeige)
                        .strokeBorder(.myBeige, lineWidth: 20)
                        .strokeBorder(.myOrange, lineWidth: 60)
                        .strokeBorder(.myRed, lineWidth: 30)
                        .frame(height: 250)
                        .shadow(color: .myRed, radius: 2)
                        .overlay {
                            Image(systemName: "waveform.mid")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                                .foregroundStyle(.black.opacity(0.5).gradient)
                                .symbolEffect(.variableColor.iterative.dimInactiveLayers.nonReversing, options: .repeat(.continuous), isActive: isPlaying ? true : false)
                        }
                    Spacer()
                    
                    Text("Paranoid Android")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.white)
                        .shadow(radius: 5)
                    
                    Text("Radiohead")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .shadow(radius: 5)
                }
                .padding(.top, 30)
                
                HStack {
                    Text(formatDuration(elapsedSeconds))
                        .foregroundStyle(.white)
                    Spacer()
                    Text("-\(formatDuration(remainingSeconds))")
                        .foregroundStyle(.white)
                }
                .padding(.horizontal)
                
                // Progreso canción
                Slider(value: $songPosition)
                    .padding(.bottom)
                    .tint(.myRed)
                
                // Navegación
                HStack(alignment: .center) {
                    Button("Explorar") { }
                        .buttonStyle(.navigatePlayerButton)
                    
                    Button("Música") { }
                        .buttonStyle(.navigatePlayerButton)
                    
                    Button("Listas") { }
                        .buttonStyle(.navigatePlayerButton)
                }
                .padding(.bottom)
                
                // Controles
                HStack(alignment: .center, spacing: 20) {
                    
                    // Backward
                    Button { } label: {
                        Image(systemName: "backward.fill")
                    }
                    .buttonStyle(.playerButton)
                    
                    // Play
                    Button {
                        isPlaying.toggle()
                        print(isPlaying)
                    } label: {
                        Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                    }
                    .buttonStyle(.playerButton)
                    
                    // Forward
                    Button {
                        
                    } label: {
                        Image(systemName: "forward.fill")
                    }
                    .buttonStyle(.playerButton)
                }
                .padding(.bottom)
                
                // Volumen
                HStack {
                    Image(systemName: "speaker.fill")
                        .foregroundStyle(.white)
                    Slider(value: $volumeLevel)
                        .tint(.myOrange)
                        .padding(.horizontal, 25)
                        .padding(.bottom)
                        .sliderThumbVisibility(.hidden)
                    Image(systemName: "speaker.wave.3.fill")
                        .foregroundStyle(.white)
                }
                .padding(.bottom)
            }
            .safeAreaPadding(15)
        }
    }
    
    private func formatDuration(_ songDuration: Int) -> String {
        let minutes = songDuration / 60
        let seconds = songDuration % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
}

#Preview {
    MusicPlayer()
}
