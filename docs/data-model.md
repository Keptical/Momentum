# Data Model

## User

Stores account information.

Fields:
- id
- username
- email
- profile_image
- created_date


## Workout

Fields:
- id
- user_id
- name
- date
- duration


## Exercise

Fields:
- id
- name
- muscle_group


## Workout Set

Fields:
- workout_id
- exercise_id
- weight
- reps


## Habit

Fields:
- id
- user_id
- name
- frequency


## Habit Log

Fields:
- habit_id
- date
- completed


## Task

Fields:
- id
- user_id
- title
- date
- priority
- completed