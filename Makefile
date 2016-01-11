.PHONY: all
all: index.html subpages/announcements.html subpages/people.html \
	subpages/assignments.html subpages/seminars.html \
	subpages/lectures.html subpages/syllabus.html

deps: include/nav.html include/nothing.html

%.html: %.Rmd deps
	R -e "rmarkdown::render('$<')"

%.html: %.md deps
	R -e "rmarkdown::render('$<')"