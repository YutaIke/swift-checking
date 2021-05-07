## View Control
### Button
<img src="https://user-images.githubusercontent.com/25924137/117438823-0c719b00-af6d-11eb-98c1-e80ff0991677.gif" width="250">

```swift
    @State var number = 0
    var body: some View {
        VStack {
            Text("\(number)")
                .padding()
            Button(action: {
                    number = number + 1
            }) {
                Text("DefaultButtonStyle")
            }.buttonStyle(DefaultButtonStyle())

            Button(action: {
                    number = number + 1
            }) {
                Text("PlainButtonStyle")
            }.buttonStyle(PlainButtonStyle())

            Button(action: {
                    number = number + 1
            }) {
                Text("BorderlessButtonStyle")
            }.buttonStyle(BorderlessButtonStyle())
        }
    }
```

### ColorPicker
<img src="https://user-images.githubusercontent.com/25924137/117438829-0f6c8b80-af6d-11eb-9554-3e1b57cf2dd1.gif" width="250">

```swift
    @State private var selectedColor = Color.red
    var body: some View {
        ColorPicker("ColorPicker", selection: $selectedColor)
            .frame(width: 150)
    }
```

### DatePicker
<img src="https://user-images.githubusercontent.com/25924137/117438850-11364f00-af6d-11eb-9e29-9898db12f2c2.gif" width="250">

```swift
    @State private var date = Date()    
    var body: some View {
        VStack {
            DatePicker(selection: $date, displayedComponents: [.date]) {
                Text("displayedComponents .date")
            }.padding()
            DatePicker(selection: $date, displayedComponents: [.hourAndMinute]) {
                Text("displayedComponents .hourAndMinute")
            }.padding()
        }
    }
```

<img src="https://user-images.githubusercontent.com/25924137/117438860-14c9d600-af6d-11eb-8afd-5c6ff1033765.gif" width="250">

### DisclosureGroup
<img src="https://user-images.githubusercontent.com/25924137/117438865-15fb0300-af6d-11eb-9347-c9dd763dac5a.gif" width="250">

```swift
    struct ToggleStates {
        var oneIsOn: Bool = false
        var twoIsOn: Bool = true
    }
    @State private var toggleStates = ToggleStates()
    @State private var topExpanded: Bool = true

    var body: some View {
        VStack {
            DisclosureGroup("Items", isExpanded: $topExpanded) {
                Toggle("Toggle 1", isOn: $toggleStates.oneIsOn)
                Toggle("Toggle 2", isOn: $toggleStates.twoIsOn)
                DisclosureGroup("Sub-items") {
                    Text("Sub-item 1")
                }
            }.padding()
        }
    }
```
### EditButton
<img src="https://user-images.githubusercontent.com/25924137/117438868-16939980-af6d-11eb-8972-db26a8d26278.gif" width="250">

```swift
    @Environment(\.editMode) var editMode
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]

    var body: some View {
        VStack {
            NavigationView{
                List {
                    ForEach(
                        fruits,
                        id: \.self
                    ) { fruit in
                        Text(fruit)
                    }
                    .onDelete { self.fruits.remove(atOffsets: $0) }
                    .onMove { self.fruits.move(fromOffsets: $0, toOffset: $1) }
                }
                .navigationTitle("Fruits")
                .toolbar { EditButton() }
            }
            Text(String(describing: editMode?.wrappedValue))
        }
    }
```

### Form
<img width="250" alt="Form" src="https://user-images.githubusercontent.com/25924137/117439289-a33e5780-af6d-11eb-8b15-8d1674cf1224.png">

```swift
    @State var toggleState = false
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Text")) {
                    Text("item 1")
                    Text("item 2")
                }
                Section(header: Text("Toggle")) {
                    Toggle(isOn: $toggleState) {
                        Text("item 3")
                    }
                }
                Section(header: Text("Button")) {
                    Button(action: {}) {
                        Text("item 4")
                    }
                }
            }
        }
    }
```

### GroupBox
<img width="250" alt="GroupBox" src="https://user-images.githubusercontent.com/25924137/117439301-a76a7500-af6d-11eb-9a38-07ef5aacaee3.png">

```swift
    var body: some View {
        GroupBox(
            label: Label("Heart Rate", systemImage: "heart.fill").foregroundColor(.red)
        ) {
            Text("Your hear rate is 90 BPM.")
        }.padding()
```

### Label
<img width="250" alt="Label" src="https://user-images.githubusercontent.com/25924137/117446032-7b9fbd00-af76-11eb-9fe8-32d557ed848b.png">

```swift
    var body: some View {
        VStack {
            Label("Label", systemImage: "42.circle")
                .padding()
            Label("Label: TitleOnlyLabelStyle", systemImage: "bolt.fill")
                .padding()
                .labelStyle(TitleOnlyLabelStyle())
            Label("Label: IconOnlyLabelStyle", systemImage: "bolt.fill")
                .padding()
                .labelStyle(IconOnlyLabelStyle())
            Label("Label: TitleAndIconLabelStyle", systemImage: "bolt.fill")
                .padding()
                .labelStyle(TitleAndIconLabelStyle())
            Label {
                Text("bbbb")
                    .font(.body)
                    .foregroundColor(.primary)
                Text("cccc")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            } icon: {
                Circle()
                    .fill(Color.red)
                    .frame(width: 44, height: 44, alignment: .center)
                    .overlay(Text("aaa"))
            }
        }
```

### Link
<img src="https://user-images.githubusercontent.com/25924137/117447487-8e1af600-af78-11eb-973f-484eb1970fba.gif" width="250">

```swift
    var body: some View {
        Link(destination: URL(string: "https://www.google.com/?hl=ja")!) {
            Text("googleを開く")
        }.padding()
        .font(.title)
        .foregroundColor(.green)
    }
```

### Navigation
<img src="https://user-images.githubusercontent.com/25924137/117452306-8eb68b00-af7e-11eb-98a9-c65db6d0945e.gif" width="250">

<img src="https://user-images.githubusercontent.com/25924137/117451065-f9ff5d80-af7c-11eb-8f55-dbe25beccbee.gif" width="250">

```swift
    var body: some View {
        VStack {
            NavigationView {
                List {
                    NavigationLink(destination: ButtonView()) {
                        Text("Button Page")
                    }
                    NavigationLink(destination: ColorPickerView()) {
                        Text("ColorPicker Page")
                    }
                }
            }.navigationViewStyle(StackNavigationViewStyle())
            
            NavigationView {
                List {
                    NavigationLink(destination: ButtonView()) {
                        Text("Button Page")
                    }
                    NavigationLink(destination: ColorPickerView()) {
                        Text("ColorPicker Page")
                    }
                }
           }.navigationViewStyle(DoubleColumnNavigationViewStyle())            
        }.navigationBarTitle(Text("Navigation"))
```
