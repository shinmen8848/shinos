Shinmen AI Platform — Development Blueprint

This repository contains a starter scaffold and the comprehensive development blueprint for the Shinmen AI platform.

Goals
- SaaS platform combining website development showcase, API provisioning, and an AI Chat Playground powered by OpenRouter.
- Enterprise-grade security, observability, and a modern SvelteKit frontend with a TypeScript Node backend.

High-level architecture
- Frontend: SvelteKit + TailwindCSS, component design system, Svelte stores.
- Backend: Node + Express + TypeScript, PostgreSQL, Redis, JWT auth, OpenRouter client.
- Infrastructure: Docker + docker-compose (starter), CI via GitHub Actions, cloud deployment-ready (ECS/GKE/AKS hints).

Repository scaffold (starter)
- /backend - Node/Express TypeScript API server scaffold + Dockerfile
- /frontend - SvelteKit starter notes and package.json placeholder
- /docs - project blueprint and roadmap
- /infra - env and deployment helpers
- /sql - initial schema and migrations
- /.github/workflows - CI pipeline stub

Next steps
1. Install dependencies in backend and frontend, or run official SvelteKit bootstrap for the frontend.
2. Implement auth, migrations, and provider integrations (OpenRouter, Stripe).
3. Add tests and CI steps to run them in the workflow.

Reference: Full product blueprint (requirements, features, roadmap) should be maintained here as living documentation while development proceeds.
