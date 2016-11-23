import ceylon.io { SocketAddress }
import ceylon.http.common { ... }
import ceylon.http.server { ... }

shared void run() {
    value server = newServer {
        Endpoint {
            startsWith("/");
            (request, response) 
                    => response.writeString("Hello World");
        }
	};
	server.start(SocketAddress("0.0.0.0",8080));
}

