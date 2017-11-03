#!/usr/bin/env coffee

pdfmake = require('pdfmake')
fs = require 'fs'

fonts =
  Roboto:
    normal: './Roboto-Regular.ttf'
    bold: './Roboto-Medium.ttf'

printer = new pdfmake(fonts)

doc =
  content: [
    {
      text: '$378.87',
      fontSize: 36,
      bold: true,
      margin: [0,20,0,13],
      color: '#7ED321',
    },
    {
      text: 'Imperfect Produce',
      fontSize: 14,
      bold: true,
      color: '#96A1B3',
      margin: [0,0,0,10],
    },
    {
      text: '1234 Market St',
      fontSize: 10,
      color: '#96A1B3',

      margin: [0,0,0,4]
    },
    {
      text: 'Oakland, CA 93039',
      fontSize: 10,
      color: '#96A1B3',

      margin: [0,0,0,20]
    },
    {
      text: 'Tax ID #1234567',
      fontSize: 10,
      color: '#96A1B3',
      bold: true,
      margin: [0,0,0,-134]
    },
    {
      image: 'logo.png',
      width: 185,
      margin: [0,0,0,21],
      alignment: 'right' 
    },
    {
      text:'Invoice #2768-5975',
      fontSize: 14,
      bold: true,
      color: '#96A1B3',
      margin: [0,0,0,10],
      alignment: 'right',
    },
    {
      text:'929 Market St, Suite 500',
      fontSize: 10,
      color: '#96A1B3',

      margin: [0,0,0,3],
      alignment: 'right',
    },
    {
      text:'San Francisco, CA 94109',
      fontSize: 10,
      color: '#96A1B3',

      margin: [0,0,0,20],
      alignment: 'right',
    },
    {
      text: 'May 10, 2017',
      fontSize: 10,
      color: '#96A1B3',
      bold: true,
      margin: [0,0,0,40],
      alignment: 'right'
    },
    {
      table: {
        headerRows: 1,
        widths: [ '*', 'auto' ],

        body: [
          [ { text: 'Description', fontSize: 9, bold: true, color: '#96A1B3' }, { text: 'Amount', bold: true, fontSize: 9, color: '#96A1B3', alignment: 'right', margin: [0,0,0,3] } ],
          [ { text: 'Bud Runner Delivery : 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'SFFOGG Telephony: 2 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'SFFOGG: 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'A+ Collective, Inc.: 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Bento Delivery Telephony: 3 voice calls', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Bento Delivery Telephony: 1,253 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Mountain High... Telephony: 378 voice calls', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Mountain High... Telephony: 2,013 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Mountain High Recreation: 725 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'GreenBook... Telephony: 173 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'GreenBook Remedies : 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'OB Club Telephony: 1 voice calls', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'OB Club Telephony: 99 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'OB Club: 4 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Bud Runner Delivery : 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'SFFOGG Telephony: 2 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'SFFOGG: 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'A+ Collective, Inc.: 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Bento Delivery Telephony: 3 voice calls', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Bento Delivery Telephony: 1,253 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Mountain High... Telephony: 378 voice calls', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Mountain High... Telephony: 2,013 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Mountain High Recreation: 725 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'GreenBook... Telephony: 173 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'GreenBook Remedies : 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'OB Club Telephony: 1 voice calls', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'OB Club Telephony: 99 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'OB Club: 4 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],          [ { text: 'Bud Runner Delivery : 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'SFFOGG Telephony: 2 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'SFFOGG: 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'A+ Collective, Inc.: 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Bento Delivery Telephony: 3 voice calls', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Bento Delivery Telephony: 1,253 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Mountain High... Telephony: 378 voice calls', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Mountain High... Telephony: 2,013 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'Mountain High Recreation: 725 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'GreenBook... Telephony: 173 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'GreenBook Remedies : 0 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'OB Club Telephony: 1 voice calls', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'OB Club Telephony: 99 text messages', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ],
          [ { text: 'OB Club: 4 tasks', style: 'itemDescription' }, { text: '$9.99', style: 'price' } ]
        ]
      },
      layout: 'noBorders',
      margin: [0,0,0,10]
    },
    
    {
      text: [
        { text: 'Total due: ', fontSize: 10, margin: [0,0,0,20], color: '#96A1B3', alignment: 'right' },
        { text: '$378.87', fontSize: 10, margin: [0,0,0,20], alignment: 'right', color: '#7ED321', bold: true }
      ],
      margin: [0,0,0,10]
    },
    {
      text: [
        { text: 'Paid: ', fontSize: 14, bold: true, margin: [0,0,0,3], color: '#96A1B3', alignment: 'right' },
        { text: '$378.87', fontSize: 14, bold: true, margin: [0,0,0,3], color: '#96A1B3', alignment: 'right', color: '#7ED321' }
      ],
      margin: [0,0,0,10]
    }

    {
      text: 'Ben Chesler – Mastercard 5978',
      fontSize: 10,
      color: '#96A1B3',
      margin: [0,0,0,3],
      alignment: 'right'
    },
    {
      text: 'Transaction ID #1234567',
      fontSize: 10,
      color: '#96A1B3',
      alignment: 'right',
      margin: [0,0,0,0]
    }
]


  styles: {
    small: {
      fontSize: 9
    }
    itemDescription : {
      fontSize: 9,
      color: 'black'
    }
    price: {
      fontSize: 9,
      bold: false,
      alignment: 'right',
      margin: [0,0,0,7]
    }
  }

myDoc = printer.createPdfKitDocument doc
myDoc.pipe(fs.createWriteStream('test.pdf'));
myDoc.end()