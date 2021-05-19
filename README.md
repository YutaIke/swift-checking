SwiftUIに内包されているStructをまとめています。動作確認用です。
今後も増やしていく予定です。

また、端末で動作確認できるようにもしているので、もし興味があればローカルで端末にビルドいただければと思います。
<img src="https://user-images.githubusercontent.com/25924137/117632844-703bd400-b1b8-11eb-9af0-927118808902.gif" width="250">


# Views 
## Controls
### Button
<details><summary>開く</summary>
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

</details>
    
### ColorPicker
<details><summary>開く</summary>
<img src="https://user-images.githubusercontent.com/25924137/117438829-0f6c8b80-af6d-11eb-9554-3e1b57cf2dd1.gif" width="250">

```swift
    @State private var selectedColor = Color.red
    var body: some View {
        ColorPicker("ColorPicker", selection: $selectedColor)
            .frame(width: 150)
    }
```
    
</details>

### DatePicker
<details><summary>開く</summary>
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
</details>

### DisclosureGroup
<details><summary>開く</summary>
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
</details>

### EditButton
<details><summary>開く</summary>
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
</details>

### Form
<details><summary>開く</summary>
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
</details>

### GroupBox
<details><summary>開く</summary>
<img width="250" alt="GroupBox" src="https://user-images.githubusercontent.com/25924137/117439301-a76a7500-af6d-11eb-9a38-07ef5aacaee3.png">

```swift
    var body: some View {
        GroupBox(
            label: Label("Heart Rate", systemImage: "heart.fill").foregroundColor(.red)
        ) {
            Text("Your hear rate is 90 BPM.")
        }.padding()
```
</details>

### Label
<details><summary>開く</summary>
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
</details>

### Link
<details><summary>開く</summary>
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
</details>

### Navigation
<details><summary>開く</summary>
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
</details>

### OutlineGroup
<details><summary>開く</summary>
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
</details>

### Picker
<details><summary>開く</summary>
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
</details>

### ProgressView
<details><summary>開く</summary>
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
</details>
    
### ScrollView
<details><summary>開く</summary>
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
</details>
    
### Section
<details><summary>開く</summary>
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
</details>
    
### SecureField / TextField
<details><summary>開く</summary>
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
</details>
    
### Scroll
<details><summary>開く</summary>
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
</details>
    
### Stepper
<details><summary>開く</summary>
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
</details>

### TabView
<details><summary>開く</summary>
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
</details>
    
### Text
<details><summary>開く</summary>
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
</details>
    
### TextEditor
<details><summary>開く</summary>
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
</details>

### Toggle
<details><summary>開く</summary>
<img src="https://user-images.githubusercontent.com/25924137/117531587-1acbbf80-b01e-11eb-91a5-088c7e0423c7.gif" width="250">

```swift
    @State private var vibrateOnRing = true
    
    var body: some View {
        Toggle("Vibrate on Ring", isOn: $vibrateOnRing)
            .toggleStyle(SwitchToggleStyle())
            .padding()
    }
```
</details>

    
## Layout
### Depth Stack
<details><summary>開く</summary>
<img width="250" alt="ZStack" src="https://user-images.githubusercontent.com/25924137/117626803-75962000-b1b2-11eb-8efc-a8e57de00f18.png">
<img width="250" alt="ZStack2" src="https://user-images.githubusercontent.com/25924137/117626806-775fe380-b1b2-11eb-8d56-e9641c01db58.png">

```swift
        Group {
            Text("ZStack")
            ZStack {
                ForEach(0..<colors.count) {
                    Rectangle()
                        .fill(colors[$0])
                        .frame(width: 100, height: 100)
                        .offset(x: CGFloat($0) * 10.0,
                                y: CGFloat($0) * 10.0)
                }
            }.padding(.bottom, 70)
        }
        Group {
            Text("ZStack(alignment: .center)")
            ZStack(alignment: .center) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 50)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width:50, height: 100)
            }
            .border(Color.green, width: 1)
        }
        Group {
            Text("ZStack(alignment: .bottomLeading)")
            ZStack(alignment: .bottomLeading) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 50)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width:50, height: 100)
            }
            .border(Color.green, width: 1)
        }
        Group {
            Text("ZStack(alignment: .bottomTrailing)")
            ZStack(alignment: .bottomTrailing) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 50)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width:50, height: 100)
            }
            .border(Color.green, width: 1)
        }
        Group {
            Text("ZStack(alignment: .topLeading)")
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 50)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width:50, height: 100)
            }
            .border(Color.green, width: 1)
        }
        Group {
            Text("ZStack(alignment: .topTrailing)")
            ZStack(alignment: .topTrailing) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 50)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width:50, height: 100)
            }
            .border(Color.green, width: 1)
        }
        Group {
            Text("ZStack(alignment: .top)")
            ZStack(alignment: .top) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 50)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width:50, height: 100)
            }
            .border(Color.green, width: 1)
        }
        Group {
            Text("ZStack(alignment: .leading)")
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 50)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width:50, height: 100)
            }
            .border(Color.green, width: 1)
        }
        Group {
            Text("ZStack(alignment: .trailing)")
            ZStack(alignment: .trailing) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 50)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width:50, height: 100)
            }
            .border(Color.green, width: 1)
        }
```
</details>

### HStack 
<details><summary>開く</summary>
<img width="250" alt="HStack" src="https://user-images.githubusercontent.com/25924137/117569922-eb42b300-b102-11eb-9114-3fc370171254.png">

```swift
    var body: some View {
        VStack {
            Text("default")
                .frame(maxWidth: 400, alignment: .leading)
                .padding(.top, 20)
            HStack {
                Text("First")
                    .border(Color.red, width: 2.0)
                Image(systemName: "2.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .border(Color.green, width: 2.0)
                Text("Third Third Third Third Third")
                    .border(Color.blue, width: 2.0)
            }
            .frame(width: 400)
            .border(Color.red)

            Text("alignment: .top")
                .frame(maxWidth: 400, alignment: .leading)
                .padding(.top, 20)
            HStack(alignment: .top) {
                Text("First")
                    .border(Color.red, width: 2.0)
                Image(systemName: "2.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .border(Color.green, width: 2.0)
                Text("Third Third Third Third Third")
                    .border(Color.blue, width: 2.0)
            }
            .frame(width: 400)
            .border(Color.red)

            Text("alignment: .bottom")
                .frame(maxWidth: 400, alignment: .leading)
                .padding(.top, 20)
            HStack(alignment: .bottom) {
                Text("First")
                    .border(Color.red, width: 2.0)
                Image(systemName: "2.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .border(Color.green, width: 2.0)
                Text("Third Third Third Third Third")
                    .border(Color.blue, width: 2.0)
            }
            .frame(width: 400)
            .border(Color.red)

            Text("spacing: 50")
                .frame(maxWidth: 400, alignment: .leading)
                .padding(.top, 20)
            HStack(spacing: 50) {
                Text("First")
                    .border(Color.red, width: 2.0)
                Image(systemName: "2.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .border(Color.green, width: 2.0)
                Text("Third Third Third Third Third")
                    .border(Color.blue, width: 2.0)
            }
            .frame(width: 400)
            .border(Color.red)            
        }
    }
```
</details>

### GeometryReader
<details><summary>開く</summary>
<img src="https://user-images.githubusercontent.com/25924137/117568570-f6deab80-b0fb-11eb-86cc-4cacb97172cf.gif" width="250">

```swift
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                GeometryReader { geometry in
                    Text(#"""
                        geometry.frame(in: .global).origin.x: \#(geometry.frame(in: .global).origin.x)
                        geometry.frame(in: .global).origin.y: \#(geometry.frame(in: .global).origin.y)
                        geometry.frame(in: .global).width: \#(geometry.frame(in: .global).width)
                        geometry.frame(in: .global).height: \#(geometry.frame(in: .global).height)
                        geometry.frame(in: .global).minX: \#(geometry.frame(in: .global).minX)
                        geometry.frame(in: .global).midX: \#(geometry.frame(in: .global).midX)
                        geometry.frame(in: .global).maxX: \#(geometry.frame(in: .global).maxX)
                        geometry.frame(in: .global).minY: \#(geometry.frame(in: .global).minY)
                        geometry.frame(in: .global).midY: \#(geometry.frame(in: .global).midY)
                        geometry.frame(in: .global).maxY: \#(geometry.frame(in: .global).maxY)
                    """#)
                    
                }
                .frame(height: 250)
                .border(Color.red, width: 2.0)
                            
                GeometryReader { geometry in
                    Text(#"""
                        geometry.frame(in: .local).origin.x: \#(geometry.frame(in: .local).origin.x)
                        geometry.frame(in: .local).origin.y: \#(geometry.frame(in: .local).origin.y)
                        geometry.frame(in: .local).width: \#(geometry.frame(in: .local).width)
                        geometry.frame(in: .local).height: \#(geometry.frame(in: .local).height)
                        geometry.frame(in: .local).minX: \#(geometry.frame(in: .local).minX)
                        geometry.frame(in: .local).midX: \#(geometry.frame(in: .local).midX)
                        geometry.frame(in: .local).maxX: \#(geometry.frame(in: .local).maxX)
                        geometry.frame(in: .local).minY: \#(geometry.frame(in: .local).minY)
                        geometry.frame(in: .local).midY: \#(geometry.frame(in: .local).midY)
                        geometry.frame(in: .local).maxY: \#(geometry.frame(in: .local).maxY)
                    """#)
                    
                }
                .frame(height: 250)
                .border(Color.green, width: 2.0)
                
                GeometryReader { geometry in
                    Text(#"""
                        geometry.size.debugDescription: \#(geometry.size.debugDescription)
                    """#)
                    
                }
                .frame(height: 100)
                .border(Color.green, width: 2.0)
            }
        }
    }
```
</details>
    
### LazyHGrid
<details><summary>開く</summary>
<img width="250" alt="LazyHGrid" src="https://user-images.githubusercontent.com/25924137/117628254-e853cb00-b1b3-11eb-9ec4-d297ff94b64e.png">
<img width="250" alt="LazyHGrid2" src="https://user-images.githubusercontent.com/25924137/117628263-eab62500-b1b3-11eb-93e2-f4570ee85616.png">

```swift
    var rows1: [GridItem] =
        Array(repeating: .init(.fixed(40)), count: 2)
    var rows2: [GridItem] =
        Array(repeating: .init(.fixed(80)), count: 2)
    var rows3: [GridItem] =
        Array(repeating: .init(.fixed(40)), count: 4)
    var rows4: [GridItem] =
        Array(repeating: .init(.flexible(minimum: 40, maximum: 100)), count: 4)
    var rows5: [GridItem] =
        Array(repeating: .init(.adaptive(minimum: 40, maximum: 100)), count: 4)

    var body: some View {
        ScrollView(.vertical){
            VStack {
                Group {
                    Text("Array(repeating: .init(.fixed(40)), count: 2)")
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows1, alignment: .top) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                                    .font(.largeTitle)
                            }
                        }
                    }.border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.fixed(80)), count: 2)")
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows2, alignment: .top) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                                    .font(.largeTitle)
                            }
                        }
                    }.border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.fixed(40)), count: 4)")
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows3, alignment: .top) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                                    .font(.largeTitle)
                            }
                        }
                    }.border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.flexible(minimum: 40, maximum: 100)), count: 4)")
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows4, alignment: .top) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                                    .font(.largeTitle)
                            }
                        }
                    }.border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.adaptive(minimum: 40, maximum: 100)), count: 4)")
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows5, alignment: .top) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                                    .font(.largeTitle)
                            }
                        }
                    }.border(Color.red, width: 2)
                }
            }
        }
    }
```
</details>
    
### LazyHStack
<details><summary>開く</summary>
<img src="https://user-images.githubusercontent.com/25924137/117628970-a70feb00-b1b4-11eb-99e3-a58abfed037b.gif" width="250">

```swift
    @State private var showedIndex = ""
    @State private var showedIndex2 = ""

    var body: some View {
        VStack {
            Text("HStack")
            ScrollView(.horizontal) {
                HStack(alignment: .center, spacing: 10) {
                    Section(header: Text("header"), footer: Text("footer")) {
                        ForEach(1...20, id: \.self) { count in
                            Image(systemName: "\(count).square")
                                .font(.largeTitle)
                                .frame(height: 70)
                                .onAppear(perform: {
                                    showedIndex += "\(count) "
                                })
                        }
                    }
                }
            }
            Text("showedIndex: \(showedIndex)")
                .padding(.bottom, 50)

            Text("LazyHStack ")
            ScrollView(.horizontal) {
                LazyHStack(alignment: .center, spacing: 10) {
                    Section(header: Text("header"), footer: Text("footer")) {
                        ForEach(1...20, id: \.self) { count in
                            Image(systemName: "\(count).square")
                                .font(.largeTitle)
                                .frame(height: 70)
                                .onAppear(perform: {
                                    showedIndex2 += "\(count) "
                                })
                        }
                    }
                }.frame(height: 70)
            }
            Text("showedIndex: \(showedIndex2)")
                .padding(.bottom, 50)

            Text("LazyHStack pinnedViews: .sectionHeaders")
            ScrollView(.horizontal) {
                LazyHStack(alignment: .center, spacing: 10, pinnedViews: .sectionHeaders) {
                    Section(header: Text("header"), footer: Text("footer")) {
                        ForEach(1...20, id: \.self) { count in
                            Image(systemName: "\(count).square")
                                .font(.largeTitle)
                                .frame(height: 70)
                        }
                    }
                }.frame(height: 70)
            }
        }
    }
```
</details>
    
### LazyVGrid
<details><summary>開く</summary>
<img width="250" alt="LazyVGrid" src="https://user-images.githubusercontent.com/25924137/117629532-387f5d00-b1b5-11eb-89f6-9741ba95c257.png">
<img width="250" alt="LazyVGrid2" src="https://user-images.githubusercontent.com/25924137/117629543-3cab7a80-b1b5-11eb-8dad-10cf6c1a3623.png">
<img width="250" alt="LazyVGrid3" src="https://user-images.githubusercontent.com/25924137/117629549-3ddca780-b1b5-11eb-9746-7be9cc1b01ab.png">

```swift
    var columns: [GridItem] =
            Array(repeating: .init(.flexible()), count: 2)
    var columns2: [GridItem] =
            Array(repeating: .init(.fixed(80)), count: 2)
    var columns3: [GridItem] =
            Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 2)
    var columns4: [GridItem] =
            Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 4)
    var columns5: [GridItem] =
            Array(repeating: .init(.adaptive(minimum: 80)), count: 2)

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Group {
                    Text("Array(repeating: .init(.flexible()), count: 2)")
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let codepointString = String(format: "%02X", codepoint)
                                Text("\(codepointString)")
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                            }
                        }.font(.largeTitle)
                    }.frame(height: 200)
                    .border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.fixed(80)), count: 2)")
                    ScrollView {
                        LazyVGrid(columns: columns2) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let codepointString = String(format: "%02X", codepoint)
                                Text("\(codepointString)")
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                            }
                        }.font(.largeTitle)
                    }.frame(height: 200)
                    .border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 2)")
                    ScrollView {
                        LazyVGrid(columns: columns3) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let codepointString = String(format: "%02X", codepoint)
                                Text("\(codepointString)")
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                            }
                        }.font(.largeTitle)
                    }.frame(height: 200)
                    .border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.flexible(minimum: 80, maximum: 100)), count: 4)")
                    ScrollView {
                        LazyVGrid(columns: columns4) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let codepointString = String(format: "%02X", codepoint)
                                Text("\(codepointString)")
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                            }
                        }.font(.largeTitle)
                    }.frame(height: 200)
                    .border(Color.red, width: 2)
                }
                Group {
                    Text("Array(repeating: .init(.adaptive(minimum: 80)), count: 2)")
                    ScrollView {
                        LazyVGrid(columns: columns5) {
                            ForEach((0...79), id: \.self) {
                                let codepoint = $0 + 0x1f600
                                let codepointString = String(format: "%02X", codepoint)
                                Text("\(codepointString)")
                                let emoji = String(Character(UnicodeScalar(codepoint)!))
                                Text("\(emoji)")
                            }
                        }.font(.largeTitle)
                    }.frame(height: 200)
                    .border(Color.red, width: 2)
                }
            }
        }
    }
```
</details>
    
### LazyVStack
<details><summary>開く</summary>
<img src="https://user-images.githubusercontent.com/25924137/117630315-091d2000-b1b6-11eb-94ff-2e13fac93541.gif" width="250">

```swift
    @State private var showedIndex = ""
    @State private var showedIndex2 = ""

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("VStack")
                ScrollView(.vertical) {
                    VStack(alignment: .center, spacing: 10) {
                        Section(header: Text("header"), footer: Text("footer")) {
                            ForEach(1...20, id: \.self) { count in
                                Image(systemName: "\(count).square")
                                    .font(.largeTitle)
                                    .frame(height: 70)
                                    .onAppear(perform: {
                                        showedIndex += "\(count) "
                                    })
                            }
                        }
                    }
                }.frame(height: 200)
                Text("showedIndex: \(showedIndex)")
                    .padding(.bottom, 50)

                Text("LazyVStack ")
                ScrollView(.vertical) {
                    LazyVStack(alignment: .center, spacing: 10) {
                        Section(header: Text("header"), footer: Text("footer")) {
                            ForEach(1...20, id: \.self) { count in
                                Image(systemName: "\(count).square")
                                    .font(.largeTitle)
                                    .frame(height: 70)
                                    .onAppear(perform: {
                                        showedIndex2 += "\(count) "
                                    })
                            }
                        }
                    }
                }.frame(height: 200)
                Text("showedIndex: \(showedIndex2)")
                    .padding(.bottom, 50)

                Text("LazyVStack pinnedViews: .sectionHeaders")
                    
                    
                ScrollView(.vertical) {
                    LazyVStack(alignment: .center, spacing: 10, pinnedViews: .sectionHeaders) {
                        Section(header: Text("header"), footer: Text("footer")) {
                            ForEach(1...20, id: \.self) { count in
                                Image(systemName: "\(count).square")
                                    .font(.largeTitle)
                                    .frame(height: 70)
                            }
                        }
                    }
                }.frame(height: 200)
            }
        }
    }
```
</details>
    
### ScrollViewReader
<details><summary>開く</summary>
<img src="https://user-images.githubusercontent.com/25924137/117630829-8d6fa300-b1b6-11eb-86f3-6342564993f9.gif" width="250">

```swift
        ScrollViewReader { proxy in
            ScrollView {
                Button("proxy.scrollTo(30, anchor: .top)") {
                    withAnimation {
                        proxy.scrollTo(30, anchor: .top)
                    }
                }.id(0)

                Button("proxy.scrollTo(30, anchor: .center)") {
                    withAnimation {
                        proxy.scrollTo(30, anchor: .center)
                    }
                }.id(0)

                Button("proxy.scrollTo(30, anchor: .bottom)") {
                    withAnimation {
                        proxy.scrollTo(30, anchor: .bottom)
                    }
                }.id(0)

                ForEach(1..<51) { index in
                    Image(systemName: "\(index).square")
                        .font(.largeTitle)
                        .frame(height: 70)
                        .id(index)
                }
                
                Button("Top") {
                    withAnimation {
                        proxy.scrollTo(0)
                    }
                }
            }
        }
```
</details>
    
### VStack
<details><summary>開く</summary>
<img width="250" alt="VStack" src="https://user-images.githubusercontent.com/25924137/117631076-d58ec580-b1b6-11eb-942b-5c7ea2afe920.png">

```swift
        VStack {
            Text("default")
                .frame(maxWidth: 400, alignment: .leading)
                .padding(.top, 20)
            VStack {
                Text("First")
                    .border(Color.red, width: 2.0)
                Image(systemName: "2.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .border(Color.green, width: 2.0)
                Text("Third Third Third Third Third")
                    .border(Color.blue, width: 2.0)
            }
            .frame(width: 400)
            .border(Color.red)

            Text("alignment: .leading")
                .frame(maxWidth: 400, alignment: .leading)
                .padding(.top, 20)
            VStack(alignment: .leading) {
                Text("First")
                    .border(Color.red, width: 2.0)
                Image(systemName: "2.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .border(Color.green, width: 2.0)
                Text("Third Third Third Third Third")
                    .border(Color.blue, width: 2.0)
            }
            .frame(width: 400)
            .border(Color.red)

            Text("alignment: .center")
                .frame(maxWidth: 400, alignment: .leading)
                .padding(.top, 20)
            VStack(alignment: .center) {
                Text("First")
                    .border(Color.red, width: 2.0)
                Image(systemName: "2.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .border(Color.green, width: 2.0)
                Text("Third Third Third Third Third")
                    .border(Color.blue, width: 2.0)
            }
            .frame(width: 400)
            .border(Color.red)

            Text("alignment: .trailing")
                .frame(maxWidth: 400, alignment: .leading)
                .padding(.top, 20)
            VStack(alignment: .trailing) {
                Text("First")
                    .border(Color.red, width: 2.0)
                Image(systemName: "2.circle")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .border(Color.green, width: 2.0)
                Text("Third Third Third Third Third Third Third")
                    .border(Color.blue, width: 2.0)
            }
            .frame(width: 400)
            .border(Color.red)
        }
```
</details>
