//
//  HealthAppView.swift
//  TestSwiftUI
//
//  Created by Shanindu Rajapaksha on 2024-12-12.
//
import SwiftUI

struct HealthAppView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            ScrollView{
                //Title
                HStack{
                    Text("Summary")
                        .font(.title)
                        .bold()
                    Spacer()
                    Image("city")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .clipShape(.circle)
                        .overlay(
                            Circle().stroke(Color.blue, lineWidth: 4)
                        )
                        .shadow(radius: 10)
                }
                .padding()
                
                Spacer()
                
                HStack{
                    Text("Pinned")
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text("Edit")
                        .foregroundColor(.blue)
                        .font(.title3)
                }
                
                //Sleep
                GroupBox(){
                    HStack{
                        Image(systemName: "bed.double.fill")
                        Text("Sleep")
                        Spacer()
                        Text("6:20 AM")
                        Image(systemName: "chevron.right")
                    }
                    Spacer()
                    HStack{
                        VStack{
                            Text("Time Asleep")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Spacer().frame(height: 10)
                            Text("6hr 18 min")
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        Spacer()
                        Image(systemName: "chart.bar.fill")
                    }
                }
                .frame(height: 140)
                
                //Steps
                GroupBox(){
                    HStack{
                        Image(systemName: "flame.fill")
                        Text("Steps")
                        Spacer()
                        Text("7:01 PM")
                        Image(systemName: "chevron.right")
                    }
                    Spacer()
                    HStack{
                        VStack{
                            Text("2,173 steps")
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        Spacer()
                        Image(systemName: "chart.pie.fill")
                    }
                }
                .frame(height: 140)
                
                //Workout
                GroupBox(){
                    HStack{
                        Image(systemName: "figure.run")
                        Text("Workout")
                        Spacer()
                        Text("5:45 PM")
                        Image(systemName: "chevron.right")
                    }
                    Spacer()
                    HStack{
                        VStack{
                            Text("30 Mins")
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        Spacer()
                        Image(systemName: "heart.text.clipboard.fill")
                    }
                }
                .frame(height: 140)
                
                //Settings
                GroupBox(label: Label("Settings",systemImage: "gear")){
                    Toggle("Allow Notifications", isOn: .constant(true))
                    Toggle("Allow Location", isOn: .constant(true))
                }
            }
            .padding()
        }
    }
}

#Preview {
    HealthAppView()
}
