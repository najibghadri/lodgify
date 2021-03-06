# Lodgify homework



https://user-images.githubusercontent.com/11639734/158412050-20dc08e7-d594-4610-b428-04be9d762e10.mov



- Tested on Web, iOS and Android
- The main component is in a sub-package named `grouped_tasks`: I made it like this because I think this is a component that would be reused on a page possibly multiple times. It exposes three main components:
  - `GroupedTasksList` which is a model and has `fromJson` method
  - `GroupedTasksNotifier` which is a ValueNotifier and has `updateTasks` and `updateTaskCheck` methods
  - `GroupedTasksWidget` which is the whole UI component which takes a `GroupedTasksNotifier` and a title as arguments
- the main App defines the `lodgifyTheme` and creates a material app in which it instantiates a `GroupedTasksWidget` and a `GroupedTasksNotifier`.
- The tasks are fetched on startup from the gist url and parsed, then they are fed to the notifier.
- for state management I started out using `riverpod` (a better `provider`), but found that using `flutter_hooks` and ValueNotifier is enough.
- Used only 3 additional packages:
  - `flutter_hooks` - a great library that brings hooks to flutter like they are in React, it allows for much cleaner code and reusability.
  - `freezed` - productive model class generator with equality and deep copy helpers. This is actually optional, could have used `equatable` instead. Helps for immutable changes in `ValueNotifier`. (also needs `build_runner` and `freezed_annotation`)
  - `google_fonts` for the custom font
- The expandable rows and the progressbar are custom components using animations
- Used an efficient calculation algorithm and unit tested it
- Used https://www.fluttericon.com/ for icons

## extras
- The UI smartly closes a group if it's done and opens the next not completed group. This behaviour can be improved however.

## improvement notes

- Use local fonts and remove `google_fonts` in production
- loading state using `shimmer`
- UI regression tests
- Better themeing
- etc, ...

P.S.

- Had to copy the api gist provided since it contains inconsistent fields. Not sure if this was intentional or it needs to be updated ????.
