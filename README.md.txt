# EmadFlow

EmadFlow is a personal finance and cash-flow management application built with Oracle APEX.

It provides a central place for users to manage everyday financial activity, recurring income and expenses, savings goals, and money owed or owing.

## Features

- Personal financial dashboard
- Opening balance management
- Income and expense tracking
- Recurring income and expense management
- Savings goals
- IOU tracking
- Partial IOU payment tracking
- Financial summaries and cash-flow calculations
- User-specific data isolation
- User onboarding / application guide
- Google-based authentication support
- Responsive Oracle APEX user interface

## Technology Stack

- Oracle APEX
- Oracle Database
- SQL
- PL/SQL
- Oracle APEX Universal Theme
- Google authentication integration

## Repository Structure

```text
EmadFlow/
├── apex/       # Oracle APEX application export
├── database/   # Database schema and PL/SQL definitions
├── docs/       # Project documentation and screenshots
└── README.md

## Database

The database layer uses objects prefixed with BF_.

Major database components include:

User profiles
Categories
Transactions
Recurring financial items
Savings goals
IOUs
IOU payments
Financial summary views
Authentication PL/SQL logic

## Security

No passwords, API keys, OAuth client secrets, access tokens, private keys, or user financial records are intentionally stored in this repository.

Authentication credentials must be configured separately when installing the application in another Oracle APEX environment.