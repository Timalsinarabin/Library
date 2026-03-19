# 📚 Library Management System (Rails)

A simple Library Management System built using Ruby on Rails.
This project allows users to manage books, search for them, and handle authentication features like password change and reset.

---

## 🚀 Features

* 🔐 User Authentication (Login / Logout)
* 🔑 Change Password
* 📧 Password Reset via Email
* 📚 Book Management (LibBook)

  * Add books
  * View all books
  * Search books by name
* 💰 Book price support
* 🎨 Simple UI using Bootstrap

---

## 🛠️ Tech Stack

* Ruby on Rails
* SQLite3
* Bootstrap (for UI)

---

## 📦 Setup Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/Timalsinarabin/Library.git
   cd library
   ```

2. Install dependencies:

   ```bash
   bundle install
   ```

3. Setup database:

   ```bash
   rails db:create
   rails db:migrate
   ```

4. Run server:

   ```bash
   rails server
   ```

5. Open in browser:

   ```
   http://localhost:3000
   ```


---

## 🔍 Search Feature

Search books by name using:

* Input field on "All Books" page
* Matches partial names using SQL `LIKE`

---

## ⚠️ Important Notes

* Always backup database before running migrations:

  ```bash
  cp db/development.sqlite3 db/backup.sqlite3
  ```
* Use `GET` method for search forms
* Use `flash.now` when rendering errors

---

## 📈 Future Improvements

* Borrow / Return system
* User roles (admin/user)
* Pagination
* Better UI/UX
* API support

---

## 👤 Author

Rabin Timalsina

---

## 💡 Status

🚧 Learning Project – actively improving
