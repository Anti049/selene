# Architecture Overview

This document outlines the architectural approach for the Selene Flutter application, following a **Feature-First** methodology combined with layered principles within each feature.

## Philosophy

The core idea is to organize the codebase around user-facing features rather than technical layers. This promotes modularity, testability, and scalability by making each feature relatively self-contained.

## Top-Level Directory Structure (`lib/`)

The `lib/` directory is organized into several key areas:

### `core/` - Core Layer

Contains fundamental, app-wide logic and utilities not specific to any single feature.

-   **`constants/`**: App-wide constant values.
-   **`error/`**: Global error handling classes and logic (e.g., custom Exceptions, Failure types).
-   **`navigation/`**: Router setup, configuration, and guards (e.g., using `auto_route`). [cite: uploaded:lib/router/router.dart]
-   **`preferences/`**: Base logic for handling user preferences (e.g., abstract preference classes).
-   **`providers/`**: App-wide Riverpod providers (e.g., database instance, API client instances).
-   **`services/`**: Abstract service interfaces (e.g., `LoggingService`, potentially `ApiService`, `StorageService`).
-   **`themes/`**: Theme definitions, color schemes, text styles, and theming utilities. [cite: uploaded:lib/utils/theming.dart]
-   **`utils/`**: General utility functions, enums, and extensions used across the app. [cite: uploaded:lib/utils/constants.dart, uploaded:lib/utils/enums.dart, uploaded:lib/utils/isar.dart, uploaded:lib/utils/responsive_layout.dart, uploaded:lib/utils/storage.dart, uploaded:lib/utils/string.dart]

### `data/` - Data Layer

Handles the implementation details of fetching, storing, and managing data.

-   **`models/`**: Data Transfer Objects (DTOs) or database models. These classes represent data as it comes from/goes to data sources and often include annotations for serialization or database mapping (e.g., Isar `@Collection`, Freezed `@JsonSerializable`).
    -   Example: `story.dart`, `author.dart`, `tag.dart`, `book.dart`. [cite: uploaded:lib/features/story/models/story.dart, uploaded:lib/features/story/models/author.dart, uploaded:lib/features/story/models/tag.dart, uploaded:lib/features/book/models/book.dart]
-   **`repositories/`**: Concrete implementations of repository interfaces defined in the `domain` layer. They coordinate data from one or more data sources.
    -   Example: `book_repository_impl.dart`. [cite: uploaded:lib/features/book/repositories/epub_book_repository.dart]
-   **`datasources/`**: Classes that directly interact with a specific data source.
    -   **`local/`**: Interacts with local databases (Isar, Hive), file storage.
        -   Example: `preferences_service.dart` (for Hive). [cite: uploaded:lib/common/services/preferences_service.dart]
    -   **`remote/`**: Interacts with network APIs (using Dio/http).

### `domain/` - Domain Layer

Contains the core business logic and rules, independent of UI and data sources.

-   **`entities/`**: Plain Dart objects representing core business concepts (e.g., `StoryEntity` without database annotations). Can be skipped if data models are simple and used directly.
-   **`repositories/`**: Abstract interface definitions (`abstract class`) defining contracts for data operations. The `data` layer implements these.
    -   Example: `i_book_repository.dart`. [cite: uploaded:lib/features/book/repositories/book_repository.dart]
-   **`usecases/`**: (Optional) Classes encapsulating specific business operations or workflows, orchestrating calls to repositories.

### `features/` - Feature Layer

This is the heart of the feature-first approach. Each subdirectory represents a distinct user-facing feature.

-   Examples: `library`, `settings`, `reader`, `browse`, `updates`, `history`, `more`.

#### Layers within a Feature

Each feature folder generally follows a layered structure:

1.  **`presentation/` (UI Layer)**:
    -   **Purpose**: Handles UI and user interaction for the feature.
    -   **Contents**: `screens/` (or `pages/`), `widgets/`. Sub-folders for complex screens (e.g., `details_widgets/`, `options_widgets/`) can be used.
    -   **Dependencies**: Depends on `application`.
2.  **`application/` (State/Logic Layer)**:
    -   **Purpose**: Manages state (using Riverpod providers/notifiers) and orchestrates actions for the feature.
    -   **Contents**: Riverpod providers (`_provider.dart`), state classes/models (`_state.dart`, `_model.dart`), use cases specific to the feature's flow.
    -   **Dependencies**: Depends on `domain` and/or `data`. `presentation` depends on this.
3.  **`domain/` (Feature-Specific Domain)**:
    -   **Purpose**: Contains business logic or entities _only_ relevant to this specific feature. Often minimal if core logic resides in the top-level `domain` layer.
    -   **Contents**: Feature-specific entities, interfaces, or use cases.
    -   **Dependencies**: Minimal.
4.  **`data/` (Feature-Specific Data)**:
    -   **Purpose**: Handles data access implementations _only_ relevant to this specific feature. Often minimal if data access uses global repositories.
    -   **Contents**: Feature-specific repository implementations or data sources.
    -   **Dependencies**: Depends on `domain` and global data sources.

### `common_widgets/` - Common Widgets

Contains UI widgets that are reused across multiple features.

-   Examples: `Empty`, `PaddedAppBar`, `ActionButton`. [cite: uploaded:lib/common/widgets/empty.dart, uploaded:lib/common/widgets/padded_appbar.dart, uploaded:lib/common/widgets/action_button.dart]

## Example: Refactored Library Feature Structure

```
lib/
├── main.dart                 # App entry point
│
├── core/                     # Core utilities, services, base classes
│   ├── constants/            # App-wide constants (like in utils/constants.dart)
│   ├── error/                # Error handling (exceptions, failures)
│   ├── navigation/           # Router setup (like router/router.dart)
│   ├── preferences/          # Base preference logic (like common/services/preferences_service.dart)
│   ├── providers/            # App-wide providers (e.g., database, API clients)
│   ├── services/             # Abstract services (API, storage, etc.)
│   ├── themes/               # Theme definitions, extensions (like utils/theming.dart)
│   └── utils/                # General utilities (like utils/enums.dart, utils/string.dart)
│
├── data/                                           # NEW Top-Level Data Layer
│   ├── models/                                   # Data Transfer Objects / Database Models
│   │   ├── story.dart                            # Moved from features/story/models
│   │   ├── story.g.dart
│   │   ├── story.freezed.dart                  # If you have one for the data model
│   │   ├── author.dart                           # Moved from features/story/models
│   │   ├── author.g.dart
│   │   ├── author.freezed.dart                 # If you have one for the data model
│   │   ├── tag.dart                              # Moved from features/story/models
│   │   ├── tag.g.dart
│   │   ├── tag.freezed.dart                    # If you have one for the data model
│   │   └── book.dart                             # Moved from features/book/models
│   ├── repositories/                             # Repository Implementations
│   │   ├── book_repository_impl.dart             # Was epub_book_repository.dart
│   │   └── book_repository_impl.g.dart           # Was epub_book_repository.g.dart
│   └── datasources/                              # Direct data access (DB, API, Files)
│       ├── local/
│       │   └── preferences_service.dart          # Moved from common/services
│       └── remote/                               # (API clients would go here)
│
├── domain/                                       # NEW Top-Level Domain Layer
│   ├── entities/                                 # Pure Dart business objects (optional)
│   │   └── story_entity.dart                     # (Example - no Isar/Json annotations)
│   └── repositories/                             # Abstract Repository Interfaces
│       └── i_book_repository.dart                # Was book_repository.dart
│
├── features/                 # Feature modules
│   ├── library/              # Example feature: Library
│   │   ├── application/      # State management (Riverpod providers, state classes - like providers/library_state.dart)
│   │   │   ├── providers/
│   │   │   │   ├── library_state_provider.dart       # Was library_state.dart
│   │   │   │   ├── library_state_provider.g.dart     # Was library_state.g.dart
│   │   │   │   ├── library_view_prefs_provider.dart  # Was library_preferences.dart
│   │   │   │   └── library_view_prefs_provider.g.dart # Was library_preferences.g.dart
│   │   │   │
│   │   │   ├── models/
│   │   │   │   ├── library_state_model.dart          # Was library_model.dart
│   │   │   │   ├── library_state_model.freezed.dart  # Was library_model.freezed.dart
│   │   │   │   ├── library_item_model.dart           # Was library_item.dart
│   │   │   │   ├── library_item_model.freezed.dart   # Was library_item.freezed.dart
│   │   │   │   ├── item_preferences_model.dart       # Was item_preferences.dart
│   │   │   │   ├── item_preferences_model.freezed.dart # Was item_preferences.freezed.dart
│   │   │   │   └── library_options_model.dart        # Was library_options_tab.dart + .freezed.dart
│   │   │   │       # (Consider renaming if it's purely for state/UI)
│   │   │   │
│   │   │   └── details/                            # State logic specific to details screen
│   │   │       ├── details_scroll_provider.dart      # Was scroll_provider.dart
│   │   │       └── details_scroll_provider.g.dart    # Was scroll_provider.g.dart
│   │   │
│   │   ├── data/                                   # Empty for now - data access handled globally
│   │   │
│   │   ├── domain/                                 # Empty for now - logic might be in application or global domain
│   │   │
│   │   ├── presentation/
│   │   │   ├── screens/
│   │   │   │   ├── library_screen.dart               # Was library_tab.dart
│   │   │   │   ├── library_options_screen.dart       # Was library_options_page.dart
│   │   │   │   └── library_story_details_screen.dart # Was details_page.dart
│   │   │   │
│   │   │   ├── widgets/
│   │   │   │   ├── add_work_dialog.dart
│   │   │   │   ├── library_item_widget.dart          # Was library_list_item.dart
│   │   │   │   └── library_info_chip_widget.dart     # Was info_chip.dart
│   │   │   │
│   │   │   ├── options_widgets/                  # Widgets specific to options screen/tabs
│   │   │   │   ├── tags_view.dart                  # Was tags_tab.dart
│   │   │   │   ├── sort_view.dart                  # Was sort_tab.dart
│   │   │   │   ├── filters_view.dart               # Was filters_tab.dart
│   │   │   │   └── display_view.dart               # Was display_tab.dart
│   │   │   │
│   │   │   └── details_widgets/                  # Widgets specific to details screen
│   │   │       ├── expandable_text_widget.dart     # Was expandable_text.dart
│   │   │       └── tag_chip_widget.dart            # Was tag_chip.dart (could be common)
│   │   │
│   │   └── library_feature.dart # Optional: Barrel file exporting feature components
│   │
│   ├── settings/             # Example feature: Settings
│   │   ├── application/      # (like providers/appearance_preferences.dart)
│   │   ├── presentation/
│   │   │   ├── screens/      # (like settings_page.dart, appearance_page.dart)
│   │   │   └── widgets/      # (like setting/base_widget.dart)
│   │   └── ...
│   │
│   ├── reader/               # Example feature: Reader
│   │   ├── application/      # (like providers/reader_preferences.dart)
│   │   ├── presentation/
│   │   │   ├── screens/      # (like reader_page.dart)
│   │   │   └── widgets/      # (like setting_sheet.dart)
│   │   └── ...
│   │
│   └── <other_features>/     # Browse, Updates, History, More, etc.
│
└── common_widgets/           # Widgets shared across multiple features (like common/widgets/empty.dart)
```
