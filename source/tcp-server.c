#include "board.h"
#include "pin_mux.h"

#include "lwip/netifapi.h"

#include "stdlib.h"
#include "time.h"

#include "dnet.h"


static err_t receive(struct netconn* conn, char* data) {
	if(!data) return ERR_BUF;

	struct netbuf* buf;
	char* rq;
	uint16_t len;

	err_t err = netconn_recv(conn, &buf);
	if(err != ERR_OK ) return err;

//	err = netbuf_data(buf, (void**)rq, &len);
	rq = buf->ptr->payload;
	len = buf->ptr->len;
//	if(err != ERR_OK) return err;

	memcpy(data, rq, len);
	data[len] = 0;

	netbuf_delete(buf);

	return err;
}


void server(void* arg) {
	(void)arg;

	err_t err;

	struct netconn* conn = netconn_new(NETCONN_TCP);

	err = netconn_bind(conn, IP_ADDR_ANY, 8080);
	assert(err == ERR_OK);

	err = netconn_listen(conn);
	assert(err == ERR_OK);

	while (1)
	{
		PRINTF("Server - Listening for connection\n\r");
		struct netconn* newconn;

		err = netconn_accept(conn, &newconn);
//		assert(newconn != NULL);
		assert(err == ERR_OK);

		PRINTF("Server - Connection established\n\r");

		char buf[128];

		while (!err) {
			err = receive(newconn, buf);
			if (err) {
				break;
			}

			PRINTF("Server - Received: %s\r\n", buf);

			if (!memcmp(buf, "LED ON", strlen(buf))) {
				LED_BLUE_ON();
			} else {
				LED_BLUE_OFF();
			}

			err = netconn_write(newconn, buf, strlen(buf), NETCONN_NOCOPY);
			if (err) {
				break;
			}
		}
		PRINTF("Server - closing connection\r\n");
		netconn_close(newconn);
		netconn_delete(newconn);
	}
	netconn_close(conn);
}

int main(void) {
	BOARD_InitBootClocks();
	BOARD_InitBootPins();
	BOARD_InitPins();
	BOARD_InitDebugConsole();

	srand(time(NULL));

	DnetConfig config = dnet_init("192.168.0.103", NULL, NULL, dnet_get_uid_location());

	dnet_start_new_thread("tcp", server, NULL);

	vTaskStartScheduler();

	return 0;
}
