<p align="center">
  <img src="assets/banner.svg" alt="AI Credit Intelligence Platform" width="100%"/>
</p>

<h3 align="center">Stop re-keying numbers. Start making credit decisions.</h3>

<p align="center">
  <b>An AI-based document intelligence and credit underwriting platform for commercial vehicle (CV) loans.</b><br/>
  Upload a borrower's financial statements. Get extracted financials, 14 credit ratios, a 100-point score and an analyst-ready recommendation, in seconds instead of days.
</p>

<p align="center">
  <img alt="Status" src="https://img.shields.io/badge/status-prototype-orange?style=for-the-badge"/>
  <img alt="Frontend" src="https://img.shields.io/badge/frontend-HTML%20%7C%20CSS%20%7C%20JS-1E40AF?style=for-the-badge"/>
  <img alt="Backend" src="https://img.shields.io/badge/backend-FastAPI%20%7C%20Flask-009688?style=for-the-badge"/>
  <img alt="AI" src="https://img.shields.io/badge/AI-Gemini%20Vision%20OCR-8B5CF6?style=for-the-badge"/>
  <img alt="Python" src="https://img.shields.io/badge/python-3.9%2B-3776AB?style=for-the-badge&logo=python&logoColor=white"/>
</p>

<p align="center">
  <a href="#-key-features">Features</a> |
  <a href="#-how-it-works">How it works</a> |
  <a href="#-underwriting-logic">Underwriting logic</a> |
  <a href="#-getting-started">Get started</a> |
  <a href="#-limitations--roadmap">Roadmap</a>
</p>

---

## 🚀 At a Glance

| 📄 3 | 🧮 14 | 🎯 100 | ⚡ 1 click |
|:---:|:---:|:---:|:---:|
| input formats<br/>PDF, Excel, images | financial ratios<br/>benchmarked to industry | point scorecard<br/>fully explainable | Excel export<br/>for the credit note |

---

## 🎬 How It Works

<p align="center">
  <img src="assets/workflow.svg" alt="Platform workflow: Upload, Extract, Compute, Score, Decide" width="100%"/>
</p>

---

## 🖥️ Dashboard Preview

<p align="center">
  <img src="assets/dashboard-preview.svg" alt="Illustrative dashboard preview" width="100%"/>
</p>

<p align="center"><sub>Illustrative preview of the dashboard layout. Figures shown are sample values.</sub></p>

---

## 📌 Why this exists

<p align="center">
  <img src="assets/before-after.svg" alt="Manual process versus AI Credit Intelligence" width="100%"/>
</p>

In NBFC and bank credit workflows, the **credit-processing stage** (reading financial statements, spreading numbers, computing ratios, writing the note) is where most of the turnaround time (TAT) is lost. This platform automates that stage:

| Manual process | With this platform |
|---|---|
| Read PDFs / scans and re-key numbers into Excel | Automated extraction via OCR + LLM + rule-based parsing |
| Compute ratios by hand | 14 ratios computed instantly, benchmarked against industry ranges |
| Subjective first-cut judgement | Transparent, rule-based scorecard with point-by-point breakdown |
| Credit note written from scratch | Structured recommendation + Excel export |

---

## ✨ Key Features

- **📄 Multi-format document intake**: PDF, Excel (`.xlsx` / `.xls`), and scanned images (`.jpg` / `.png`) with drag-and-drop upload
- **🧠 AI extraction pipeline**: Gemini Vision OCR → LLM-based structured JSON extraction → regex/rule-based parsing as fallback
- **📊 3-year financial spreading**: Revenue, EBITDA, PAT, OCF, current assets, fixed assets, current liabilities, long-term debt, equity (Y1, Y2, Y3)
- **🧮 14 financial ratios with industry benchmarks**: Current, Quick, D/E, Interest Coverage, Net Margin, EBITDA Margin, OCF Margin, Asset Turnover, DSCR, Revenue Growth, ROE, ROA, FOIR, PTI
- **🎯 100-point underwriting scorecard**: nine weighted parameters, with tiered recommendations
- **💳 CIBIL risk banding**: Low / Moderate / High risk classification
- **📈 Interactive dashboards**: Chart.js visualisations (trends, risk distribution, portfolio view)
- **📥 One-click Excel export**: Multi-sheet reports via SheetJS
- **🔁 Resilient OCR**: Gemini Vision first, automatic fallback to local Tesseract

---

## 🏗️ Architecture

<p align="center">
  <img src="assets/architecture.svg" alt="System architecture" width="100%"/>
</p>

**Data flow:** Upload → OCR / text extraction → structured JSON (3 years) → EBITDA validation → 14 ratios → scorecard → decision tier → dashboard + Excel export.

---

## 🧮 Underwriting Logic

### 14 ratios, benchmarked

<p align="center">
  <img src="assets/ratios.svg" alt="14 financial ratios with benchmark ranges" width="100%"/>
</p>

### Extraction rules (applied consistently across LLM and rule-based paths)

| Field | Source line |
|---|---|
| Revenue | *Total revenue from operations* (never Total Income) |
| Net Profit | *Profit after tax* for the year |
| EBITDA | Reported value, else **PAT + Tax + Interest + D&A** (fallbacks: PBT + Finance Cost + D&A, or EBIT + D&A) |
| Current Assets / Liabilities | *Total current assets / liabilities* |
| Fixed Assets | *Total non-current assets* |
| Long-Term Debt | *Total non-current liabilities* |
| Column rule | Always the **full-year (year-ended)** columns, not quarterly ones |

### Scorecard (100 points)

<p align="center">
  <img src="assets/scorecard.svg" alt="100-point underwriting scorecard and decision tiers" width="100%"/>
</p>

| Parameter | Max pts |
|---|---|
| DSCR | 15 |
| Net Profit Margin | 15 |
| EBITDA Margin | 10 |
| Debt / Equity | 10 |
| Current Ratio | 10 |
| OCF Margin | 10 |
| Revenue Growth (YoY) | 10 |
| Asset Turnover | 10 |
| Total Assets (scale) | 10 |

### Decision tiers

| Score | Outcome |
|---|---|
| **≥ 70** | ✅ Proposal Recommended |
| **50 – 69** | 🔍 Detailed Analysis Needed (co-applicant / collateral / closer review) |
| **< 50** | ❌ Proposal Not Recommended |

> The platform is a **decision-support tool**. It deliberately has no auto-approve or auto-reject, so a credit analyst always makes the final call.

### CIBIL bands

| Score | Risk |
|---|---|
| 750 – 900 | Low risk, standard approval |
| 650 – 749 | Moderate risk, needs co-applicant or collateral |
| < 650 | High risk, not recommended |

---

## 🧰 Tech Stack

<p align="center">
  <img src="assets/tech-stack.svg" alt="Tech stack" width="100%"/>
</p>

| Layer | Technology |
|---|---|
| Frontend | HTML5, CSS3 (Grid / Flexbox / CSS variables), Vanilla JavaScript |
| Visualisation | Chart.js 3.9.1 |
| Excel export | SheetJS (XLSX 0.18.5) |
| Icons | Font Awesome 6.4 |
| Backend | Python, FastAPI + Uvicorn (Flask alternative included) |
| Document parsing | pdfplumber, pandas, openpyxl, Pillow |
| AI / OCR | Google Gemini (Vision OCR + structured extraction), pytesseract fallback |

---

## 📁 Repository Structure

```
Credit-Lending/
├── index.html                           # Entry point
├── credit_Platform_v5.html              # Platform v5
├── AI_CREDIT_PLATFORM_V4.html           # Platform v4 (+ .bak backups)
├── credit_platform_v4.html
├── ENHANCED_AI_CREDIT_PLATFORM.html     # Enhanced / Pro build
├── ai_credit_engine 19.5.html           # Credit engine build
├── backend_fastapi_server.py            # Extraction + ratio + scorecard API (FastAPI)
├── backend_flask_server.py              # Flask version of the backend
├── start_server.bat                     # One-click backend launcher (Windows)
├── AI_Platform_Technical_Documentation.md  # Full technical documentation
├── QUICK_REFERENCE_GUIDE.txt            # Quick reference
└── Pdf.pdf                              # Supporting document
```

---

## 🚀 Getting Started

### Prerequisites
- Python 3.9+ (or [`uv`](https://github.com/astral-sh/uv))
- A Google Gemini API key
- *(Optional)* [Tesseract OCR](https://github.com/tesseract-ocr/tesseract) installed locally for the OCR fallback

### 1. Clone
```bash
git clone https://github.com/Srini273/Credit-Lending.git
cd Credit-Lending
```

### 2. Start the backend

**Option A: `uv` (one command)**
```bash
uv run --with fastapi --with uvicorn --with python-multipart --with pandas \
       --with openpyxl --with pdfplumber --with Pillow --with requests \
       backend_fastapi_server.py
```

**Option B: pip**
```bash
pip install fastapi uvicorn python-multipart pandas openpyxl pdfplumber Pillow requests pytesseract
python backend_fastapi_server.py
```

**Option C: Windows**: double-click `start_server.bat`

Verify it's running: `GET /api/ping` should return a healthy status.

### 3. Open the platform
Open `index.html` (or `credit_Platform_v5.html`) in your browser, upload a financial statement, review the extracted fields, and run the analysis.

> 💡 The frontend also works standalone for manual data entry and demo analysis; the backend is needed for real document extraction.

---

## 🧪 Typical Workflow

1. **Upload** annual report / financial statements (PDF, Excel, or image)
2. **Extract**: OCR and AI pull out 3 years of financials
3. **Review** the auto-populated fields and correct anything if needed
4. **Add loan inputs**: CIBIL score, proposed loan, EMI, monthly income, existing EMI
5. **Analyse**: ratios, benchmarks, scorecard, decision tier
6. **Export** the Excel report for the credit note

---

## ⚠️ Limitations & Roadmap

**Current limitations**
- Prototype: **rule-based and LLM-assisted**, not a trained credit-scoring ML model
- Extraction accuracy depends on document quality and statement layout; always review extracted values before relying on the output
- Benchmarks and scorecard thresholds are fixed, general-purpose ranges, not calibrated to a specific portfolio
- Loan inputs (CIBIL, EMI, income) have placeholder defaults and should be set per borrower
- No authentication, database, or audit logging yet

**Roadmap**
- [ ] Explainable ML scoring (e.g., SHAP) validated on historical loan data
- [ ] Database persistence + audit trail
- [ ] Role-based access control and JWT authentication
- [ ] CIBIL / GSTN / Account Aggregator API integrations
- [ ] Source-cell highlighting so analysts can verify every extracted number
- [ ] Automated tests and CI

---

## 🔐 Security & Compliance Notes

- Do **not** commit API keys; load them from environment variables or user input
- Restrict CORS origins before any non-local deployment
- Production use would require encryption at rest/in transit, RBAC, and audit logging, in line with RBI fair-practice and algorithmic-lending guidance and India's DPDP Act

---

## 📚 Documentation

See [`AI_Platform_Technical_Documentation.md`](./AI_Platform_Technical_Documentation.md) for the full component, data-model, and API design, and [`QUICK_REFERENCE_GUIDE.txt`](./QUICK_REFERENCE_GUIDE.txt) for a short usage guide.

---

## 👤 Author

**Srinivasan D** · [@Srini273](https://github.com/Srini273)

---

## 📄 License

No license has been specified yet. Add one (e.g., MIT) before sharing or accepting contributions.
