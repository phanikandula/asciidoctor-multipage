container-image:
	docker image build -t phanikandula/ruby:dev .

container-run:
	docker container run --rm -it --volume $$PWD:/home/devuser/app phanikandula/ruby:dev

install:
	bundle update --bundler
	bundler install

tests:
	bundler exec rake
