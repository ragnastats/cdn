var imagemagick = require('imagemagick-native')
,   srcData     = require('fs').readFileSync('test.bmp');

// returns a Buffer instance
var resizedBuffer = imagemagick.convert({
    srcData: srcData, // provide a Buffer instance
    format: 'PNG'
});

require('fs').writeFileSync('test.png', resizedBuffer, 'binary');
