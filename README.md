# SF Proxy Man

A SAP Cloud Application Programming (CAP) application that acts as a proxy to the SAP SuccessFactors Role-Based Permissions (RBP) API. It fetches role assignments from SuccessFactors, compares the contained permissions against a locally maintained list of critical authorizations, and surfaces any matches.

## What it does

1. **Fetches role data** from the SF RBP API (`getRoleById`) — including all `permIds` assigned to a role.
2. **Compares** those `permIds` against a curated list of critical permissions stored in the local database.
3. **Lists matches** — if a r