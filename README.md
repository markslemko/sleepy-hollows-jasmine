sleepy-hollows-jasmine
======================

A simple headless runner for Jasmine using ruby wrappers to launch and capture the content. 
This is useful in CI environments, like Jenkins. 

This has been tested with Jasmine 1.3.1

Setup
=====

Required Gems:
<pre>
gem install selenium-webdriver
gem install headless
</pre>

Required Jasmine:
https://github.com/pivotal/jasmine/downloads

download and unzip into the sleepy-hollows-jasmine folder

The end result tree should look like this:
<pre>
├── lib
│   └── jasmine-1.3.1
│       ├── jasmine.css
│       ├── jasmine-html.js
│       ├── jasmine.js
│       └── MIT.LICENSE
├── spec
│   ├── PlayerSpec.js
│   └── SpecHelper.js
├── SpecRunner.html
└── spec_runner.rb
</pre>

Execution
=========

<pre>
ruby spec_runner.rb
</pre>

Disclaimer
==========

I've put this together in hopes that it may be of some use to others. Oddly, I haven't found much out there that is both thin and headless.

This is something that is useful to me. Your mileage may vary.


