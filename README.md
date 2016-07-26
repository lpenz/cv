[![Run Status](https://api.shippable.com/projects/577f06e63be4f4faa56c2d2e/badge?branch=master)](https://app.shippable.com/projects/577f06e63be4f4faa56c2d2e)

# Leandro Penz's CV


## CV formats

My CV is available in the following formats, or layouts:

- [orbit](http://cv.lpenz.org/orbit/cv.html) (HTML)
- [modern cv classic](http://cv.lpenz.org/moderncvclassic/cv.pdf) (PDF)
- [resume.cls](http://cv.lpenz.org/resumecls/cv.pdf) (PDF)
- [beamer](http://cv.lpenz.org/beamer/cv.pdf) (PDF)


## Behind the scenes

I keep my *Curriculum Vitae* using software development techniques,
namely:

- Keeping the source code in [github](https://github.com/lpenz/cv).
- Using automated [tests](https://app.shippable.com/projects/577f06e63be4f4faa56c2d2e/status/)
  and static analysis.
- Continuous deployment to <http://cv.lpenz.org>.


The structure of the data is as follows:

- lpenz.yml: single data source in [YAML](http://yaml.org/).
- build.nija: [ninja](https://ninja-build.org/) build system.
- ...that are used to render my CV in the several different "views."


