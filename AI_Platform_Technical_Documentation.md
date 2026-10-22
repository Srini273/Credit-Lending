# 🏦 AI LOAN UNDERWRITING PLATFORM - TECHNICAL DOCUMENTATION

## TABLE OF CONTENTS
1. [Platform Overview](#platform-overview)
2. [Technology Stack](#technology-stack)
3. [Architecture & Components](#architecture--components)
4. [Core Features & Attributes](#core-features--attributes)
5. [Frontend Technologies](#frontend-technologies)
6. [Backend Integration](#backend-integration)
7. [Data Processing & Analytics](#data-processing--analytics)
8. [Security & Compliance](#security--compliance)
9. [Database & Storage](#database--storage)
10. [API & Integration Layer](#api--integration-layer)

---

## PLATFORM OVERVIEW

### **What is this Platform?**
An **AI-powered Loan Underwriting & Credit Analysis System** designed for financial institutions, NBFCs, and banks to automate document analysis, creditworthiness evaluation, and loan decision-making.

### **Platform Versions**
- **Standard Version**: Document extraction + basic analysis + Excel export
- **Pro Version**: Advanced dashboard + portfolio management + compliance tools + analytics

### **Target Users**
- Credit Officers & Analysts
- Loan Managers
- Risk Assessors
- Portfolio Managers
- Compliance Officers

---

## TECHNOLOGY STACK

### **Frontend Technologies**

#### **1. HTML5**
```
Purpose: Semantic structure, accessibility
Features Used:
- Semantic tags: <nav>, <section>, <article>
- Form elements with validation
- Drag-and-drop file upload
- Canvas for charts rendering
- Data attributes for dynamic functionality
```

#### **2. CSS3**
```
Advanced Features:
- CSS Grid & Flexbox for responsive layouts
- CSS Variables for theme management
- Gradients (linear & radial) for modern UI
- Animations & transitions
- Media queries for mobile responsiveness
- Box shadows for depth
- Border-radius for modern design
- Z-index layering for modal/sidebar
```

#### **Key CSS Properties Used:**
```css
:root {
    --primary: #0F172A;          /* Primary color */
    --secondary: #EF4444;        /* Alert/Action color */
    --accent: #1E40AF;           /* Accent color */
    --success: #10B981;          /* Success color */
    --warning: #F59E0B;          /* Warning color */
    --danger: #EF5350;           /* Danger color */
    --light: #F9FAFB;            /* Light background */
    --border: #E5E7EB;           /* Border color */
    --text: #374151;             /* Text color */
    --dark-bg: #1F2937;          /* Dark background */
    --premium: #8B5CF6;          /* Premium color */
}
```

#### **3. JavaScript (Vanilla JS)**
```
Core Functionality:
- DOM manipulation (document.querySelector, getElementById, etc.)
- Event listeners (click, drag, drop, change)
- Array methods (map, filter, reduce, forEach)
- Object manipulation (spread operator, destructuring)
- Async operations (setTimeout, fetch API)
- JSON parsing and stringification
- Regular expressions for data extraction
- Local storage for session management
```

#### **JavaScript Modules Used:**
```javascript
// Event Handling
onclick, ondrop, ondragover, ondragleave, onchange

// DOM Selectors
document.getElementById()
document.querySelector()
document.querySelectorAll()
element.classList.add/remove/toggle()

// Data Processing
Array.map(), Array.filter(), Array.find()
Object.keys(), Object.values(), Object.entries()
JSON.parse(), JSON.stringify()

// String Processing
string.replace(), regex patterns
string.split(), string.includes()

// Math Functions
Math.round(), Math.max(), Math.min()
parseFloat(), parseInt()

// Conditional Logic
if/else statements, ternary operators
Switch statements

// Functions
Named functions, arrow functions
Higher-order functions
```

---

## ARCHITECTURE & COMPONENTS

### **1. FRONTEND ARCHITECTURE**

#### **Page Structure (Pro Version)**
```
┌─────────────────────────────────────┐
│          TOP BAR                    │
│  Logo | Title | User Menu           │
└─────────────────────────────────────┘
┌──────────┬──────────────────────────┐
│          │                          │
│ SIDEBAR  │   MAIN CONTENT AREA      │
│ Menu    │   (Dynamic Pages)         │
│ Links   │                          │
│         ├──────────────────────────┤
│         │ Tab Navigation           │
│         ├──────────────────────────┤
│         │ Page-Specific Content    │
│         │ - Charts                 │
│         │ - Forms                  │
│         │ - Tables                 │
│         │ - Analytics              │
│         │                          │
└──────────┴──────────────────────────┘
```

#### **Component Breakdown**

```
Platform Components
│
├─ Navigation Layer
│  ├─ Sidebar Menu
│  ├─ Top Bar
│  └─ Tab Navigation
│
├─ Content Layer
│  ├─ Dashboard Page
│  ├─ Upload & Extract Page
│  ├─ Borrower Management Page
│  ├─ Deep Analysis Page
│  ├─ Portfolio Page
│  ├─ Compliance Page
│  ├─ Reports Page
│  └─ Settings Page
│
├─ Data Display Layer
│  ├─ Cards
│  ├─ Charts & Graphs
│  ├─ Tables
│  ├─ Metrics/Statistics
│  ├─ Status Badges
│  └─ Alert Boxes
│
├─ Input Layer
│  ├─ Forms
│  ├─ File Upload
│  ├─ Dropdowns
│  ├─ Text Inputs
│  ├─ Toggles
│  └─ Buttons
│
└─ Utility Layer
   ├─ Modal Dialogs
   ├─ Notifications
   ├─ Loading Spinners
   └─ Confirmation Dialogs
```

### **2. DATA FLOW ARCHITECTURE**

```
Document Upload
       ↓
File Selection Handler
       ↓
File Validation
       ↓
OCR/Text Extraction (Simulated)
       ↓
Pattern Matching & Data Extraction
       ↓
Form Population
       ↓
User Review & Editing
       ↓
Analysis Trigger
       ↓
Calculation Engine
    (FOIR, DSCR, PTI, LTI, etc.)
       ↓
Score Generation
       ↓
Risk Classification
       ↓
Recommendation Generation
       ↓
Dashboard Display
       ↓
Excel Export
```

---

## CORE FEATURES & ATTRIBUTES

### **1. DOCUMENT PROCESSING**

#### **File Handling**
- **Supported Formats**: PDF, XLSX, XLS, JPG, PNG
- **Drag-and-Drop**: Native HTML5 drag-and-drop API
- **Upload Zone**: Interactive visual feedback on hover/drop
- **File Display**: Shows filename, file size, status badge

#### **Data Extraction** (Simulated)
```javascript
// Pattern matching for different fields
- Borrower Name: /Name[:\s]+([A-Za-z\s]+)/
- Email: /Email[:\s]+([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+)/
- Phone: /Phone[:\s]+(\+?\d{10,13})/
- Income: /Monthly Income[:\s]+[₹$]?([\d,]+)/
- CIBIL: /CIBIL[:\s]+(\d{3,4})/
- Loan Amount: /Loan Amount[:\s]+[₹$]?([\d,]+)/
```

### **2. ANALYSIS FEATURES**

#### **Financial Metrics Calculated**
```
Monthly Income → Average monthly verified income
Annual Income → Extrapolated annual income
Loan Amount → Requested loan amount
EMI → Calculated monthly payment using formula
Total Obligations → EMI + Existing EMI
```

#### **Credit Ratios Computed**

**FOIR (Fixed Obligation Income Ratio)**
```
Formula: (Total Monthly Obligations / Monthly Income) × 100
Safe Range: < 40%
Moderate: 40-55%
High Risk: 55-70%
Very High Risk: > 70%
```

**DSCR (Debt Service Coverage Ratio)**
```
Formula: (Monthly Income - Total Obligations) / Proposed EMI
Healthy: ≥ 1.25x
Marginal: 1.0 - 1.25x
Stressed: < 1.0x
```

**PTI (Payment-to-Income)**
```
Formula: (Proposed EMI / Monthly Income) × 100
Safe: < 30%
Moderate: 30-45%
High Risk: > 45%
```

**LTI (Loan-to-Income)**
```
Formula: Loan Amount / Annual Income
Conservative: < 2.0x
Moderate: 2.0 - 3.5x
Aggressive: > 3.5x
```

#### **Additional Metrics**
```
Current Ratio: Current Assets / Current Liabilities
Debt-to-Equity: Total Debt / Equity
Profit Margin: (Net Profit / Turnover) × 100
AMB to EMI: Average Monthly Balance / EMI
Interest Coverage: EBITDA / Interest Expense
```

### **3. RISK SCORING**

#### **Creditworthiness Score** (0-100)
```javascript
Base Score: 50

Add points for:
- CIBIL Score: (CIBIL / 900) × 20 points
- FOIR: 20 pts (< 40%) to 5 pts (> 70%)
- DSCR: 15 pts (≥ 1.25x) to 0 pts (< 0.8x)
- Employment Stability: 10 pts (salaried) to 3 pts (gig)
- Liquidity: 10 pts (strong) to 2 pts (weak)
- Current Ratio: 8 pts (≥ 2.0) to 3 pts (< 1.5)
- Bounce History: 7 pts (clean) to 0 pts (frequent)
- Work Orders: 5 pts (strong pipeline) to 0 pts (weak)

Final Score: Sum of all points (capped at 100)
```

#### **Risk Tiers**
```
Tier 1: 75-100  → APPROVE ✅
Tier 2: 55-74   → CONDITIONAL ⚠️
Tier 3: 35-54   → MANUAL REVIEW 🔍
Tier 4: 0-34    → DECLINE ❌
```

### **4. BORROWER PROFILING**

#### **Employment Types**
- Salaried (Stability: 90/100)
- Self-employed (Stability: 70/100)
- Business Owner (Stability: 70/100)
- Gig Worker (Stability: 50/100)
- Farmer (Stability: 40/100)

#### **Income Stability Assessment**
```
High: Consistent, documented income
Medium: Variable but traceable
Low: Irregular or undocumented
```

#### **Liquidity Assessment**
```
Strong: AMB ≥ 2× EMI
Moderate: AMB 1-2× EMI
Weak: AMB < 1× EMI
```

---

## FRONTEND TECHNOLOGIES

### **1. CHART.JS**
```
Purpose: Data visualization
Charts Used:
- Doughnut Chart: Application status distribution
- Bar Chart: Risk distribution
- Line Chart: Income trends, processing timeline
- Pie Chart: Portfolio segmentation

Implementation:
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js"></script>

Features:
- Responsive: Automatically resizes
- Interactive: Hover tooltips, legend
- Animated: Smooth transitions
- Customizable: Colors, labels, options
```

#### **Example Chart Implementation**
```javascript
new Chart(ctx, {
    type: 'doughnut',  // Chart type
    data: {
        labels: ['Approved', 'Pending', 'Rejected'],
        datasets: [{
            data: [18, 4, 2],
            backgroundColor: ['#10B981', '#F59E0B', '#EF4444'],
            borderColor: 'white',
            borderWidth: 2
        }]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false
    }
});
```

### **2. XLSX (SHEETJS)**
```
Purpose: Excel file generation and export
Features:
- Create workbooks with multiple sheets
- Format cells with colors, fonts, borders
- Generate from JSON data
- Download as .xlsx files

Implementation:
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

Usage:
XLSX.utils.aoa_to_sheet() → Array to sheet
XLSX.utils.book_new() → Create workbook
XLSX.utils.book_append_sheet() → Add sheet
XLSX.writeFile() → Download file
```

### **3. FONT AWESOME**
```
Purpose: Icon library
Features:
- 6000+ icons
- Scalable vector icons
- Free CDN access
- Easy integration: <i class="fas fa-icon-name"></i>

Icons Used:
- fa-brain: AI/Intelligence
- fa-credit-card: CIBIL
- fa-rupee-sign: Currency
- fa-chart-line: Analytics
- fa-shield-alt: Security
- fa-cloud-upload-alt: Upload
- fa-user-tie: Borrower
- fa-briefcase: Portfolio
- fa-check-circle: Success
- fa-exclamation-triangle: Warning
- fa-file-pdf: PDF
- fa-file-excel: Excel
- And 100+ more...

Implementation:
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
```

---

## BACKEND INTEGRATION

### **1. DATA FLOW (CLIENT-SIDE)**

```javascript
// Form Data Collection
const borrowerData = {
    name: document.getElementById('e_name').value,
    email: document.getElementById('e_email').value,
    phone: document.getElementById('e_phone').value,
    monthly_income: parseFloat(document.getElementById('e_monthly_income').value),
    annual_income: parseFloat(document.getElementById('e_annual_income').value),
    loan_amount: parseFloat(document.getElementById('e_loan_amount').value),
    // ... more fields
};

// Processing (Calculation Engine)
const analysis = performAnalysis(borrowerData);

// Storage (Optional - LocalStorage)
localStorage.setItem('borrowerData', JSON.stringify(borrowerData));
localStorage.setItem('analysis', JSON.stringify(analysis));
```

### **2. CALCULATION ENGINE**

```javascript
function performAnalysis(data) {
    // 1. Income Calculation
    const monthly_income = data.monthly_income || (data.annual_income / 12);
    const annual_income = data.annual_income || (monthly_income * 12);
    
    // 2. EMI Calculation
    const rate = 0.0083; // 10% p.a.
    const months = data.loan_tenure || 60;
    const principal = data.loan_amount;
    
    const numerator = principal * rate * Math.pow(1 + rate, months);
    const denominator = Math.pow(1 + rate, months) - 1;
    const proposed_emi = numerator / denominator;
    
    // 3. Obligation Calculation
    const total_obligations = data.existing_emi + proposed_emi;
    
    // 4. Ratio Calculation
    const foir = (total_obligations / monthly_income) * 100;
    const dscr = (monthly_income - total_obligations) / proposed_emi;
    const pti = (proposed_emi / monthly_income) * 100;
    const lti = data.loan_amount / annual_income;
    
    // 5. Risk Assessment
    const cibil_risk = assessCIBILRisk(data.cibil_score);
    const emp_stability = assessEmploymentStability(data.emp_type);
    const liquidity = assessLiquidity(data.amb, proposed_emi);
    
    // 6. Score Generation
    let score = calculateCreditworthinessScore({
        cibil: data.cibil_score,
        foir: foir,
        dscr: dscr,
        emp_stability: emp_stability,
        liquidity: liquidity,
        // ... more parameters
    });
    
    // 7. Recommendation
    const recommendation = generateRecommendation(score, cibil_risk, foir, dscr);
    
    return { score, recommendation, /* all metrics */ };
}
```

---

## DATA PROCESSING & ANALYTICS

### **1. REGEX PATTERNS FOR DATA EXTRACTION**

```javascript
// Financial Data Extraction
const patterns = {
    name: /Name[:\s]+([A-Za-z\s]+)/,
    email: /Email[:\s]+([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+)/,
    phone: /Phone[:\s]+(\+?\d{10,13})/,
    cibil: /CIBIL[:\s]+(\d{3,4})/,
    monthly_income: /Monthly Income[:\s]+[₹$]?([\d,]+)/,
    annual_income: /Annual Income[:\s]+[₹$]?([\d,]+)/,
    loan_amount: /Loan Amount[:\s]+[₹$]?([\d,]+)/,
    gst_registration: /GST[:\s]+(Yes|No|Registered|Unregistered)/,
    // ... more patterns
};

function extractField(text, patterns) {
    for (let pattern of patterns) {
        const match = text.match(pattern);
        if (match) {
            return match[1].trim();
        }
    }
    return null;
}
```

### **2. DATA VALIDATION**

```javascript
// Input Validation Rules
const validationRules = {
    cibil_score: { min: 300, max: 900 },
    monthly_income: { min: 0, max: 1000000 },
    age: { min: 18, max: 75 },
    work_experience: { min: 0, max: 50 },
    foir: { max: 100 }, // percentage
    dscr: { min: 0, max: 5 }, // multiplier
};

function validateData(data) {
    let errors = [];
    
    if (data.cibil_score < 300 || data.cibil_score > 900) {
        errors.push("Invalid CIBIL score");
    }
    
    if (data.monthly_income <= 0) {
        errors.push("Income must be positive");
    }
    
    return errors.length === 0 ? true : errors;
}
```

### **3. STATISTICAL CALCULATIONS**

```javascript
// Income Stability Analysis
function calculateIncomeStability(monthlyIncomes) {
    const mean = monthlyIncomes.reduce((a, b) => a + b) / monthlyIncomes.length;
    const variance = monthlyIncomes.reduce((sum, x) => sum + Math.pow(x - mean, 2), 0) / monthlyIncomes.length;
    const stdDev = Math.sqrt(variance);
    const coefficientOfVariation = stdDev / mean;
    
    return 1 - coefficientOfVariation; // Stability score (0-1)
}

// EMI Calculation with Compound Interest
function calculateEMI(principal, monthlyRate, months) {
    const numerator = principal * monthlyRate * Math.pow(1 + monthlyRate, months);
    const denominator = Math.pow(1 + monthlyRate, months) - 1;
    return numerator / denominator;
}

// Expected Loss Calculation
function calculateExpectedLoss(PD, LGD, EAD) {
    return PD * LGD * EAD; // Probability of Default × Loss Given Default × Exposure at Default
}
```

---

## SECURITY & COMPLIANCE

### **1. DATA SECURITY MEASURES (Implemented)**

```
✅ Client-side data processing (no server transmission)
✅ Form input validation
✅ Sanitization of user inputs
✅ No sensitive data logged to console
✅ Session-based storage with encryption option
```

### **2. RECOMMENDED BACKEND SECURITY**

```
🔐 HTTPS/TLS encryption for data transmission
🔐 AES-256 encryption for data at rest
🔐 JWT tokens for authentication
🔐 Role-based access control (RBAC)
🔐 API rate limiting
🔐 Input validation & sanitization
🔐 SQL injection prevention (parameterized queries)
🔐 CSRF token protection
🔐 Audit logging & monitoring
🔐 DPDPA (Data Protection) compliance
🔐 Regular security audits & penetration testing
```

### **3. COMPLIANCE FRAMEWORKS**

```
RBI Guidelines:
- Fair Practices Code
- Algorithmic lending rules
- Consumer protection standards

Data Protection:
- DPDPA (India)
- GDPR (Europe)
- CCPA (California)

Financial Standards:
- Basel III capital requirements
- Know Your Customer (KYC)
- Anti-Money Laundering (AML)
```

---

## DATABASE & STORAGE

### **1. CLIENT-SIDE STORAGE**

```javascript
// LocalStorage (Persistent)
localStorage.setItem('borrowerData', JSON.stringify(data));
const retrieved = JSON.parse(localStorage.getItem('borrowerData'));
localStorage.clear(); // Clear all

// SessionStorage (Temporary)
sessionStorage.setItem('tempData', JSON.stringify(data));
const temp = JSON.parse(sessionStorage.getItem('tempData'));

// In-Memory (Current Session)
let appState = {
    borrowers: [],
    currentAnalysis: {},
    dashboardMetrics: {}
};
```

### **2. BACKEND DATABASE STRUCTURE (Recommended)**

```sql
-- Borrowers Table
CREATE TABLE borrowers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(20),
    cibil_score INT,
    employment_type VARCHAR(50),
    monthly_income DECIMAL(12, 2),
    annual_income DECIMAL(12, 2),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

-- Loan Applications Table
CREATE TABLE loan_applications (
    id INT PRIMARY KEY AUTO_INCREMENT,
    borrower_id INT FOREIGN KEY,
    loan_amount DECIMAL(12, 2),
    tenure_months INT,
    existing_emi DECIMAL(10, 2),
    foir DECIMAL(5, 2),
    dscr DECIMAL(5, 2),
    status ENUM('Pending', 'Approved', 'Rejected', 'Manual Review'),
    risk_score INT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

-- Analysis Results Table
CREATE TABLE analysis_results (
    id INT PRIMARY KEY AUTO_INCREMENT,
    application_id INT FOREIGN KEY,
    monthly_income DECIMAL(12, 2),
    proposed_emi DECIMAL(10, 2),
    foir DECIMAL(5, 2),
    dscr DECIMAL(5, 2),
    pti DECIMAL(5, 2),
    lti DECIMAL(5, 2),
    recommendation VARCHAR(255),
    analysis_date TIMESTAMP
);

-- Audit Log Table
CREATE TABLE audit_logs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    action VARCHAR(255),
    borrower_id INT,
    timestamp TIMESTAMP,
    ip_address VARCHAR(45),
    details JSON
);
```

---

## API & INTEGRATION LAYER

### **1. RECOMMENDED API ENDPOINTS**

```
Authentication:
POST   /api/auth/login
POST   /api/auth/logout
POST   /api/auth/refresh-token

Borrower Management:
GET    /api/borrowers              # List all borrowers
GET    /api/borrowers/{id}         # Get single borrower
POST   /api/borrowers              # Create new borrower
PUT    /api/borrowers/{id}         # Update borrower
DELETE /api/borrowers/{id}         # Delete borrower
GET    /api/borrowers/search       # Search borrowers

Loan Applications:
GET    /api/applications
POST   /api/applications           # Create new application
GET    /api/applications/{id}
PUT    /api/applications/{id}
DELETE /api/applications/{id}

Analysis:
POST   /api/analysis/evaluate      # Run analysis on borrower
GET    /api/analysis/{id}          # Get analysis results
POST   /api/analysis/batch         # Batch analysis

Portfolio:
GET    /api/portfolio/metrics      # Get portfolio KPIs
GET    /api/portfolio/risk-map     # Risk distribution
GET    /api/portfolio/segment      # By segment analytics

Reports:
GET    /api/reports/borrower/{id}  # Individual report
GET    /api/reports/portfolio      # Portfolio report
GET    /api/reports/analytics      # Analytics report
POST   /api/reports/export         # Export format

Compliance:
GET    /api/compliance/status
POST   /api/compliance/audit-log
GET    /api/compliance/audit-trail
```

### **2. API REQUEST/RESPONSE EXAMPLES**

```javascript
// Create Loan Application Request
POST /api/applications
{
    "borrower_id": 123,
    "loan_amount": 750000,
    "tenure_months": 60,
    "existing_emi": 15000,
    "employment_type": "Business Owner"
}

// Response
{
    "success": true,
    "application_id": 456,
    "status": "Pending",
    "next_step": "Analysis"
}

// Analysis Request
POST /api/analysis/evaluate
{
    "application_id": 456,
    "run_ai_checks": true
}

// Response
{
    "application_id": 456,
    "creditworthiness_score": 82,
    "recommendation": "APPROVE",
    "foir": 38.2,
    "dscr": 1.42,
    "timestamp": "2024-01-15T10:30:00Z"
}
```

---

## COMPLETE ATTRIBUTE LIST

### **BORROWER ATTRIBUTES**

```javascript
const borrowerAttributes = {
    // Personal Information
    name: String,
    email: String,
    phone: String,
    age: Integer,
    pan: String,
    aadhar: String,
    
    // Employment Details
    employment_type: String, // Salaried, Self-employed, Business, Gig, Farmer
    company_name: String,
    designation: String,
    work_experience_years: Integer,
    employment_tenure_months: Integer,
    
    // Income Information
    monthly_income: Decimal,
    annual_income: Decimal,
    income_stability_score: Decimal,
    income_verification_source: String, // Bank, GST, ITR, Salary slip
    
    // Banking Details
    primary_bank: String,
    bank_account_type: String,
    avg_monthly_balance: Decimal,
    monthly_turnover: Decimal,
    bounce_count_6m: Integer,
    bounce_frequency: String,
    
    // Credit Information
    cibil_score: Integer,
    cibil_risk_level: String,
    existing_emi: Decimal,
    total_liabilities: Decimal,
    credit_history_months: Integer,
    
    // Financial Metrics
    annual_turnover: Decimal,
    net_profit: Decimal,
    profit_margin: Decimal,
    current_ratio: Decimal,
    debt_to_equity: Decimal,
    
    // Business Information
    gst_registration: Boolean,
    gst_number: String,
    work_orders_count: Integer,
    work_orders_value: Decimal,
    business_category: String,
    
    // Loan Request
    loan_amount_requested: Decimal,
    loan_tenure_months: Integer,
    proposed_use: String,
    collateral_value: Decimal,
    
    // Calculated Fields
    proposed_emi: Decimal,
    total_monthly_obligations: Decimal,
    foir: Decimal,
    dscr: Decimal,
    pti: Decimal,
    lti: Decimal,
    
    // Assessment Results
    creditworthiness_score: Integer,
    risk_tier: String,
    recommendation: String,
    final_decision: String,
    
    // Metadata
    created_at: DateTime,
    updated_at: DateTime,
    status: String, // Pending, Approved, Rejected, Manual Review
    analyst_notes: Text
};
```

### **ANALYSIS RESULT ATTRIBUTES**

```javascript
const analysisAttributes = {
    // Identification
    analysis_id: String,
    borrower_id: String,
    application_id: String,
    analysis_date: DateTime,
    analyst_id: String,
    
    // CIBIL Assessment
    cibil_score: Integer,
    cibil_risk_classification: String,
    cibil_approval_probability: Decimal,
    
    // Income Verification
    verified_monthly_income: Decimal,
    verified_annual_income: Decimal,
    income_consistency_score: Decimal,
    
    // Repayment Capacity Ratios
    proposed_emi: Decimal,
    total_obligations: Decimal,
    foir_ratio: Decimal,
    foir_risk_level: String,
    dscr_ratio: Decimal,
    dscr_status: String,
    pti_ratio: Decimal,
    pti_risk_level: String,
    lti_ratio: Decimal,
    lti_assessment: String,
    
    // Financial Health
    annual_turnover: Decimal,
    net_profit: Decimal,
    profit_margin_percent: Decimal,
    current_ratio: Decimal,
    current_ratio_assessment: String,
    debt_to_equity_ratio: Decimal,
    de_assessment: String,
    
    // Liquidity & Cash Flow
    avg_monthly_balance: Decimal,
    amb_to_emi_ratio: Decimal,
    liquidity_buffer_status: String,
    monthly_cash_flow: Decimal,
    cash_flow_adequacy: String,
    
    // Risk Indicators
    bounce_count_6m: Integer,
    bounce_risk_level: String,
    bounce_impact_summary: String,
    fraud_risk_flags: Array,
    
    // Employment & Stability
    employment_type: String,
    employment_stability_score: Integer,
    work_experience_years: Integer,
    tenure_risk_level: String,
    income_source_concentration: Decimal,
    
    // Business Metrics
    work_orders_count: Integer,
    work_orders_value: Decimal,
    work_order_stability: String,
    business_maturity_months: Integer,
    
    // Trend Analysis
    trend_direction: String,
    cash_flow_trend: String,
    income_trend: String,
    
    // Composite Scoring
    creditworthiness_score: Decimal,
    risk_tier: String, // 1-4
    approval_recommendation: String, // Approve, Conditional, Manual Review, Decline
    
    // Decision Support
    key_strengths: Array[String],
    key_concerns: Array[String],
    recommended_conditions: Array[String],
    suggested_loan_structure: Object,
    estimated_approval_probability: Decimal,
    
    // Audit Trail
    created_at: DateTime,
    updated_at: DateTime,
    reviewed_by: String,
    decision_date: DateTime,
    decision_reason: Text
};
```

### **DASHBOARD ATTRIBUTES**

```javascript
const dashboardMetrics = {
    // Portfolio Statistics
    total_portfolio_value: Decimal,
    active_loan_count: Integer,
    npa_count: Integer,
    npa_rate_percent: Decimal,
    monthly_collections: Decimal,
    
    // Application Statistics
    total_applications: Integer,
    approved_count: Integer,
    rejected_count: Integer,
    pending_count: Integer,
    manual_review_count: Integer,
    approval_rate_percent: Decimal,
    
    // Processing Metrics
    average_processing_days: Decimal,
    fastest_processing_hours: Integer,
    slowest_processing_hours: Integer,
    
    // Risk Metrics
    average_cibil_score: Decimal,
    average_foir_percent: Decimal,
    average_dscr_ratio: Decimal,
    credit_score_distribution: Object,
    risk_distribution: Object,
    
    // Trend Data
    application_trend_data: Array,
    approval_trend_data: Array,
    npa_trend_data: Array,
    processing_time_trend: Array,
    
    // Segment Analysis
    segment_wise_portfolio: Object,
    segment_wise_npa: Object,
    segment_wise_approval_rate: Object,
    
    // AI Insights
    portfolio_health_summary: String,
    risk_alerts: Array[String],
    opportunities: Array[String],
    recommended_actions: Array[String]
};
```

---

## INTEGRATION WITH BACKEND SERVICES

### **1. THIRD-PARTY API INTEGRATIONS (Recommended)**

```
CIBIL / CRIF API
├─ Credit Score Pull
├─ Bureau Report
├─ Enquiry History
└─ Default Information

GSTN API (Government)
├─ GST Return Filing Data
├─ Turnover Verification
└─ Filing Regularity

Bank Account Aggregator
├─ Bank Statement Data
├─ Transaction History
└─ AMB Computation

Document Processing
├─ OCR (AWS Textract, Google Vision)
├─ PDF Extraction
└─ Image Processing

Notification Service
├─ Email Alerts
├─ SMS Updates
└─ Dashboard Notifications

Storage Service
├─ AWS S3 / Google Cloud Storage
├─ Document Management
└─ Audit Trail
```

### **2. BACKEND TECHNOLOGY STACK (Recommended)**

```
Framework:
- Node.js + Express.js (JavaScript/Fast)
- Python + Django/Flask (Data science)
- Java + Spring Boot (Enterprise)

Database:
- PostgreSQL (Relational)
- MongoDB (NoSQL - flexible schema)
- Redis (Cache)

Authentication:
- JWT Tokens
- OAuth 2.0
- Two-Factor Authentication

Deployment:
- Docker (Containerization)
- Kubernetes (Orchestration)
- AWS / Google Cloud / Azure

CI/CD:
- Jenkins / GitHub Actions
- Docker Registry
- Automated Testing
```

---

## SUMMARY TABLE

| Component | Technology | Purpose |
|-----------|-----------|---------|
| Structure | HTML5 | Semantic markup, forms |
| Styling | CSS3 | Responsive design, animations |
| Interactivity | JavaScript (Vanilla) | DOM manipulation, calculations |
| Charts | Chart.js | Data visualization |
| Excel Export | XLSX/SheetJS | Report generation |
| Icons | Font Awesome | UI icons |
| Layout | CSS Grid/Flexbox | Responsive grid system |
| Animations | CSS Transitions | Smooth UI effects |
| State Management | JavaScript Objects | In-memory state |
| Storage | LocalStorage | Session persistence |
| Calculation | Math.js (built-in) | Financial computations |
| Validation | RegEx | Data validation |
| Data Extraction | Pattern Matching | Field extraction |
| Risk Assessment | Weighted Scoring | Creditworthiness |
| Reporting | JSON to XLSX | Excel export |

---

## FILE STRUCTURE

```
project/
│
├── index.html (Standard Version - 1 file, ~500 KB)
│   ├── HTML Structure
│   ├── CSS Styling (embedded)
│   ├── JavaScript Logic (embedded)
│   └── Charts & Visualizations
│
├── pro_version.html (Pro Version - 1 file, ~750 KB)
│   ├── Advanced UI
│   ├── Multiple Pages (8 sections)
│   ├── Dashboard Analytics
│   ├── Portfolio Management
│   ├── Compliance Tools
│   └── Advanced Reporting
│
└── Supporting Libraries (CDN-based)
    ├── Chart.js v3.9.1
    ├── XLSX v0.18.5
    ├── Font Awesome v6.4.0
    └── No local dependencies!
```

---

## FEATURES BREAKDOWN

### **Core Analysis Features**
✅ Document Upload & Extraction  
✅ Financial Statement Analysis  
✅ Income Verification  
✅ CIBIL Score Assessment  
✅ Ratio Calculations (FOIR, DSCR, PTI, LTI)  
✅ Risk Scoring  
✅ Creditworthiness Evaluation  
✅ Recommendation Generation  

### **Pro Version Exclusive**
✅ Executive Dashboard  
✅ Portfolio Analytics  
✅ Risk Heat Maps  
✅ Compliance Tracking  
✅ Advanced Reporting  
✅ Trend Analysis  
✅ Borrower Management  
✅ Settings & Configuration  

### **Data Visualization**
📊 Doughnut Charts  
📊 Bar Charts  
📊 Line Charts  
📊 Pie Charts  
📊 Heat Maps  
📊 Progress Bars  
📊 Status Badges  

### **Export Capabilities**
📥 Excel Reports (.xlsx)  
📥 PDF Reports  
📥 JSON Data  
📥 CSV Export  
📥 Custom Report Templates  

---

## CONCLUSION

This AI Loan Underwriting Platform is built with:

**Frontend**:
- Pure HTML5/CSS3/JavaScript (no frameworks)
- Chart.js for visualizations
- XLSX for Excel export
- Font Awesome for icons
- Fully responsive & mobile-ready

**Key Attributes**:
- Client-side processing (fast, secure)
- No backend required (works standalone)
- Multiple analysis modules
- Comprehensive risk assessment
- Professional UI/UX
- Enterprise-grade features in Pro version

**Scalability Options**:
- Add backend API for data persistence
- Integrate with CIBIL/GST/Bank APIs
- Deploy to cloud (AWS/Azure/GCP)
- Add user authentication
- Implement audit logging
- Scale to enterprise deployment

---

**Last Updated**: 2024  
**Version**: 1.0 (Standard & Pro)  
**Status**: Production-Ready

