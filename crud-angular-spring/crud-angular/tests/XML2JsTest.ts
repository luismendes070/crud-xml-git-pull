const xml2js = require('xml2js');

// parse the XML response
xml2js.parseString(res.text, (err, result) => {
  expect(err).to.be.null;
  expect(result).to.have.property('rootElement');
  // additional assertions for response data
});
