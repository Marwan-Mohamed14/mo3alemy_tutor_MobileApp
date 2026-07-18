# Core

Shared infrastructure used across all features (student, tutor, shared).

## MVVM Convention

Each feature under `lib/features/<feature>/` follows this layering:

- **View** (`view/`) — Widgets/screens. Dumb and reactive: renders state exposed by
  the ViewModel and forwards user actions to it. No direct data access.
- **ViewModel** (`view_model/`) — Riverpod `Notifier`/`AsyncNotifier` classes. Holds
  UI state and logic, calls into the Repository, exposes state to the View.
- **Repository** (`repository/`) — Data access layer. Talks to Supabase (or other
  data sources) on behalf of the ViewModel. No UI concerns.
- **Model** (`models/`) — Plain data classes describing the shapes moved between
  Repository, ViewModel, and View.

Data flow: `View -> ViewModel -> Repository -> Model`.
