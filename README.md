# latex
Docker image for LaTeX

**USAGE:**

This container can be used to build documents with LaTeX.

<pre>
docker run -d -v source\file\directory:/tmp/latex -w /tmp/latex pcnetzwerke/latex pdflatex source
</pre>

It can as well be used as part of a [build pileline](https://bitbucket.org/pcnetzwerke/pdflatex), i. e. to compile a file named [source.tex](https://github.com/pcnetzwerke/latex/blob/master/source.tex):

<pre>
image: pcnetzwerke/latex

[...]

        - step:
            name: build
            script:
                - pdflatex source
            artifacts:
                - source.pdf
</pre>
