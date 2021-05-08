<img src="https://user-images.githubusercontent.com/25924137/117531786-4f8c4680-b01f-11eb-8540-5bdaccb08a2d.gif" width="250">


# Views 
## Controls
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

```swift
    @State private var date = Date()

    var body: some View {
        ScrollView(.vertical){
            VStack {
                DatePicker(selection: $date) {
                    Text("CompactDatePickerStyle")
                }.datePickerStyle(CompactDatePickerStyle())
                
                DatePicker(selection: $date) {
                    Text("GraphicalDatePickerStyle")
                }.datePickerStyle(GraphicalDatePickerStyle())

                DatePicker(selection: $date) {
                    Text("WheelDatePickerStyle")
                }.datePickerStyle(WheelDatePickerStyle())

                DatePicker(selection: $date) {
                    Text("DefaultDatePickerStyle")
                }.datePickerStyle(DefaultDatePickerStyle())
            }
        }
    }
```

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

### OutlineGroup
<img src="https://user-images.githubusercontent.com/25924137/117474990-82d6c300-af96-11eb-904d-5d57c5ad7173.gif" width="250">

```swift
    struct FileItem: Hashable, Identifiable, CustomStringConvertible {
        var id: Self { self }
        var name: String
        var children: [FileItem]? = nil
        var description: String {
            switch children {
            case nil:
                return "📄 \(name)"
            case .some(let children):
                return children.isEmpty ? "📂 \(name)" : "📁 \(name)"
            }
        }
    }

    let data =
      FileItem(name: "users", children:
        [FileItem(name: "user1234", children:
          [FileItem(name: "Photos", children:
            [FileItem(name: "photo001.jpg"),
             FileItem(name: "photo002.jpg")]),
           FileItem(name: "Movies", children:
             [FileItem(name: "movie001.mp4")]),
              FileItem(name: "Documents", children: [])
          ]),
         FileItem(name: "newuser", children:
           [FileItem(name: "Documents", children: [])
           ])
        ])
    
    var body: some View {
        VStack {
            OutlineGroup(data, id: \.id, children: \.children) { item in
                Text("\(item.description)")
            }.padding()
        }
    }
```

### Picker
<img src="https://user-images.githubusercontent.com/25924137/117484006-7c017d80-afa1-11eb-9c34-658a624826c7.gif" width="250">

```swift
enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry
    
    var id: String { self.rawValue }
}

enum Topping: String, CaseIterable, Identifiable {
    case nuts
    case cookies
    case blueberries
    
    var id: String { self.rawValue }
}

extension Flavor {
    var suggestedTopping: Topping {
        switch self {
        case .chocolate: return .nuts
        case .vanilla: return .cookies
        case .strawberry: return .blueberries
        }
    }
}

struct PickerView: View {
    @State private var selectedFlavor = Flavor.chocolate
    @State private var suggestedTopping: Topping = .cookies
    
    var body: some View {
        VStack {
            Picker(selection: $selectedFlavor, label: Text("Flavor")) {
                ForEach(Flavor.allCases) { flavor in
                    Text(flavor.rawValue.capitalized)
                }
            }
            Text("Selected flavor: \(selectedFlavor.rawValue)")
            Divider()
            Picker(selection: $selectedFlavor, label: Text("Suggest a topping for:")) {
                ForEach(Flavor.allCases) { flavor in
                    Text(flavor.rawValue.capitalized).tag(flavor.suggestedTopping)
                }
            }
            Text("suggestedTopping: \(suggestedTopping.rawValue)")
        }
    }
}
```

<img src="https://user-images.githubusercontent.com/25924137/117484014-7e63d780-afa1-11eb-9e0c-a4bcb83060e2.gif" width="250">


```swift
    @State private var selectedFlavor1 = Flavor.chocolate
    @State private var selectedFlavor2 = Flavor.chocolate
    @State private var selectedFlavor3 = Flavor.chocolate
    @State private var selectedFlavor4 = Flavor.chocolate

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Picker(selection: $selectedFlavor1, label: Text("Flavor: MenuPickerStyle")) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(MenuPickerStyle())
                Text("Selected flavor: \(selectedFlavor1.rawValue)")
                
                Picker(selection: $selectedFlavor2, label: Text("Flavor: WheelPickerStyle")) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(WheelPickerStyle())
                Text("WheelPickerStyle Selected flavor: \(selectedFlavor2.rawValue)")

                Picker(selection: $selectedFlavor3, label: Text("Flavor: WheelPickerStyle")) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(InlinePickerStyle())
                Text("InlinePickerStyle Selected flavor: \(selectedFlavor3.rawValue)")

                Spacer(minLength: 50)
                Picker(selection: $selectedFlavor4, label: Text("Flavor: SegmentedPickerStyle")) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }.pickerStyle(SegmentedPickerStyle())
                Text("SegmentedPickerStyle Selected flavor: \(selectedFlavor4.rawValue)")
        }
   }
```

### ProgressView
<img src="https://user-images.githubusercontent.com/25924137/117488321-3a73d100-afa7-11eb-832c-3659ff5a60c6.gif" width="250">

```swift
    @State private var progress = 0.0
    private let total = 1.0
    
    var body: some View {
        VStack {
            ProgressView("DefaultProgressViewStyle", value: progress, total: total)
                .padding()
            Button("More", action: {
                if (progress + 0.05) < total {
                    progress += 0.05
                } else {
                    progress = total
                }
            })
            
            ProgressView("LinearProgressViewStyle", value: 0.25, total: total)
                .progressViewStyle(LinearProgressViewStyle())
                .padding()

            ProgressView("CircularProgressViewStyle", value: 0.75, total: total)
                .progressViewStyle(CircularProgressViewStyle())
                .padding()

        }
    }
```

### ScrollView
<img src="https://user-images.githubusercontent.com/25924137/117526096-cdd7f100-affd-11eb-8d80-2d6f56fd86f1.gif" width="250">

```swift
        VStack {
            ScrollView(.horizontal) {
                Text(".horizontal test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test")
            }.padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                Text(".horizontal showIndicators: false test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test")
            }.padding()

            ScrollView {
                ScrollViewReader { value in
                    Button("Jump to 30") {
                        withAnimation {
                            value.scrollTo(30, anchor: .top)
                        }
                    }
                    ForEach(1..<51) { index in
                        Image(systemName: "\(index).square")
                            .font(.largeTitle)
                            .frame(height: 70)
                            .id(index)
                    }
                }
            }
        }
```

### Section
<img src="https://user-images.githubusercontent.com/25924137/117526810-91f35a80-b002-11eb-9b42-de8300fc3d1e.gif" width="250">


```swift
    @State private var selectedValue = "C++"
    var body: some View {
        VStack {
            List {
                Section(header: Text("header 果物"), footer: Text("footer 果物")) {
                    Text("桃")
                    Text("りんご")
                    Text("みかん")
                }
                Section(header: Text("header 野菜"), footer: Text("footer 野菜")) {
                    Text("きゅうり")
                    Text("トマト")
                    Text("なす")
                }
            }.frame(height:450)
            Form {
                Section(header: Text("header プログラミング言語"), footer: Text("footer プログラミング言語")) {
                    Picker("プログラミング言語", selection: $selectedValue) {
                        Text("C++").tag("C++")
                        Text("Kotlin").tag("Kotlin")
                        Text("Swift").tag("Swift")
                    }
                }
            }
        }
    }
```

### SecureField / TextField
<img src="https://user-images.githubusercontent.com/25924137/117527022-c4518780-b003-11eb-91ed-c6630802521c.gif" width="250">

```swift
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            TextField(
                "User name (email address)",
                text: $username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .border(Color(UIColor.separator))
                .padding()
            SecureField(
                "Password",
                text: $password
            ) {
                print("ログイン")
            }
            .border(Color(UIColor.separator))
            .padding()
        }
    }
```

### Scroll
<img src="https://user-images.githubusercontent.com/25924137/117529845-02a37280-b015-11eb-9913-a1d2b6a8edd5.gif" width="250">

```swift
    @State private var speed = 50.0
    @State private var isEditing = false

    var body: some View {
        VStack {
            Slider(
                value: $speed,
                in: 0...100,
                step: 5,
                onEditingChanged: { editing in
                    isEditing = editing
                },
                minimumValueLabel: Text("0"),
                maximumValueLabel: Text("100")
            ) {
                Text("Speed")
            }
            Text("\(speed)")
                .foregroundColor(isEditing ? .red : .blue)
        }.padding()
    }
```

### Stepper
<img src="https://user-images.githubusercontent.com/25924137/117530207-d25cd380-b016-11eb-935a-ee96329680dd.gif" width="250">

```swift
    @State private var value1 = 0
    @State private var value2 = 0
    let colors: [Color] = [.orange, .red, .gray, .blue,
                           .green, .purple, .pink]

    func incrementStep() {
        value1 += 1
        if value1 >= colors.count { value1 = 0 }
    }

    func decrementStep() {
        value1 -= 1
        if value1 < 0 { value1 = colors.count - 1 }
    }

    var body: some View {
        VStack {
            Stepper(onIncrement: incrementStep,
                onDecrement: decrementStep) {
                Text("Value: \(value1) Color: \(colors[value1].description)")
            }
            .padding(10)
            .background(colors[value1])
            
            Stepper(value: $value2,
                    in: 1...50,
                    step: 5) {
                Text("Current: \(value2) in 1...50 stepping by 5")
            }.padding(10)
        }
    }
```

### TabView
<img src="https://user-images.githubusercontent.com/25924137/117530611-033e0800-b019-11eb-9c89-f93c08b11b01.gif" width="250">

```swift
    @State private var selection = 1
    var body: some View {
        VStack {
            Text("selection: \(selection)")

            TabView(selection: $selection) {
                Text("The First Tab")
                    .tabItem {
                        Image(systemName: "1.square.fill")
                        Text("First")
                    }
                    .tag(1)
                Text("Another Tab")
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Second")
                    }
                    .tag(2)
                Text("The Last Tab")
                    .tabItem {
                        Image(systemName: "3.square.fill")
                        Text("Third")
                    }
                    .tag(3)
            }
            .font(.headline)
            
        }
    }
```

### Text
<img width="250" alt="Text" src="https://user-images.githubusercontent.com/25924137/117530858-68dec400-b01a-11eb-996d-0ff32aa6f27a.png">

```swift
    var body: some View {
        VStack {
            Text("Hamlet")
                .font(.title)
                .padding()
            
            Text("by William Shakespeare")
                .font(.system(size: 12, weight: .light, design: .serif))
                .italic()
                .padding()

            Text("Brevity is the soul of wit.")
                .frame(width: 100)
                .lineLimit(1)
                .padding()
        }
    }
```

### TextEditor
<img src="https://user-images.githubusercontent.com/25924137/117531108-e0612300-b01b-11eb-9bd8-fe9ce1ad23ab.gif" width="250">

```swift
    @State private var fullText: String = "This is some editable text..."

    var body: some View {
        TextEditor(text: $fullText)
            .foregroundColor(Color.gray)
            .font(.custom("HelveticaNeue", size: 18))
            .lineSpacing(5)
    }
```

### Toggle
<img src="https://user-images.githubusercontent.com/25924137/117531587-1acbbf80-b01e-11eb-91a5-088c7e0423c7.gif" width="250">

```swift
    @State private var vibrateOnRing = true
    
    var body: some View {
        Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
            .toggleStyle(SwitchToggleStyle())
            .padding()
    }
```
