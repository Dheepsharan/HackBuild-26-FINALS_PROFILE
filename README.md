# 👑 CraftPulse — Hyperlocal Operating System for Master Artisans & Patrons

[![Netlify Status](https://api.netlify.com/api/v1/badges/df598830-b5b0-4483-8713-b9fb26772c0c/deploy-status)](https://app.netlify.com/projects/craftpulse-fxly)
[![HackBuild '26](https://img.shields.io/badge/HackBuild'26-Grand%20Finale%20Project-E5C378?style=flat&logo=target)](https://craftpulse-fxly.netlify.app)
[![Live Demo](https://img.shields.io/badge/Live%20Demo-Online%20(HTTPS)-3DB88F?style=flat&logo=netlify)](https://craftpulse-fxly.netlify.app/split.html)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

> **Built for HackBuild '26** by **Team CraftPulse** (Led by **Dheepsharan**).  
> A high-performance, offline-first web application connecting neighborhood patrons with verified master craft guilds across Indiranagar, Bengaluru.

---

## 🌐 Live Production Links

Experience the fully deployed application live on Netlify:


---

## 👥 HackBuild '26 Team

* **Team Name:** Team CraftPulse
* **Team Lead:** Dheepsharan (`dheeps02@gmail.com`)
* **Live Deployment:** https://craftpulse-fxly.netlify.app/laptop.html

## 💡 The Problem & The CraftPulse Solution

### The Challenge
India's neighborhood artisanal economy represents over **15 million independent master craftsmen** — shoe restorers, heritage silk tailors, artisan bakers, ceramicists, and generational silversmiths. Despite their exceptional skill, customers face:
1. **Zero Price Transparency:** Reluctance to visit shops due to hidden or arbitrary quotes.
2. **Turnaround Anxiety:** No visibility into active workbench queues or ready dates.
3. **Logistics Friction:** Lack of time for physical drop-off and pickup trips.

### The CraftPulse Solution
CraftPulse bridges timeless craftsmanship with modern software convenience:
* **For Patrons:** Real-time queue transparency, 2D geospatial neighborhood radar, saved garment measurement profiles, and Porter doorstep delivery.
* **For Artisans:** An ergonomic workbench dashboard, automated queue sequencing, custom quote tools, and instant UPI billing with GST-compliant tax invoicing.

---

## ✨ Key Features

### 1. 🗺️ 2D Geospatial Neighborhood Radar Map
* **Interactive Indiranagar Vector Map (560038):** Highlights major corridors (100 Ft Road, 12th Main, CMH Road, Defence Colony, and Metro Purple Line).
* **Live Radar Pin:** Pulsing beacon showing the patron's current location (`🔵 You (Patron)`).
* **Interactive Hover Cards:** Hovering over any workshop pin displays:
  * Atelier name, craft guild, and distance
  * Live queue count and approximate turnaround time
  * Verified community review quotes
  * Quick action buttons: **View Studio →** & **⚡ Order Work**
* **Fullscreen & Modal Support:** Open in dedicated modal or filter pins by craft.

### 2. 🖼️ Auto-Rotating Hero Carousel with Craft Quotes
* Auto-advancing craft showcase (every 5.5s) with authentic workshop photography from Prototype 2.
* Inspirational quotations celebrating local mastery (*"Good work lives just around the corner"*, *"Keep the things you love in good hands"*).
* Smooth cross-fade, Ken Burns effect, manual arrow navigation, and play/pause controls.

### 3. ⚡ Dual Split-Screen Engine (Sub-20ms Real-Time Sync)
* Purpose-built for HackBuild '26 evaluations: presents **Customer Portal** (Left) and **Artisan Workbench** (Right) side-by-side.
* **Independent Session Isolation:** Employs `sessionStorage` and URL role parameters (`?role=customer` & `?role=maker&user=...`) so both accounts operate concurrently with zero identity collisions.
* **Instant Dual-Channel Sync:** Uses W3C `BroadcastChannel` API + native window storage events to broadcast status updates, new orders, and quotes in under 20 milliseconds without a page reload.

### 4. 👥 Animated Human Standing Queue System
* Transparent visual queue widget with animated avatars representing customers currently in line at that workbench.
* Dynamically estimates turnaround times based on active jobs ahead.

### 5. 📏 Saved Garment Measurement Profiles
* Saves custom body measurements (bust, chest, waist, shoulder, hip, length) directly into the customer profile.
* One-click autofill into custom tailoring requests for Asha's Silk Atelier.

### 6. 🚚 Hyperlocal Porter Courier Delivery Integration
* Direct door-to-door fulfillment option for ₹55 via **Porter Hyperlocal Express**.
* **5-Stage Live Dispatch Stepper:**
  $$\text{Ready for Dispatch} \longrightarrow \text{Delivery Requested} \longrightarrow \text{Picked Up} \longrightarrow \text{Out for Delivery} \longrightarrow \text{Delivered to Doorstep}$$
* Real-time tracking ID, driver assignment (Ramesh K.), and milestone simulation.

### 7. 💳 UPI Scan & Pay + Automated GST Invoicing
* Integrated QR code modal compatible with **Google Pay, PhonePe, and Paytm**.
* Instant payment simulation and automatic generation of compliant **GST Tax Invoices** with print/PDF formatting.

---

## 🛠️ The 6 Master Craft Guilds Supported

| # | Atelier Workshop | Master Artisan | Craft Guild | Location |
|---|---|---|---|---|
| **1** | **Footshop & Simplicity** | Vikram Sundaram | 👟 Footwear & Sneaker Resole | 12th Main Road, HAL 2nd Stage |
| **2** | **Asha Bespoke Couture** | Asha Kumar | 🧵 Master Silk Tailoring & Saree Fall | 100 Ft Road, Indiranagar |
| **3** | **The Cake House** | Meera Chawla | 🎂 Artisanal Bakes & Dark Truffles | CMH Road, Indiranagar |
| **4** | **Clay & Kiln Studio** | Kavitha Mohan | 🏺 Hand-Thrown Ceramics & Pottery | Defence Colony, Indiranagar |
| **5** | **Aura Heritage Silver** | Deepak Verma | 💍 92.5 Sterling Silver Filigree | Old Airport Road |
| **6** | **Rajan Master Woodcraft** | Rajan Naidu | 🪵 Malnad Teak & Rosewood Joinery | HAL 3rd Stage |

---

## 🏗️ Technical Architecture & Stack

```
CraftPulse Client Runtime (Offline-First / Zero Dependencies)
├── UI & Layout: Semantic HTML5 + Custom Royal Emerald & Gold CSS3 Tokens
├── Logic & State: Vanilla JavaScript (ES2022+ / Zero Framework Bloat)
├── Real-Time Bus: W3C BroadcastChannel API ('craftpulse-sync-v5') + Window Storage Events
├── Session Isolation: sessionStorage per tab + URL Route Query Binding
├── Geospatial Engine: 2D Vector SVG Canvas with Mathematical Coordinate Projection
├── Queue Algorithm: ZephyrDomain Workload & Capacity Sequencer
├── Payments: NPCI UPI Protocol Standard (Deep-link & QR code generation)
└── Hosting & CDN: Netlify Global Edge Network (TLS 1.3 / HTTPS / Brotli)
```

* **Why Vanilla JavaScript?** Ensures total bundle size under 300KB, sub-100ms first contentful paint (FCP), and instantaneous performance on budget mobile hardware without virtual DOM overhead.
* **Why BroadcastChannel?** Enables zero-latency inter-window message passing on the client without requiring a dedicated external WebSocket server for local dual-screen presentations.

---

## 🚀 Running Locally

To run the application on your local machine:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Dheepsharan/craftpulse.git
   cd craftpulse
   ```

2. **Serve using any lightweight HTTP server:**
   * Using Python:
     ```bash
     python -m http.server 8080
     ```
   * Using Node.js:
     ```bash
     npx serve .
     ```

3. **Open in your browser:**
   * Split Studio (Judge Mode): `http://localhost:8080/split.html`
   * Desktop Mode: `http://localhost:8080/laptop.html`
   * Mobile Mode: `http://localhost:8080/mobile.html`

---

## 👥 HackBuild '26 Team

* **Team Name:** Team CraftPulse
* **Team Lead:** Dheepsharan (`dheeps02@gmail.com`)
* **Live Deployment:** [https://craftpulse-fxly.netlify.app](https://craftpulse-fxly.netlify.app)


---

## 📜 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
