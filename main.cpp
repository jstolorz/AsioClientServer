#include <iostream>
#include <vector>
#include <thread>

#ifdef _WIN32
#define _WIN32_WINNT 0x0A00
#endif

#define ASIO_STANDALONE
#include <asio.hpp>
#include <asio/ts/buffer.hpp>
#include <asio/ts/internet.hpp>

int main() {

    asio::error_code ec;

    asio::io_context context;

    asio::ip::tcp::endpoint endpoint(asio::ip::make_address("172.217.16.3",ec),80);

    asio::ip::tcp::socket socket(context);

    socket.connect(endpoint,ec);

    if(!ec){
        std::cout << "Connected!" << std::endl;
    }else{
        std::cout << "Failed to connect to address:\n" << ec.message() << std::endl;
        return -1;
    }

    if(socket.is_open()){
        std::string sRequest = "GET /index.html HTTP/1.1\r\n"
                               "Host: www.google.pl\r\n"
                               "Connection close\r\n\r\n";

        socket.write_some(asio::buffer(sRequest.data(),sRequest.size()), ec);

        socket.wait(socket.wait_read);

        size_t bytes = socket.available();
        std::cout << "Bytes Available: " << bytes << std::endl;

        if(bytes > 0){
            std::vector<char> vBuffer(bytes);
            socket.read_some(asio::buffer(vBuffer.data(), vBuffer.size()), ec);

            for(auto c : vBuffer){
               std::cout << c;
            }
        }
    }

    return 0;
}