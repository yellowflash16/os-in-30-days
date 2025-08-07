@echo off
copy book\*.md html\book.md

set extensions="-smart+tex_math_dollars+implicit_figures+link_attributes+tex_math_single_backslash+header_attributes"

pandoc html\book.md -fmarkdown%extensions% -o html/book.html --ascii
copy web\template.html web\book.html > web\index.html
del /f /q html\book.html
del /f /q html\book.md


