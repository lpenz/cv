<!-- [![Run Status](https://api.shippable.com/projects/577f06e63be4f4faa56c2d2e/badge?branch=master)](https://app.shippable.com/projects/577f06e63be4f4faa56c2d2e) -->

# Fernando Luz's CV

## CV formats

My CV is available in the following formats, or layouts:

### Current views

- [DevResume](https://fluz.github.io/) (HTML)

### To be created

- [ceevee](https://fluz.github.io/ceevee/cv.html) (HTML)
- [modern cv classic](https://fluz.github.io/moderncvclassic/cv.pdf) (PDF)
- [resume.cls](https://fluz.github.io/resumecls/cv.pdf) (PDF)
- [beamer](https://fluz.github.io/beamer/cv.pdf) (PDF)
- [markdown](https://fluz.github.io/markdown/cv.md) (markdown) and two rendered versions:
  - [plain text](https://fluz.github.io/markdown/cv.txt)
  - [html](https://fluz.github.io/markdown/cv.html)

## Behind the scenes

I keep my *Curriculum Vitae* using software development techniques,
namely:

- Maintain the source code in [github](https://github.com/fluz/cv).
- Create different views for the same base [fluz.yml](https://github.com/fluz/cv/fluz.yml)
  
## To do:
- Use automated deploy with shipplable. 
<!-- - [tests](https://app.shippable.com/projects/577f06e63be4f4faa56c2d2e/status/) and static analysis. -->

The structure of the data is as follows:

- fluz.yml: single data source in [YAML](http://yaml.org/).
- build.ninja: [ninja](https://ninja-build.org/) build system.
- ...that are used to render my CV in the several different "views".
