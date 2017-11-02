#!/usr/bin/env coffee

pdfmake = require('pdfmake')
fs = require 'fs'

fonts =
  Roboto:
    normal: './Roboto-Regular.ttf'
    bold: './Roboto-Regular.ttf'

printer = new pdfmake(fonts)

doc =
  header: 'Onfleet Invoice for period A to B'
  content: [
    'this is the first line'
    ''
    ''
    { text: 'second line here', alignment: 'right' }
    ''
    ''
    table:
        headerRows: 1,
        widths: [ '*', 'auto', 100, '*' ],

        body: [
          [ 'First', 'Second', 'Third', 'The last one' ],
          [ 'Value 1', 'Value 2', 'Value 3', 'Value 4' ],
          [ { text: 'Bold value', bold: true }, 'Val 2', 'Val 3', 'Val 4' ]
        ]
    'and more text'
  ]

myDoc = printer.createPdfKitDocument doc
myDoc.pipe(fs.createWriteStream('test.pdf'));
myDoc.end()