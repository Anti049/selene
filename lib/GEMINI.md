I am developing a Flutter app for downloading and reading fanfiction from the web, and want to implement a feature first architecture. The technologies I'm utilizing are:

-   Riverpod (for state management)
-   Hive (for user preferences ONLY)
-   Dio (for network requests, yet to be implemented)
-   Flutter (for UI)
-   Dart (for logic)
-   Auto Route (for navigation)
-   Freezed (for data classes)
-   Isar/Drift (for database, undecided which one to use)
-   RxDart (for data streams)

I want to be able to read book files (defined as one of EPUB, MOBI, AZW3, PDF, or HTML) files from a local directory (or list of directories), but also have a local database that contains the work (defined as a fanfiction story) data, such as:

-   Source URL
-   Title
-   A list of the Author(s)
-   Description/Summary
-   Word Count
-   A list of Chapters (the actual text data)
-   A list of Tags (such as Characters, Genres, Relationships, etc.)

My current planned screens are:

-   Main Screen (showing bottom navigation between the following)
    -   Library (showing a list of works, where clicking on one will go to the Details page)
        -   Details (showing work info and a list of chapters, where clicking on one will open the Reader to the indicated chapter)
    -   Updates (showing a list of recent work updates)
    -   History (showing recent read history)
    -   Browse (showing top tabs between the following)
        -   Sources (showing a list of sites to browse from installed Extensions)
        -   Extensions (showing a list of possible site extensions to download and install (a site extension is what allows web scraping of the site))
        -   Migrate (a tab to migrate data (like work source URL) from one site to another (for example, if a work is crossposted on both AO3 and FFN, but the AO3 version is updated more often))
    -   More (showing a list of options)
        -   Download Queue
        -   Categories
        -   Statistics
        -   Data & Storage
        -   Settings
            -   Appearance
            -   Library
            -   Accounts
            -   Reader
            -   Downloads
            -   Tracking
            -   Browse
            -   Notifications
            -   Data & Storage
            -   Security & Privacy
            -   Advanced
            -   About
        -   About
        -   Help
-   Reader
    -   Audio player (to transcribe the work text via TTS (possibly using AI language models?))

Other features that are planned, but not restricted to one screen are:

-   Top banners for "Downloaded Only" and "Incognito" modes
    -   Downloaded Only mode could possibly activate automatically when there is no internet signal
    -   Incognito mode needs to be able to pause reading history, disable screen recording of the app while active, and possibly require authentication when opening/switching back to the app while it's active
-   An "Empty Screen" widget that prints screen-centered humorous faces, with a message and widget(s) underneath, such as:
    -   A loading spinner, for when a page is loading
    -   A row of buttons, for when actions need to be taken (to go back, refresh/retry, etc.)
    -   An error message (if reached via an error screen)
-   Some sort of function to capture application crashes and send diagnostic info to the developer
-   A cloud backup of user data, such as preferences and the library, since fanfiction works can (usually) be re-downloaded if necessary. Possible options for this include:
    -   Google Drive
    -   Dropbox
    -   OneDrive
    -   Supabase (for database backup)
    -   Some self-hosted storage solution
-   Calibre integration (along with the Calibre content server and possibly also Calibre-Web)
-   Android Auto/Apple CarPlay functionality (for the audio transcription feature mentioned above)
-   Possible Google Assistant integration (e.g. "Hey Google, check for fanfiction updates")

The file structure/architecture I want to use is modeled after the following:

-   lib/
    -   common_widgets/
    -   constants/
    -   exceptions/
    -   features/
        -   feature 1/
            -   application/
            -   data/
            -   domain/
            -   presentation/
                -   widgets/
                -   feature_1_tab.dart
        -   feature 2/
        -   feature 3/
    -   localization/
    -   routing/
    -   utils/

Given this information and the attached codebase, can you recommend and generate a codebase for:

-   How to organize subscreens. Questionable setups include:
    -   The "Library/Updates/History/Browse/More" screens are all subscreens of one main bottom tab navigation screen. Should these all be grouped under a "main" feature folder, or each have their own feature folders?
    -   The "Settings" screen is accessed via a button on the "More" tab. Should it be located in the "more" feature folder, or a separate "settings" feature folder?
    -   Themes are accessed/set via "More" -> "Settings" -> "Appearance" -> "Theme Selection", but they apply app-wide. Where should the models/data/repositories for these be located?
-   Possible packages to add to the stack
-   Any possible ALTERNATIVE packages that might be better suited for my project than what I'm using now
-   Anything else that might be helpful
