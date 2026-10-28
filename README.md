🏦 AI Credit Intelligence Platform

An AI-based document intelligence and credit underwriting platform for commercial vehicle (CV) loans. 
Upload a borrower's financial statements, and the platform extracts the numbers, computes 14 credit ratios, scores the proposal on a 100-point underwriting scorecard, and gives an analyst-ready recommendation, in seconds instead of days.
📌 Why this exists

In NBFC and bank credit workflows, the credit-processing stage (reading financial statements, spreading numbers, computing ratios, writing the note) is where most of the turnaround time (TAT) is lost. This platform automates that stage:

Manual process	With this platform
Read PDFs / scans and re-key numbers into Excel	Automated extraction via OCR + LLM + rule-based parsing
Compute ratios by hand	14 ratios computed instantly, benchmarked against industry ranges
Subjective first-cut judgement	Transparent, rule-based scorecard with point-by-point breakdown
Credit note written from scratch	Structured recommendation + Excel export
✨ Key Features
📄 Multi-format document intake: PDF, Excel (.xlsx / .xls), and scanned images (.jpg / .png) with drag-and-drop upload
🧠 AI extraction pipeline: Gemini Vision OCR → LLM-based structured JSON extraction → regex/rule-based parsing as fallback
📊 3-year financial spreading: Revenue, EBITDA, PAT, OCF, current assets, fixed assets, current liabilities, long-term debt, equity (Y1, Y2, Y3)
🧮 14 financial ratios with industry benchmarks: Current, Quick, D/E, Interest Coverage, Net Margin, EBITDA Margin, OCF Margin, Asset Turnover, DSCR, Revenue Growth, ROE, ROA, FOIR, PTI
🎯 100-point underwriting scorecard: nine weighted parameters, with tiered recommendations
💳 CIBIL risk banding: Low / Moderate / High risk classification
📈 Interactive dashboards: Chart.js visualisations (trends, risk distribution, portfolio view)
📥 One-click Excel export: Multi-sheet reports via SheetJS
🔁 Resilient OCR: Gemini Vision first, automatic fallback to local Tesseract
