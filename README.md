# Mobile Phone Number Client
An application that accepts phone numbers in various formats and sotres them.

## Usage
POST the Phone Number to:
`/phone_numnber/create`

with the following query format:
`?phone-number[phone_number]=_numberformat_ `

Valid Number Formats are:
- 07123 456789
- 44 7123 456789
- 44 7123 456789
- 07123456789
- 447123456789
- 447123456789

## Getting Started
- Clone the repository

- Change directory to the root of repository

### Prerequisites :

- [Webpacker](https://github.com/rails/webpacker) : Ensure Webpacker prerequisites and dependencies are installed and configured.


### Install Gems:

`bundle install`

### Create and seed database:

`rails db:migrate`


## Versions:

- Ruby 2.7.2
- Rails ~> 6.1.3