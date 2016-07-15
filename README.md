[![Run Status](https://api.shippable.com/projects/577f06e63be4f4faa56c2d2e/badge?branch=master)](https://app.shippable.com/projects/577f06e63be4f4faa56c2d2e)

# Leandro Penz's CV


## CV formats

My CV is available in the following formats, or layouts:

- [resume.cls PDF](http://cv.lpenz.org/resumecls/cv.pdf)


## Behind the scenes

I couldn't resist keeping my *Curriculum Vitae* using the same techniques I use
for development, namely:

- Keeping the source code in [github](https://github.com/lpenz/cv).
- Adding automated [tests](https://app.shippable.com/projects/577f06e63be4f4faa56c2d2e/status/).
- Continous deployment to <http://cv.lpenz.org>.


The structure of the data is as follows:

- lpenz.yml: single data source in [YAML](http://yaml.org/).
- build.nija: [ninja](https://ninja-build.org/) build system.
- ...that are used to render my CV in the several different "views."


