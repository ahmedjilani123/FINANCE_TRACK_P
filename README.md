# Personal Finance Tracker Application

A full-stack Personal Finance Tracker application built using the SAP Cloud Application Programming Model (CAPM), SAPUI5, and SQLite/PostgreSQL database integration.

The application helps users manage their daily income and expenses, track financial activities, and monitor overall financial health through dashboards and analytics.

---

# Project Structure

| File or Folder | Purpose                                        |
| -------------- | ---------------------------------------------- |
| `app/`         | SAPUI5 frontend application                    |
| `db/`          | CDS domain models, database entities, and data |
| `srv/`         | CAP service definitions and business logic     |
| `package.json` | Project dependencies and configuration         |
| `readme.md`    | Project documentation                          |

---

# Features

* User Registration & Login
* Income and Expense Management
* Transaction History Tracking
* Category-wise Expense Tracking
* Dashboard Analytics
* Net Balance Calculation
* Monthly Expense & Income Trends
* User-wise Data Management
* CAP OData V4 Services
* SQLite / PostgreSQL Database Support

---

# Database Entities

## Users

Stores user information.

### Fields

* Full Name
* Email
* Password

---

## Category

Stores transaction categories.

### Examples

* Food
* Salary
* Shopping
* Bills
* Travel

---

## Transaction

Stores all financial transactions.

### Fields

* Transaction Type (Income / Expense)
* Amount
* Description
* Category
* User Association

---

# Technology Stack

## Backend

* SAP CAPM (Node.js)
* CDS (Core Data Services)
* OData V4

## Frontend

* SAPUI5 / Fiori

## Database

* SQLite
* PostgreSQL

---

# Run the Application

## Install Dependencies

```bash
npm install
```

## Start CAP Server

```bash
cds watch
```

---

# Service URL

Example:

```bash
http://localhost:4004
```

OData Service Example:

```bash
http://localhost:4004/odata/v4/
```

---

# Sample CDS Entity Structure

```cds
using { cuid, managed } from '@sap/cds/common';

namespace finance.db;

entity Users : cuid, managed {
    fullName     : String(225);
    email        : String;
    password     : String;

    transactions : Association to many Transaction
                   on transactions.user = $self;

    category     : Association to many Category
                   on category.user = $self;
}

type TypeTran : String enum {
    Expense;
    Income;
}

entity Category : cuid, managed {
    name : String;
    text : String;

    user : Association to Users;
}

entity Transaction : managed {

    key ID       : Integer;

    type         : TypeTran;

    amount       : Decimal(15,2);

    description  : String;

    category     : String;

    user         : Association to Users;
}
```

---

# Future Enhancements

* JWT Authentication
* Role-based Authorization
* File Attachment Support
* Export Reports (PDF/Excel)
* Budget Planning
* Recurring Transactions
* Charts & Financial Insights
* Mobile Responsive UI

---

# Developed By

Ahmed Shaikh
SAP Fiori/UI5 & SAP CAPM Developer

---

# Learn More

* SAP CAP Documentation: [https://cap.cloud.sap/docs/](https://cap.cloud.sap/docs/)
* SAPUI5 Documentation: [https://ui5.sap.com/](https://ui5.sap.com/)
