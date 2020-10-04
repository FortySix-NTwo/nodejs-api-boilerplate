#######################################################################################################
#                           GNU Makefile for project and Docker automation    	                      #
#                                      Author: Jonathan Farber                	                      #
#                                                 ---                         	                      #
#                           for more information please visit the linke bellow	                      #
#                           https://www.gnu.org/software/make/manual/make.html	                      #
#######################################################################################################
.PHONY: watch development build docker-dev docker-run docker-build

watch:
		tsc -w

development:
		nodemon --trace-warnings .

build:
		rm -rf dist/ && tsc

docker-dev:
		cd docker && docker-compose down && docker-compose -f docker-compose.dev.yml up -d --build --remove-orphans && cd ..

docker-run:
		cd docker && docker-compose down && docker-compose -f docker-compose.yml up -d --build --remove-orphans && cd ..

docker-build:
		cd docker && docker build . && cd ..