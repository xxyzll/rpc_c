#include <iostream>
#include "rpc_server/rpc_server.h"

int main(int, char**) {
    RPC_SERVER rpc_server(2);
    rpc_server.run();
}
