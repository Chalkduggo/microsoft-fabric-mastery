# Day 1 — Fabric Workspace and First Architecture Notes

## Objectives
- Explain what Microsoft Fabric and OneLake are.
- Identify lakehouse, warehouse, semantic model, notebook, pipeline, and report.
- Create a dedicated *practice* workspace if tenant permissions and capacity allow.
- Verify which Fabric trial or capacity is available without disclosing sensitive account information.

## Business scenario
A fictional subscription-streaming company wants to combine plan, subscriber, and watch-event data into one analytical environment.

## Guided lab
1. Sign in to your personal Microsoft Fabric account.
2. Identify the available capacity/trial status in the UI (note any limitations).
3. Navigate to Workspaces and create `fabric-mastery-lab` **if permitted**.
4. Create a lakehouse named `streamsphere_lakehouse` in the workspace, if permitted.
5. Explore Files, Tables, and the SQL analytics endpoint. Do not assume data is already loaded.
6. Draw a simple pipeline: synthetic CSV -> Lakehouse -> Warehouse or semantic model -> Power BI report.
7. Add a sanitized screenshot to the repository; redact tenant IDs, user email, workspace URLs, and tokens.

## Validation
- [ ] Workspace exists (or permission limitation documented)
- [ ] Lakehouse exists (or limitation documented)
- [ ] Architecture diagram committed
- [ ] Explain why a lakehouse might be preferable to a warehouse for raw data

## Interview prompts
1. What is OneLake and what problem does it solve?
2. How does a lakehouse differ from a warehouse?
3. Why should test and production workloads be isolated?

## Learning log
- What worked:
- Error encountered:
- How I verified:
- Next steps:
