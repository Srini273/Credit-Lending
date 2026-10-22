@echo off
title AI Credit Platform - Python OCR Server
echo ========================================================
echo   Starting AI Credit Platform Python OCR Server...
echo   Port: 5000 | http://localhost:5000/api/extract
echo   Engine: RapidOCR + PyMuPDF + pdfplumber (100% Free Local OCR)
echo ========================================================
uv run --python 3.12 --with rapidocr-onnxruntime --with pymupdf --with flask --with flask-cors --with pandas --with openpyxl --with pdfplumber --with Pillow --with requests python backend_flask_server.py
pause
