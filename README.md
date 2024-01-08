# TeleTask - RealTime SMS (Twilio)

This is an application that allows users to sign-up and upon sign-up an OTP is sent to user's phone number for verification. It is built using Ruby on Rails.

## Functionality

With the SMSNotificationApp can perform the following actions:

1. A new user can sign-up
   - Validation:
     - Phone Number must be present.
2. Sign-in a valid user.
3. Enter OTP to verify the user.

## Versions

- Rails 7.0.8
- Ruby 3.1.2p20

## How to Start

To get started with the app, please follow the instructions below:

1. Clone the repository from the github by following command

```
git clone https://github.com/dcodewizard/TeleTask.git
```

2. Navigate to the project directory using your command prompt or terminal.
3. Run the command `bundle install` to install all necessary dependencies.

```ssh
bundle install
```

4. Run the command to copy the .env.example file to .env

```ssh
cp .env.example .env
```

5. Change the TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN, TWILIO_FROM_NUMBER variable to your Twilio credentials in the ".env" file

6. Run the command npm start to start the server.

```ssh
rails s
```

7. The server will start running on http://localhost:3000.

## Tech stack

The tech stack used to build the HEARD backend is:

1. Ruby on Rails
