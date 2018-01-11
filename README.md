# XML Parsing

### How to run the app

In order to parse the XML files in this repo the Nokogiri gem is required so run the following command in your terminal (MacOS):
In order to run the tests for what is returned after XML parsing install RSpec:
```
gem install nokogiri
gem install rspec
```

To run the tests use the following command in your terminal after moving into the starter_code_xml_lab directory from the root of the repo:

```
rspec
```

All three tests should pass as they are testing results of the methods in the xml_parsing.rb file which is testing data from the xml file using xpath methods.

The following is a link to the nokogiri ruby docs (can check xpath methods here):
http://www.rubydoc.info/github/sparklemotion/nokogiri/Nokogiri/XML

Nokogiri allows you to parse XML into a format that can be used in ruby.

The programme tests code parsed into ruby from an XML format using nokogiri and xpath.

The xml_parsing directory is just a basic programme to test using nokogiri to parse xml into a ruby file. To run this file run the following command in your terminal from the root directory of this repo.

```
ruby xml_parsing.rb
```
This should print the result of running one of the methods in your terminal.

### Documentation

Nokogiri - http://www.rubydoc.info/github/sparklemotion/nokogiri/Nokogiri/XML

RSpec - http://www.rubydoc.info/gems/rspec-core/frames
