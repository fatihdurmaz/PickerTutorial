# SwiftUI Picker Tutorial

![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg)
![Platform](https://img.shields.io/badge/Platform-iOS17%20-red.svg)
![Platform](https://img.shields.io/badge/SwiftUI-4-green.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

[<img src="https://yourimageshare.com/ib/0AWDbzv6GY.webp">](https://www.youtube.com/watch?v=U3HMSfeEqBQ "SwiftUI Haptic Feedbacks")

## About
This project is a simple example to learn how to use Picker in SwiftUI. You can make selections from different options using the Picker element and update the interface based on these selections.
## Examples
This project includes three different Picker examples:
### Example 1: Weekdays
In this example, you can select the weekdays. The selected day will be displayed in the text below.
```swift
  enum Weekday: String, CaseIterable, Identifiable {
      case monday, tuesday, wednesday, thursday, friday, saturday, sunday
      var id: Weekday {self}
  }
  @State private var selectDay: Weekday = .monday
  
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
```
### Example 2: Color Selection
In this example, you can choose from a range of colors. The selected color will be displayed in the text below.
```swift
    let colors = ["Red","Blue","Green","Yellow"]
    @State private var selectedColor = "Red"
    Picker("Choose Color", systemImage: "paintpalette", selection: $selectedColor) {
        ForEach(colors, id:\.self){
            Text($0)
        }
    }
    .foregroundStyle(.blue)
    .pickerStyle(.inline)
```
### Example 3: Cities
In this example, you can select from a list of cities. The selected city will be displayed in the text below.


