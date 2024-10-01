# Sake API

This pull request builds a Rails application that acts solely as an API, rendering JSON instead of HTML for Sake/Izakaya places.

## Steps

1. **Create a new Rails app**: Initialize a new Rails application with PostgreSQL and the `--api` flag.
2. **Create GitHub Repository**: Set up a new repository on GitHub.
3. **Designing the DB**: Design the database schema with a `restaurant` model.
4. **Creating the Model**: Create the database and the `restaurant` model.
5. **Setting up the Model**: Add validations to the `restaurant` model.
6. **Seeds**: Provide instructions to seed the database with Izakayas data from a JSON file.
7. **Routes**: Set up namespaced routes for the API.
8. **Controllers**: Create and set up the `restaurant_controller` with `index` and `create` actions.
9. **CORS**: Enable Cross-Origin Resource Sharing (CORS) for the API.

## Changes Made

- Added a detailed tutorial in the README file.
- Created a new Rails application with PostgreSQL and the `--api` flag.
- Set up the database and created the `restaurant` model.
- Added validations to the `restaurant` model.
- Seeded the database with restaurant data from a JSON file.
- Set up namespaced routes for the API.
- Created and configured the `restaurants_controller`.
- Enabled CORS for the API.

