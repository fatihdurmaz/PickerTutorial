//
//  ContentView.swift
//  PickerTutorial
//
//  Created by Fatih Durmaz on 8.02.2024.
//

import SwiftUI

struct ContentView: View {

    enum Weekday: String, CaseIterable, Identifiable {
        case monday, tuesday, wednesday, thursday, friday, saturday, sunday
        var id: Weekday {self}
    }
    @State private var selectDay: Weekday = .monday
    
    
    let colors = ["Red","Blue","Green","Yellow"]
    @State private var selectedColor = "Red"
    
    
    let cities = [
    ("İstanbul", 34),
    ("Ankara", 06),
    ("İzmir", 35),
    ("Bursa", 16),
    ("Elazığ", 23)
    ]
    @State private var selectedCityIndex = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section {
                        
                        Picker("Choose Day", systemImage: "calendar", selection: $selectDay) {
                            ForEach(Weekday.allCases){ day in
                                Text(day.rawValue.capitalized)
                            }
                        }
                        .foregroundStyle(.red)
                        .onChange(of: selectDay) { oldValue, newValue in
                            print(oldValue.rawValue.capitalized)
                            print(newValue.rawValue.capitalized)
                        }
                        .pickerStyle(.navigationLink)
                        
                        HStack {
                            Text("Selected Day:")
                            Text(selectDay.rawValue.capitalized)
                                .italic()
                                .bold()
                        }
                        
                    } header: {
                        Text("Example 1")
                            .textCase(.none)
                            .bold()
                    }
                    
                    Section {
                        Picker("Choose Color", systemImage: "paintpalette", selection: $selectedColor) {
                            ForEach(colors, id:\.self){
                                Text($0)
                            }
                        }
                        .foregroundStyle(.blue)
                        .pickerStyle(.inline)
                        
                        HStack {
                            Text("Selected Color:")
                            Text(selectedColor)
                                .italic()
                                .bold()
                        }
                        
                    } header: {
                        Text("Example 2")
                            .textCase(.none)
                            .bold()
                    }
                    
                    Section {
                        
                        Picker("Choose Cities", systemImage: "licenseplate", selection: $selectedCityIndex) {
                            ForEach(cities.indices, id:\.self){ index in
                                Text(cities[index].0)
                            }
                        }
                        .foregroundStyle(.orange)
                        .onChange(of: selectedCityIndex) { oldValue, newValue in
                            print(cities[oldValue].1 + cities[newValue].1)
                        }
                        .pickerStyle(.automatic)
                        
                        HStack {
                            Text("Selected City:")
                            Text(cities[selectedCityIndex].0)
                                .italic()
                                .bold()
                        }
                        
                    } header: {
                        Text("Example 3")
                            .textCase(.none)
                            .bold()
                    }
                }
            }
            .navigationTitle("Picker Tutorial")
        }
    }
}

#Preview {
    ContentView()
}
