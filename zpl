# GitHub Copilot Prompt:
# Build a Python microservice to convert Base64-encoded ZPL to Base64-encoded PDF.
#
# Requirements:
# 1. Use Flask to expose a REST endpoint POST /convert.
# 2. Input JSON format: { "base64Zpl": "<...>" }
# 3. Decode the input Base64 string into raw ZPL text.
# 4. Use the "zebrafy" library to render ZPL (with ^GF graphic fields) into a PNG image.
# 5. Embed the PNG into a single-page PDF using the "reportlab" library (use 4x6 inches page size).
# 6. Encode the PDF back into Base64 and return JSON: { "base64Pdf": "<...>" }
# 7. Handle errors gracefully and return JSON { "error": "message" } with HTTP 400/500 when needed.
# 8. Include helper functions:
#    - zpl_to_png(zpl_string: str) -> bytes
#    - png_to_pdf(png_bytes: bytes, width_in=4, height_in=6) -> bytes
# 9. Use Pillow (PIL) for handling PNG images before embedding into PDF.
# 10. Run Flask on host 0.0.0.0 port 5000 in __main__.
#
# Generate production-ready, clean, and well-commented code.
