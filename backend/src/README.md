# Backend

Plain Node.js + Express (no framework beyond that). Talks to Supabase via
`src/supabase/client.ts`.

## Convention

Each domain folder (`auth/`, `documents/`, `notifications/`, `payments/`,
`reservations/`) follows this layering:

- **Routes** (`*.routes.ts`) — Express `Router`. Maps HTTP method + path to a
  controller function. No logic.
- **Controller** (`*.controller.ts`) — Parses `req`, calls the Service, shapes
  the `res`. No Supabase or business-rule code.
- **Service** (`*.service.ts`) — Business logic and orchestration. Calls the
  Repository, never Supabase directly.
- **Repository** (`*.repository.ts`) — Only place allowed to call `supabase`.
  Runs queries, maps raw rows to the module's Model types.
- **Model** (`*.model.ts`) — Plain types describing the shapes moved between
  Repository, Service, and Controller.

Data flow: `Routes -> Controller -> Service -> Repository -> Model`.

`health/` is the exception — it's a liveness check, not domain data, so it's
just `routes` + `controller`.
