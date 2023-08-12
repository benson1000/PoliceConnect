# README

# PoliceConnect: E Police Station

PoliceConnect is an online platform designed to provide a range of police services digitally, enhancing accessibility and convenience for users. The platform allows users to report crimes, track case statuses, and engage with law enforcement services from the comfort of their own devices.

## Features

- **User Registration and Authentication:** Users can create accounts and log in securely.
- **Crime Reporting:** Users can report crimes online, providing essential details and evidence.
- **Case Tracking:** Users can track the progress of their reported cases.
- **Evidence Submission:** Users can upload and submit evidence related to their cases.
- **Notification System:** Users receive updates and notifications on case progress and changes.
- **User Roles:** Different levels of access for citizens, police officers, and administrators.

## Getting Started

Follow these instructions to set up and run the PoliceConnect project on your local machine.

### Prerequisites

- Ruby (version 3.2.2)
- Ruby on Rails (version 6.1.7.4)
- PostgreSQL

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/benson1000/PoliceConnect.git
   cd police-connect


2. Install Dependencies
    ```bash
    bundle install

3. Create and migrate the database
    ```bash
    rails db:create
    rails db:migrate

4. Start the Rails server
    ```bash
    rails s

5. Open your web browser and navigate to http://localhost:3000 to access the application.


6. Future Enhancements
    Implement additional services such as requesting police reports or scheduling appointments.
    Enhance the user interface and user experience for improved accessibility.
    Integrate real-time chat support for users seeking assistance.
    Provide analytics and reports for law enforcement agencies.

