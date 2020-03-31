var http = require("http");

http.createServer(function (request, response) {
   response.writeHead(200, {'Content-Type': 'text/plain'});
   response.end('\nHello World\n');
}).listen(1947);

console.log('Server started @ 127.0.0.1:1947');