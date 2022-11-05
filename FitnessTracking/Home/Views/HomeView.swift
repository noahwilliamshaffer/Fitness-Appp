//
//  HomeView.swift
//  FitnessTracking
//
//  Created by Matthew Kolnicki on 10/23/22.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        Text("Workouts")
    }
}

struct DietView: View {
    var body: some View {
        Text("Diet")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Fitness Profile")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings")
    }
}

struct LogoutView: View {
    @EnvironmentObject var sessionService: SessionServiceImpl
    var body: some View{
        VStack{
            ButtonView(title: "Logout"){
                sessionService.logout()
            }
        }
    }
}

struct HomeView: View {
    
    var body: some View {
        TabView {
            WorkoutView()
                .tabItem {
                    Label("Workouts", systemImage: "figure.cooldown")
                }
            DietView()
                .tabItem {
                    Label("Diet", systemImage: "fork.knife")
                }
            ProfileView()
                .tabItem {
                    Label("Fitness Profile", systemImage: "figure.run")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
            LogoutView()
                .tabItem{
                    Label("Logout", systemImage: "arrow.right")
                }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
