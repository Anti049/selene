I am developing a Flutter app for downloading and reading fanfiction from the web, and want to implement a feature first architecture. The technologies I'm utilizing are:

-   Riverpod (for state management)
-   Hive (for user preferences ONLY, but willing to migrate to another solution if possible)
-   Dio (for network requests, yet to be implemented)
-   Flutter (for UI)
-   Dart (for logic)
-   Auto Route (for navigation)
-   Freezed (for data classes)
-   Drift (for database)
-   RxDart (for data streams)
-   Epubx (for parsing Epub files)

I want to be able to read book files (defined as one of EPUB, MOBI, AZW3, PDF, or HTML) files from a local directory (or list of directories), but also have a local database that contains the work (defined as a fanfiction story) data, such as:

-   Source URL
-   Title
-   A list of the Author(s)
-   Description/Summary
-   Word Count
-   A list of Chapters (the actual text data)
-   A list of Tags (such as Characters, Genres, Relationships, etc.)

I also want end users to be able to put in their account information for different fanfiction sites, and the app will use that login information to scrape the sites for their favorited/subscribed/bookmarked works and add them to the repository

My current planned data models are as follows:

-   Work
    -   Source URL
    -   Source Link
    -   Title
    -   A list of Fandom(s)
    -   A list of Author(s)
    -   Summary
    -   Word Count
    -   A list of Chapters
    -   A list of Tags
    -   A Cover Image (generated if one isn't found for this work)
    -   Published Date
    -   Updated Date
    -   Status
        -   Unknown
        -   In-Progress
        -   Complete
        -   On Hiatus
        -   Abandoned
        -   Beiing Rewritten
-   Source
    -   A home URL
    -   A list of matching URL patterns
    -   An interpretor object (which takes a URL and parses/scrapes it to return a Work)
    -   A site icon
-   Fandom
    -   Source URL
    -   Name
    -   Description
    -   List of Works in this Fandom
-   Author
    -   Source URL
    -   Name
    -   List of Works by this Author
    -   List of Works bookmarked by this Author
-   Chapter
    -   Index
    -   Title
    -   Chapter content (as HTML)
    -   Any author note(s) attached to this chapter
-   Tag
    -   Source URL
    -   Name
    -   Type
        -   Info (general use for:)
            -   Rating
            -   Genre(s)
        -   Character
        -   Friendship
            -   Links to 2 or more Character Tags
        -   Relationship
            -   Links to 2 or more Character Tags
        -   Warning
        -   Blacklist
    -   Related Tags
        -   This would be where links to other Tags go
    -   List of Works with this Tag
-   User
    -   Name
    -   Age
    -   List of Accounts
-   Account
    -   Source Link
    -   Username
    -   Password
    -   Email

My current planned screens are:

-   Main (The main screen, with bottom navigation tabs between the following)
    -   Library
        -   Work Details (reached from clicking on a Work in the Library)
        -   Reader (Ebook reader, reached from either the Work Details page or from clicking the "Continue Reading" button on the Library's Work widget)
        -   Player (Ebook _player_, treating the work like an audiobook and using TTS to read it aloud (mainly for Android Auto/Apple Carplay) (could possibly use AI e.g. ElevenLabs?))
    -   Updates (showing a list of recent work updates)
    -   History (showing recent read history)
    -   Browse (with top tabs between the following)
        -   Sources (showing a list of sites to browse from installed Extensions such as AO3, FFN, etc.)
        -   Extensions (showing a list of possible site extensions to download and install (a site extension is what allows web scraping of the site))
        -   Migrate (a tab to migrate data (like work source URL) from one site to another (for example, if a work is crossposted on both AO3 and FFN, but the AO3 version is updated more often))
    -   More (showing a list of options)
        -   Download Queue (also accessible via Settings)
        -   Categories (also accessible via Settings)
        -   Statistics & Reporting
        -   Data & Storage (also accessible via Settings)
        -   Settings
            -   Appearance
                -   Theme Selection
                    -   Theme Builder
            -   Library
                -   Categories
            -   Accounts
            -   Reader
            -   Downloads
                -   Download Queue
            -   Tracking
            -   Browse
                -   Extension Repos
            -   Notifications
            -   Data & Storage
                -   Backups
            -   Security & Privacy
            -   Advanced
                -   Debug Info
                -   Onboarding Guide
            -   About
                -   Changelog
        -   About (also accessible via Settings)
        -   Help

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
-   Possible Google Assistant/Alexa skill integration (e.g. "Hey Google, check for fanfiction updates")

The file structure/architecture I want to use is the following:

-   lib/
    -   core/
        -   constants/
        -   exceptions/
        -   utils/
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
        -   .../
    -   localization/
    -   routing/
    -   main.dart

Given this information, can you recommend and generate a codebase for:

-   Where should common widgets be placed? (such as Empty, a widget which displays a message, possibly some buttons, and a humorous face, and can be present during loading, error, and empty screens, among others)
-   How to organize subscreens. Questionable setups include:
    -   Themes are accessed/set via "More" -> "Settings" -> "Appearance" -> "Theme Selection", but they apply app-wide. Where should the models/data/repositories for these be located?
-   Possible packages to add to the stack
-   A good localization provider that would allow me to change/update/add strings to the localization without having to push an app update to the Play Store (or whatever other distribution method I use)
-   How can I save preferences using Drift and monitor them for changes via Riverpod (with each screen/feature having its own preferences)
-   Where should I put theming code? (both the pre-defined themes, the Theme models, and any providers/repositories)
-   Any possible ALTERNATIVE packages that might be better suited for my project than what I'm using now
-   Anything else that might be helpful

Also, in addition to a general codebase-wide architecture, give me an example layout (showing which files/directories would use which packages) using the Library feature (as well as directly related features), keeping in mind that:

-   The Library needs to receive a list of Works from somewhere, or else read them itself
    -   The Library should ideally update automatically when a new work is detected (either via a new file in one of the monitored folders or via a new Work in the Works database table)
-   The Library needs some options, such as:
    -   Sort order/qualifier
    -   Filters (only show downloaded, only show works with unread chapters, etc.)
    -   Display options (show to show the works, show "Continue Reading" button, etc.)
-   The Library needs to be able to add a new work using a URL
-   Multiple local file directories can be specified, and the Library needs to get Works from all the supplied folders
