# Quiz Api

An API to store question and answer grouped by a topic title. It allows user to register and create their own sets of question and answers.


## References:
* [Quiz application]()
* [Quiz api url]()
* [Quiz application repo]()

## API End Points

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out`            | `users#signout`   |
| PATCH  | `/change-password`     | `users#changepw`  |
| GET    | `/topics`               | `topics#index`     |
| POST   | `/topics`               | `topics#create`    |
| GET    | `/topics/:id`           | `topics#show`      |
| PATCH  | `/topics/:id`           | `topics#update`    |
| DELETE | `/topics/:id`           | `games#delete`     |

All data returned from API actions is formatted as JSON.

## Technologies Used
* Ruby
* Rails

## Planning
* Brainstormed ideas with friends.
* Shortlisted 3 projects and ran it by the instructor
* Instructor directed to implement application with minimal resources for brevity of time.
* Once the project was finalized, created below entity diagram and got it approved by instructor.

## Development process
 * Created resources using scaffolding
 * Added the table and column using db:migration.
 * Created curl scripts to test api endpoints locally during development.

## Problem solving strategies


## Entity relation diagram
