# 🍎 FrameworksSwiftUI

A small SwiftUI app for exploring Apple frameworks and developer tools. Browse a grid of topics, tap one to read its description, and open its Apple Developer page with **Learn More**.

## ✨ Features

- **Browse:** A three-column grid shows each topic's icon and name.
- **Explore:** Tap a topic to see its description on a detail screen.
- **Learn more:** Open the related Apple Developer page in an in-app Safari view.
- **Preview:** SwiftUI previews are available for the main view, detail view, and button.

The catalog is stored locally in the app, so browsing it does not require an account or backend. Opening a developer page requires an internet connection.

## 🛠 Requirements

- A Mac with Xcode and an iOS 18.2 or later simulator, or an iPhone/iPad running iOS 18.2 or later.
- No third-party packages are required.

## 🚀 Run the app

1. Clone the repository and open `FrameworksSwiftUI.xcodeproj` in Xcode.
2. Select the **FrameworksSwiftUI** scheme and an iPhone or iPad simulator.
3. Press **⌘R** to build and run.
4. Tap a framework, then tap **Learn More** to open its page.

To run on a physical device, select your development team in Xcode's **Signing & Capabilities** settings.

## 🧭 Project guide

| File | Purpose |
| --- | --- |
| `FrameworksSwiftUI/FrameworksSwiftUIApp.swift` | App entry point. |
| `FrameworksSwiftUI/FramworksView.swift` | Grid, navigation, and reusable framework title view. |
| `FrameworksSwiftUI/FrameworkDetailView.swift` | Description and Learn More action. |
| `FrameworksSwiftUI/Frameworks.swift` | Framework model and local catalog (`MockData.frameworks`). |
| `FrameworksSwiftUI/AFButton.swift` | Styled Learn More button. |
| `FrameworksSwiftUI/SafariVeiw.swift` | SwiftUI wrapper around `SFSafariViewController`. |
| `FrameworksSwiftUI/Assets.xcassets/` | Topic images and app assets. |

## ➕ Add a topic

Add a `Framework` entry to `MockData.frameworks` in `Frameworks.swift`, then add a matching image set to `Assets.xcassets`. Set `imageName` to that image set's name and `urlString` to the topic's Apple Developer URL. The grid picks up the new entry automatically.

The topic descriptions are bundled sample content. Update them in `Frameworks.swift` if you want the catalog to reflect newer framework releases.
