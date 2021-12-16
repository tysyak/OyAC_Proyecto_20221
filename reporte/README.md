# Generar PDF
Se recomienda usar Miktex (windows) o Texlive (linux) por linea de comando y ejecutar lo siguiente en este mismo directorio

``` shellsession
pdflatex -shell-escape -interaction nonstopmode main && \
biber main ; \
pdflatex -shell-escape -interaction nonstopmode main && \
pdflatex -shell-escape -interaction nonstopmode main 
```
