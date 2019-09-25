# iOS Dragons App

Hello! This is steps to run the Dragons App in your Xcode

![Alt Text](https://media.giphy.com/media/jru96HjMroASpfXEz8/giphy.gif)	

## Architecture

This project was building using the MVP and Clean code. I used the MVP with all files in modules that need has all MVP structure, how Dragons List and I used a some files to MVP structure in Dragons Detail screen, because in this screen not need all files to build this screen.

## Unit Tests

This project use the Quick/Nimble to make a tests and the coverage is 60.9%

## Third-party libraries

**Alamofire** - Is a lib to make requests to API. I used this library, because is the a most used library by iOS community, and because this lib receive many updates constantly and you can calls to API easier and have many options ready to used in many situacions.

**Kingfisher** - Is a lib that load images from URL, I used this lib because with she, you get load and maintain images caches easier.

**Quick/Nimble** - Is a lib used to make unit tests, with she, you can write tests that be easier to read and understand what happen in test content.

## Clone repository

If you don't have git installed in your mac, you need install following the [documentation of git].

[documentation of git]:https://git-scm.com/download/mac

The first step, is clone the repository in your mac. To this create a directory in your mac and open that directory in your terminal app.

When you be inside the app directory in terminal, execute the follow commands below:


	git init
	git remote add origin git@gitlab.com:YOUR_USER/dragons.git
	git fetch
	git checkout master

## Setup project

To you to setup the project with all dependencies that is necessary to that the project working correct, just you execute the file setup.sh with command below.

	sh setup.sh

This file contains all commands to install all dependencies that you need install, and he will go to install all dependencies for you.

## Setup certificates

After the seput.sh finished the install all depencies, you can open the projet in Xcode. How this projeto is a challenge, he not have certificates of production.

To that you get run the project , you need open the general tab of project configs, and check "Automatically manage signing" and select one team and change the bundle identifier to your user.

After this, only select one device and click in play button to run app.
