import SwiftUI
import Combine

struct Option1View: View {
    @State private var timeRemaining = 6
    @State private var timer: Timer?
    @State private var inhale = true
    
    var body: some View {
        VStack {
            Text("Breathing Technique for quick energy!")
                .font(.largeTitle)
                .padding()
                .multilineTextAlignment(.center)
            
            Text("Time remaining: \(timeRemaining)")
                .padding()
            
            Button(action: startTimer) {
                Text("Start")
            }
            .padding()
            
            Button(action: pauseTimer) {
                Text("Pause")
            }
            .padding()
        }
    }
    
    func startTimer() {
        if timer == nil {
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    timer?.invalidate()
                    timer = nil
                    if inhale {
                        inhale = false
                        timeRemaining = 2
                        Text("Exhale")
                    } else {
                        inhale = true
                        timeRemaining = 6
                        Text("Inhale")
                    }
                    startTimer()
                }
            }
        }
    }
    
    func pauseTimer() {
        timer?.invalidate()
        timer = nil
    }
}

struct Option2View: View {
    @State private var timeRemaining = 300
    @State private var timer: Timer?
    
    var body: some View {
        VStack {
            Text("Meditate with no distractions for:")
                .font(.largeTitle)
                .padding()
            Text("\(timeRemaining)")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Button(action: startTimer) {
                    Text("Start")
                }
                Button(action: pauseTimer) {
                    Text("Pause")
                }
                Button(action: resetTimer) {
                    Text("Reset")
                }
            }
            .padding()
        }
    }
    
    func startTimer() {
        if timer == nil {
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    timer?.invalidate()
                    timer = nil
                }
            }
        }
    }
    
    func pauseTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    func resetTimer() {
        timeRemaining = 300
        pauseTimer()
    }
}

struct Option3View: View {
    var body: some View {
        RelaxingExercisesView()
    }
    
    struct RelaxingExercisesView: View {
        var body: some View {
            VStack {
                Text("Relaxing Exercises")
                    .font(.largeTitle)
                    .padding()
                
                Text("Here are some relaxing exercises:")
                    .font(.headline)
                    .padding()
                
                Text("- Deep breathing exercises")
                    .padding()
                    
                
                Text("- Progressive muscle relaxation")
                    .padding()
                
                Text("- Yoga or stretching")
                    .padding()
                
                Spacer()
            }
            .navigationBarTitle("Relaxing Exercises")
        }
    }
}

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        VStack {
            Text("Welcome to the Meditation App! Please select an option:")
                .font(.headline)
                .multilineTextAlignment(.center)
            
            Picker(selection: $selection, label: Text("")) {
                Text("Breathing Arts").tag(0)
                Text("Meditate").tag(1)
                Text("Relaxing Exercises").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            if selection == 0 {
                Option1View()
            } else if selection == 1 {
                Option2View()
            } else {
                Option3View()
            }
        }
    }
}
