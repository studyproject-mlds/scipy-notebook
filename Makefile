usage:
	echo "USAGE: build, commit"

build:
	docker build -t "studyproject/scipy-notebook" .

commit:
	docker push studyproject/scipy-notebook