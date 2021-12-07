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

std::vector<char> vBuffer(20*1024);

void grabSomeData(asio::ip::tcp::socket& socket){
    socket.async_read_some(asio::buffer(vBuffer.data(), vBuffer.size()), [&](std::error_code ec, std::size_t length){
         if(!ec){
             std::cout << "\n\nRead " << length << " bytes\n\n";
             for (int i = 0; i < length; ++i) {
                 std::cout << vBuffer[i];
             }
             grabSomeData(socket);
         }
    });
}

int main() {

    asio::error_code ec;

    // Create a "context" - essentially the platform specific interface
    asio::io_context context;

    // Give some fake tasks to asio so the context doesnt finish
    asio::io_context::work idleWork(context);

    // Start the context
    std::thread thrContext = std::thread([&](){ context.run(); });

    // Get the address of somewhere we wish to connect to
    asio::ip::tcp::endpoint endpoint(asio::ip::make_address("172.217.16.3",ec),80);

    // Create a socket, the context will deliver the implementation
    asio::ip::tcp::socket socket(context);

    // Yell socket to try and connect
    socket.connect(endpoint,ec);

    if(!ec){
        std::cout << "Connected!" << std::endl;
    }else{
        std::cout << "Failed to connect to address:\n" << ec.message() << std::endl;
        return -1;
    }

    if(socket.is_open()){

        grabSomeData(socket);

        std::string sRequest = "GET /index.html HTTP/1.1\r\n"
                               "Host: www.google.pl\r\n"
                               "Connection close\r\n\r\n";

        socket.write_some(asio::buffer(sRequest.data(),sRequest.size()), ec);

        using namespace std::chrono_literals;
        std::this_thread::sleep_for(200ms);

    }

    return 0;
}
