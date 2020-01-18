# latex
Docker image for LaTeX

**USAGE:**

This container can be used to build documents with LaTeX.

<pre>
docker run -d -v source\file\directory:/tmp/latex -w /tmp/latex pcnetzwerke/latex pdflatex source
</pre>

It can as well be used inside as part of a build pileline:

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
