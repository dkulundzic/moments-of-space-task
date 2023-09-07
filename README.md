# Moments of Space task project

Per the instructions, I went and implemented the project using The Composable Architecture. I did the most I could within the alloted time frame, some things are missing of course.

## Project set-up

The project is divided into multiple modules (frameworks) that semantically splits the codebase into reusable chunks. These could've easily been Swift Packages, but simple XCFrameworks were chosen for simplicity and speed. It's easy to convert these into Swift Packages at a later date.

Swiftgen is used to generate a strongly typed asset and localization interface, while Swiftlint is in to keep everyone honest and on point the code practices.

### Location usage and significant location changes

I planned on using the `ComposableCoreLocation` library, which should be a part of the `ComposableArchitecture`, but I had technical issues accessing the library and injecting the `LocationManager`, that can be used to obtain permissions and track significant location changes.

Regardless, the `MeditationsListReducer` has a skeleton implementation that illustrates how the actual flow would be implemented, triggering a meditations reload.

### UI and styling

The UI is missing a couple of things:
1. The gradient sparkled title
2. The location button
3. The icon in the trailing background of the item view.
4. Fonts, colors and spacings are approximated.

as I focused more on streamlining and implementing the underlying business logic.   
