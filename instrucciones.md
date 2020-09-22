# Instrucciones generales libro investigación social abierta


##  Base: bookdown demo

This is a minimal example of a book based on R Markdown and **bookdown** (https://github.com/rstudio/bookdown). Please see the page "[Get Started](https://bookdown.org/yihui/bookdown/get-started.html)" at https://bookdown.org/yihui/bookdown/ for how to compile this example into HTML. You may generate a copy of the book in `bookdown::pdf_book` format by calling `bookdown::render_book('index.Rmd', 'bookdown::pdf_book')`. More detailed instructions are available here https://bookdown.org/yihui/bookdown/build-the-book.html.

You can find the preview of this example at https://bookdown.org/yihui/bookdown-demo/.


## Funcionamiento general:

- index.Rmd define los parámetros centrales del libro en el yaml, además genera la frontpage
- los capítulos se van ordenando según el número con que comienzan los archivos Rmd en el root. Por ejemplo, 01-intro.Rmd sera el primer capítulo
- El, título del capítulo, que aparece también en el índice, queda definido por el primer título (#) del documento Rmd


## Para deploy en github pages
  - crear un archivo vacío en el root "nojekyll"
  - en _bookdown.yml agregar  output_dir: "docs"
  - en github settings ir a github pages y establecer docs folder como directorio


## Desde terminal/ Atom

Hay varios comandos:

- bookdown::serve_book() # se actualiza inmediatamente en browser al hacer cambios; si son cambios mayores de estructura requiere

- rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')

y en _book/index.html se puede visualizar con browser plus el libro completo.

## Otras instrucciones específicas


You can label chapter and section titles using `{#label}` after them, e.g., we can reference Chapter \@ref(intro). If you do not manually label them, there will be automatic labels anyway, e.g., Chapter \@ref(methods).

Figures and tables with captions will be placed in `figure` and `table` environments, respectively.

```{r nice-fig, fig.cap='Here is a nice figure!', out.width='80%', fig.asp=.75, fig.align='center'}
par(mar = c(4, 4, .1, .1))
plot(pressure, type = 'b', pch = 19)
```

Reference a figure by its code chunk label with the `fig:` prefix, e.g., see Figure \@ref(fig:nice-fig). Similarly, you can reference tables generated from `knitr::kable()`, e.g., see Table \@ref(tab:nice-tab).

```{r nice-tab, tidy=FALSE}
knitr::kable(
  head(iris, 20), caption = 'Here is a nice table!',
  booktabs = TRUE
)
```

You can write citations, too. For example, we are using the **bookdown** package [@R-bookdown] in this sample book, which was built on top of R Markdown and **knitr** [@xie2015].
