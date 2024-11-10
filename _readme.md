

## CV formats

My CV is available in the following formats, or layouts:

- [orbit](http://cv.lpenz.org/orbit/cv.html) (HTML)
- [ceevee](http://cv.lpenz.org/ceevee/cv.html) (HTML)
- [modern cv classic](http://cv.lpenz.org/moderncvclassic/cv.pdf) (PDF)
- [resume.cls](http://cv.lpenz.org/resumecls/cv.pdf) (PDF)
- [beamer](http://cv.lpenz.org/beamer/cv.pdf) (PDF)
- [markdown](http://cv.lpenz.org/markdown/cv.md) (markdown) and two rendered versions:
    - [plain text](http://cv.lpenz.org/markdown/cv.txt)
    - [html](http://cv.lpenz.org/markdown/cv.html)


## Behind the scenes

I keep my *Curriculum Vitae* using software development techniques,
namely:

- Keeping the source code in [github](https://github.com/lpenz/cv).
- Using automated [tests](https://github.com/lpenz/cv/actions)
  and static analysis.
- Continuous deployment to <http://cv.lpenz.org>.


The structure of the data is as follows:

- lpenz.yml: single data source in [YAML](http://yaml.org/).
- build.ninja: [ninja](https://ninja-build.org/) build system.
- ...that are used to render my CV in the several different "views."


