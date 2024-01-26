# AceUp Coaching Sessions API
![License](https://img.shields.io/badge/License-MIT-8fbe1a?labelColor=5c5c5d&style=flat)
![Language](https://img.shields.io/badge/Language-Ruby-f05669?labelColor=626263&style=flat)
![Framework](https://img.shields.io/badge/Framework-Rails-f05669?labelColor=626263&style=flat)
![Database](https://img.shields.io/badge/Database-SQLite3-2282c3?labelColor=626263&style=flat)
![Testing](https://img.shields.io/badge/Testing-RSpec-CDDC39?labelColor=626263&style=flat)
![Coverage](https://img.shields.io/badge/Coverage-100%25-4CAF50?labelColor=626263&style=flat)

## Table of Contents

- [Overview](#overview)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Features](#features)
- [Challenges Faced](#challenges-faced)
- [Future Improvements](#future-improvements)
- [Contributing](#contributing)
- [License](#license)

## Overview

AceUp Coaching Sessions API is a Ruby on Rails application that facilitates the management of coaching sessions. It provides an API for creating, retrieving, and managing coaching sessions for users.

## Technologies Used

- Ruby 3.1.0
- Ruby on Rails 7.0.8
- SQLite3
- Puma Web Server
- RSpec for testing

## Getting Started

To get started with the AceUp Coaching Sessions API, follow these steps:

```bash
# Clone the repository
git clone https://github.com/alejeindrox/aceup-challenge.git

# Change into the project directory
cd aceup-challenge

# Install dependencies
bundle install
```

## Usage

Run the application locally using the following command:

```bash
# This will start the server, and you can access the API at http://localhost:3000.
rails server
```

## Features
* List coaching sessions
* Create a new coaching session
* Retrieve sessions for a specific coach

## Challenges Faced

Throughout the development of the AceUp Coaching Sessions API, I encountered a notable challenge related to SQLite's handling of time-based comparisons. Specifically, SQLite's limitations in efficiently managing time overlaps prompted me to devise a workaround using direct Ruby code for validating session overlaps. This solution, while effective for smaller datasets, raises considerations for scalability when dealing with more extensive data volumes. In larger-scale scenarios, a database-centric approach would be preferable for optimizing performance in time-based comparisons.

## Future Improvements

* Implement user authentication and authorization.
* Enhance error handling for API responses.
* Integrate with a more robust database for production (PostgreSQL or Elasticsearch).
* Implement real-time updates for session availability.

## Contributing

Contributions are welcome! If you find a bug or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.
