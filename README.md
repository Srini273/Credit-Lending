
👉 <img width="1800" height="540" alt="01-banner" src="https://github.com/user-attachments/assets/3727f7c8-fa4d-4a7b-a1e4-ac430816a549" />
👈


<h3 align="center">Stop re-keying numbers. Start making credit decisions.</h3>

<p align="center">
  An <b>AI-assisted document intelligence and credit underwriting platform</b> for commercial vehicle (CV) loans.<br/>
  Upload financial statements, review the extracted numbers, and get 14 benchmarked ratios,<br/>
  a transparent 100-point score and an analyst-ready recommendation.
</p>

<p align="center">
  <img alt="Status" src="https://img.shields.io/badge/status-prototype-F59E0B?style=for-the-badge"/>
  <img alt="Python" src="https://img.shields.io/badge/python-3.9%2B-3776AB?style=for-the-badge&logo=python&logoColor=white"/>
  <img alt="FastAPI" src="https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white"/>
  <img alt="Gemini" src="https://img.shields.io/badge/Gemini%20Vision-8B5CF6?style=for-the-badge&logo=googlegemini&logoColor=white"/>
  <img alt="JavaScript" src="https://img.shields.io/badge/Vanilla%20JS-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"/>
</p>

<p align="center">
  <a href="#-features"><b>Features</b></a> &nbsp;|&nbsp;
  <a href="#-how-it-works"><b>How it works</b></a> &nbsp;|&nbsp;
  <a href="#-dashboard-preview"><b>Preview</b></a> &nbsp;|&nbsp;
  <a href="#-scoring-engine"><b>Scoring</b></a> &nbsp;|&nbsp;
  <a href="#-quick-start"><b>Quick start</b></a> &nbsp;|&nbsp;
  <a href="#-roadmap"><b>Roadmap</b></a>
</p>

---


👉 <img width="1800" height="300" alt="02-stats" src="https://github.com/user-attachments/assets/6aa5634e-f037-41f4-9f68-40a33e62c29b" />
👈


---

## 🎯 The Problem

In NBFC and bank credit workflows, the **credit-processing stage** (reading statements, spreading numbers, computing ratios, writing the note) is where turnaround time quietly disappears. It is repetitive, error-prone and hard to keep consistent from one analyst to the next.


👉 <img width="1800" height="780" alt="03-before-after" src="https://github.com/user-attachments/assets/d23a0ad0-95f7-493b-a3bf-2a9798e2b102" />
 👈


## ✨ Features


👉<img width="1800" height="840" alt="04-features" src="https://github.com/user-attachments/assets/dcb63e18-e549-42e5-8d0b-4b92a2a05040" />
 👈


## 🎬 How It Works


👉 <img width="1800" height="390" alt="05-workflow" src="https://github.com/user-attachments/assets/3d9d904f-d824-409d-a467-1e344ffaf313" />
 👈


> [!NOTE]
> This is **decision support, not decision replacement**. There is no auto-approve and no auto-reject. A credit analyst reviews the extracted values and makes the final call.

---

## 🖥️ Dashboard Preview


👉 <img width="1800" height="1050" alt="06-dashboard-preview" src="https://github.com/user-attachments/assets/fdf5c060-6744-461a-90ac-bcc5affcc699" />
 👈

<p align="center"><sub>Illustrative preview of the dashboard layout. Figures shown are sample values.</sub></p>

## 🏗️ Architecture


👉 <img width="1800" height="840" alt="07-architecture" src="https://github.com/user-attachments/assets/e90f5d51-2f25-4d6c-8bff-ca92ef44bd12" />
👈


---

## 🧮 Scoring Engine

### 14 ratios, benchmarked


👉 <img width="1800" height="960" alt="08-ratios" src="https://github.com/user-attachments/assets/3489579e-35dd-4d0b-ba28-fc5360e7f18a" />
👈


### 100-point scorecard


👉<img width="1800" height="780" alt="09-scorecard" src="https://github.com/user-attachments/assets/04e9122b-056c-4628-9705-f354494def6d" />
👈


<details>
<summary><b>📐 Exact scoring thresholds</b> (click to expand)</summary>

<br/>

| Parameter | Full points | Partial points | Zero |
|---|---|---|---|
| DSCR (max 15) | > 1.35x = **15** | ≥ 1.15x = **8** | below 1.15x |
| Net margin (max 15) | > 5% = **15** | ≥ 2% = **8** | below 2% |
| EBITDA margin (max 10) | > 15% = **10** | ≥ 10% = **5** | below 10% |
| Debt / Equity (max 10) | < 2.0x = **10** | ≤ 3.0x = **5** | above 3.0x |
| Current ratio (max 10) | > 1.25x = **10** | ≥ 1.05x = **5** | below 1.05x |
| OCF margin (max 10) | > 12% = **10** | ≥ 8% = **5** | below 8% |
| Revenue growth, latest YoY (max 10) | > 10% = **10** | ≥ 3% = **5** | below 3% |
| Asset turnover (max 10) | > 1.5x = **10** | ≥ 1.1x = **5** | below 1.1x |
| Total assets, in Cr (max 10) | > 10 = **10** | ≥ 2 = **5** | below 2 |

**Decision tiers:** 70 and above = Proposal Recommended | 50 to 69 = Detailed Analysis Needed | below 50 = Proposal Not Recommended.

**CIBIL bands:** 750 to 900 = Low risk | 650 to 749 = Moderate risk (co-applicant or collateral) | below 650 = High risk.

</details>

<details>
<summary><b>🧾 How the numbers are extracted and computed</b> (click to expand)</summary>

<br/>

| Field | Source line |
|---|---|
| Revenue | *Total revenue from operations* (never Total Income) |
| Net profit | *Profit after tax* for the year |
| EBITDA | Reported value, else **PAT + Tax + Interest + D&A** (fallbacks: PBT + Finance cost + D&A, or EBIT + D&A) |
| Current assets and liabilities | *Total current assets* and *Total current liabilities* |
| Fixed assets | *Total non-current assets* |
| Long-term debt | *Total non-current liabilities* |
| Column rule | Always the full-year (year-ended) columns, never quarterly ones |

Definitions used by the current engine:

- **DSCR** = monthly income / (existing EMI + proposed EMI)
- **FOIR** = total EMI / monthly income
- **PTI** = proposed EMI / monthly income
- **Debt / Equity** = (current liabilities + non-current liabilities) / equity
- **Interest coverage** = EBITDA / estimated interest (interest is currently approximated as 2% of revenue)

</details>

---

## 🧰 Tech Stack


👉<img width="1800" height="495" alt="10-tech-stack" src="https://github.com/user-attachments/assets/e585e441-ce89-477c-8a2c-6dd51cd5cf1c" />
👈


## 📁 Repository Structure

```
Credit-Lending/
├── index.html                              # Entry point
├── credit_Platform_v5.html                 # Platform v5
├── AI_CREDIT_PLATFORM_V4.html              # Platform v4
├── credit_platform_v4.html
├── ENHANCED_AI_CREDIT_PLATFORM.html        # Enhanced build
├── ai_credit_engine 19.5.html              # Credit engine build
├── backend_fastapi_server.py               # Extraction + ratios + scorecard (FastAPI)
├── backend_flask_server.py                 # Flask variant of the backend
├── start_server.bat                        # One-click backend launcher (Windows)
├── AI_Platform_Technical_Documentation.md  # Full technical documentation
├── QUICK_REFERENCE_GUIDE.txt               # Quick reference
└── assets/                                 # README images
```

## 🚀 Quick Start

**Prerequisites:** Python 3.9+ (or [`uv`](https://github.com/astral-sh/uv)), a Google Gemini API key, and optionally [Tesseract OCR](https://github.com/tesseract-ocr/tesseract) for the offline OCR fallback.

**1. Clone**
```bash
git clone https://github.com/Srini273/Credit-Lending.git
cd Credit-Lending
```

**2. Start the backend**

<details open>
<summary><b>Option A: uv (one command)</b></summary>

```bash
uv run --with fastapi --with uvicorn --with python-multipart --with pandas \
       --with openpyxl --with pdfplumber --with Pillow --with requests \
       backend_fastapi_server.py
```
</details>

<details>
<summary><b>Option B: pip</b></summary>

```bash
pip install fastapi uvicorn python-multipart pandas openpyxl pdfplumber Pillow requests pytesseract
python backend_fastapi_server.py
```
</details>

<details>
<summary><b>Option C: Windows</b></summary>

Double-click `start_server.bat`.
</details>

Check it is alive: `GET /api/ping` returns a healthy status.

**3. Open the platform**

Open `index.html` (or `credit_Platform_v5.html`) in your browser, upload a statement, review the extracted fields, then run the analysis.

> [!TIP]
> The frontend also works on its own for manual entry and demo analysis. The backend is only needed for real document extraction.

### Typical workflow

1. **Upload** the annual report or financial statements (PDF, Excel or image)
2. **Extract** three years of financials with OCR and AI
3. **Review** the auto-filled fields and correct anything that looks off
4. **Add loan inputs:** CIBIL score, proposed loan, EMI, monthly income, existing EMI
5. **Analyse** ratios, benchmarks, score and decision tier
6. **Export** the Excel report for the credit note

## 🔍 Transparency and Known Limits

> [!WARNING]
> This is a prototype for learning and demonstration. It is not a production credit system, and its output should never be the sole basis for a lending decision.

- **Estimated values.** When the rule-based parser cannot find a field, it currently fills a placeholder estimate so the screens keep working. Always verify every extracted number before relying on the score.
- **Scope of "AI".** Document reading uses Gemini Vision OCR and LLM-based extraction. Ratios, the scorecard and the decision tiers are **rule-based**, not a trained credit-scoring model.
- **Defaults.** Loan inputs (CIBIL, EMI, income) start with placeholder defaults. Set them per borrower.
- **Benchmarks.** Ranges and thresholds are fixed, general-purpose values and are not calibrated to a specific portfolio.
- **Interest coverage** uses an approximation (2% of revenue) rather than the reported interest expense.
- **Security.** CORS is open for local development. Restrict origins and keep API keys out of the repo before any shared deployment.
- **Missing pieces.** No authentication, database or audit logging yet.

## 🧭 Roadmap


👉 <img width="1800" height="645" alt="11-roadmap" src="https://github.com/user-attachments/assets/f2d9238e-6ac1-429b-bb74-55b0d06e6e65" />
👈


## 🔐 Security and Compliance Notes

- Never commit API keys. Load them from environment variables or user input.
- Production use would need encryption in transit and at rest, role-based access and audit logging, aligned with RBI fair-practice and algorithmic-lending guidance and India's DPDP Act.

## 📚 Documentation

- [`AI_Platform_Technical_Documentation.md`](./AI_Platform_Technical_Documentation.md) covers components, data model and API design.
- [`QUICK_REFERENCE_GUIDE.txt`](./QUICK_REFERENCE_GUIDE.txt) is the short usage guide.

## 🙋 FAQ

<details>
<summary><b>Does it approve or reject loans automatically?</b></summary>
<br/>
No. It gives a score and a recommendation tier, and the analyst makes the decision.
</details>

<details>
<summary><b>Which documents work best?</b></summary>
<br/>
Annual financial statements with clearly labelled lines such as "Total revenue from operations" and "Profit after tax". Clean, text-based PDFs extract best. Scans work but need a closer review.
</details>

<details>
<summary><b>Do I need an API key?</b></summary>
<br/>
A Gemini API key enables Gemini Vision OCR and LLM extraction. Without it, the platform falls back to Tesseract OCR and rule-based parsing.
</details>

## 👤 Author

**Srinivasan D** | [@Srini273](https://github.com/Srini273)

## 📄 License

No license has been specified yet. Add one (for example MIT) before sharing the project or accepting contributions.

<br/>


👉 <img width="1800" height="330" alt="12-footer" src="https://github.com/user-attachments/assets/eebdd81c-b532-498c-8fcc-ece787bb37e1" />
👈

<img width="1800" height="540" alt="01-banner" src="https://github.com/user-attachments/assets/5113d9a3-615d-47a6-b1ca-05de4e07a791" />
