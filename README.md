# Alpha Blog App

**Alpha Blog App** is a full-stack blogging platform where users can create profiles, write blogs, add tags, and filter blogs by tags. Each user has their own profile page where they can view all their blogs. The application provides a simple, elegant interface for managing personal blogs and exploring content through tagging.

---

## **Features**

### **User Profiles**
- Users can create and manage their profiles.
- Profile pages display a list of all blogs created by the user.

### **Blog Creation and Management**
- Create, edit, and delete blogs with rich text.
- Add descriptive tags to each blog for categorization.
- Supports pagination for blog listings.

### **Tag-Based Filtering**
- Blogs can be filtered using tags.
- Allows users to explore content relevant to specific topics.

### **Elegant User Interface**
- Built with **Bootstrap** for a clean, responsive design.
- Interactive elements powered by **jQuery** for smooth user experience.

---

## **Tech Stack**

- **Backend**: Ruby on Rails
- **Frontend**: Bootstrap, HTML, CSS, JavaScript, jQuery
- **Database**: PostgreSQL (Production), SQLite3 (Development)
- **Authentication**: `bcrypt` gem for secure user authentication
- **Pagination**: `will_paginate` gem for seamless navigation through blog listings

---

## **Installation Instructions**

Follow these steps to install and run the Alpha Blog App:

### **1. Prerequisites**
Ensure you have the following installed:
- **Ruby**: Version `2.7.0`
- **Rails**: Version `~> 7.0.5`
- **Bundler**: Install using `gem install bundler`
- **Node.js** and **Yarn**: Required for frontend assets.
- **PostgreSQL**: For production database.

---

### **2. Clone the Repository**

```bash
git clone <repository-url>
cd alpha-blog-app
```

---

### **3. Install Dependencies**

Run the following commands:

```bash
bundle install
yarn install
```

---

### **4. Database Setup**

For **development** and **test** environments, use SQLite3. For **production**, configure PostgreSQL.

**Development Setup**:
```bash
rails db:create
rails db:migrate
rails db:seed
```

**Production Setup**:
Ensure you have PostgreSQL installed and configured, then run:
```bash
RAILS_ENV=production rails db:create
RAILS_ENV=production rails db:migrate
```

---

### **5. Start the Server**

Run the Rails server:
```bash
rails server
```

The application will be available at `http://localhost:3000`.

---

### **6. Run Tests**

To ensure everything works correctly, run the test suite:
```bash
rails test
```

---

## **Gemfile Overview**

- **Rails**: Framework for building the application.
- **Bootstrap**: For styling and responsive design.
- **jQuery Rails**: Adds jQuery support for interactive frontend components.
- **bcrypt**: For user authentication.
- **Will Paginate**: Adds pagination functionality.
- **Puma**: Web server for production.
- **Turbo Rails**: For SPA-like interactions.
- **Sassc Rails**: For CSS preprocessing.

---

## **Key Functionalities**

1. **Profile Management**:
   - Users can create and edit their profiles.
   - Each user’s profile page displays all blogs they have created.

2. **Blog Tags**:
   - Add tags to categorize blogs.
   - Easily filter blogs using tags to find specific content.

3. **Blog Management**:
   - Create, edit, and delete blogs.
   - View a paginated list of all blogs.

4. **Responsive UI**:
   - Designed with Bootstrap to ensure a clean and professional look on all devices.

---

Let me know if you’d like to refine or customize this README further!
