# 🎟️ Advanced Ticket Booking System
## 📚 MCA Practical Mini Project

This project demonstrates a **high-concurrency ticket booking system** using advanced SQL transaction management and locking mechanisms.  
The system ensures **safe seat booking, no double booking, and consistent transactions** when multiple users access the database simultaneously.

---

# ✨ Features

✅ Transaction-safe seat booking  
✅ Row-level locking using `FOR UPDATE NOWAIT`  
✅ Parallel booking using `SKIP LOCKED`  
✅ Deadlock simulation & prevention strategy  
✅ Optimistic locking using version control  
✅ Rollback handling on payment failure  
✅ Isolation level testing & analysis  
✅ Auto-release locked seats after timeout  
✅ Waiting queue mechanism for fully booked trips  

---

# 🗂️ Database Tables

## 👤 Users
Stores basic user information like name and email.

## 🚆 Trips
Stores trip details including source, destination, and travel time.

## 💺 Seats
Stores seat availability status (`AVAILABLE` / `BOOKED`) along with version number for optimistic locking.

## 🧾 Bookings
Stores all booking records with timestamps and booking status (`CONFIRMED` / `FAILED`).

## 🕐 WaitingQueue *(Bonus)*
Stores users waiting for a seat when a trip is fully booked.

---

# 📄 SQL Files

| 📁 File Name | 📌 Description |
|---|---|
| `database_design.sql` | Database schema — tables, constraints, sample data |
| `booking_transaction.sql` | Transaction-safe booking using `FOR UPDATE NOWAIT` |
| `parallel_booking.sql` | Multi-user parallel booking using `SKIP LOCKED` |
| `deadlock_simulation.sql` | Deadlock demo across two sessions + prevention strategy |
| `optimistic_locking.sql` | Version-based conflict detection without upfront locks |
| `failure_rollback.sql` | Payment failure simulation and automatic rollback |
| `isolation_levels.sql` | READ COMMITTED vs SERIALIZABLE — analysis & comparison |
| `bonus_challenge.sql` | Auto seat release after timeout + waiting queue |

---

# 🧠 Concepts Used

🔹 Transactions (`START TRANSACTION`, `COMMIT`, `ROLLBACK`)  
🔹 Pessimistic Locking (`FOR UPDATE`, `FOR UPDATE NOWAIT`)  
🔹 Parallel Concurrency (`FOR UPDATE SKIP LOCKED`)  
🔹 Deadlock Detection & Prevention  
🔹 Optimistic Locking (version column)  
🔹 Isolation Levels (`READ COMMITTED`, `SERIALIZABLE`)  
🔹 Concurrent Transaction Handling  
🔹 Event-based Auto Release (`TIMESTAMPDIFF`)  

---

# 🎯 Expected Outcomes

✔️ No double booking under concurrent load  
✔️ Safe and atomic booking transactions  
✔️ Consistent booking records at all times  
✔️ Efficient multi-user handling without blocking  
✔️ Automatic cleanup of abandoned seat locks  

---

# 🗃️ Database Schema

```
Users
  └── Bookings ──→ Seats ──→ Trips
                              └── WaitingQueue (Q8)
```

---

# 📸 Outputs

Execution screenshots and query outputs are available in the `OUTPUTS/` folder.

---

# 🛠️ Technologies Used

💻 SQL  
💻 MySQL 8.0  
💻 Transaction Management  
💻 Concurrency Control & Locking  

---

# ▶️ How to Run

1. Open MySQL and run `database_design.sql` first to set up the database  
2. Run each file in order from database_design to bonus_challenge  
3. For **deadlock_simulation**, open two separate query tabs and follow the step-by-step instructions inside the file  

```sql
-- Start here
source database_design.sql;
```

> ⚠️ Requires **MySQL 8.0+** — `FOR UPDATE NOWAIT` and `SKIP LOCKED` are not available in older versions.

---

# 👩‍💻 Author

**MCA Practical Mini Project Submission**  
Topic: Transactions & Locking — Advanced Ticket Booking System
