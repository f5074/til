## activemq socketexception connection reset

Good day. I have several types of clients that connect to a topic using stomp. Sometimes after some use ( just some 7/8 messages) the users get disconnected and this error appears in the activemq log file after i try to send a message from the producer to the clients..
its quite strange because the clients do not detect the connection failure...

2012-12-18 11:27:21,401 | DEBUG | Transport Connection to: tcp://127.0.0.1:1031 failed: java.net.SocketException: Connection reset | org.apache.activemq.broker.TransportConnection.Transport | ActiveMQ Transport: tcp:///127.0.0.1:1031@61613
java.net.SocketException: Connection reset
        at java.net.SocketInputStream.read(SocketInputStream.java:189)
        at java.net.SocketInputStream.read(SocketInputStream.java:121)
        at org.apache.activemq.transport.tcp.TcpBufferedInputStream.fill(TcpBufferedInputStream.java:50)
        at org.apache.activemq.transport.tcp.TcpTransport$2.fill(TcpTransport.java:612)
        at org.apache.activemq.transport.tcp.TcpBufferedInputStream.read(TcpBufferedInputStream.java:58)
        at org.apache.activemq.transport.tcp.TcpTransport$2.read(TcpTransport.java:597)
        at java.io.DataInputStream.readByte(DataInputStream.java:265)
        at org.apache.activemq.transport.stomp.StompWireFormat.readHeaderLine(StompWireFormat.java:155)
        at org.apache.activemq.transport.stomp.StompWireFormat.readLine(StompWireFormat.java:148)
        at org.apache.activemq.transport.stomp.StompWireFormat.parseAction(StompWireFormat.java:170)
        at org.apache.activemq.transport.stomp.StompWireFormat.unmarshal(StompWireFormat.java:98)
        at org.apache.activemq.transport.tcp.TcpTransport.readCommand(TcpTransport.java:229)
        at org.apache.activemq.transport.tcp.TcpTransport.doRun(TcpTransport.java:221)
        at org.apache.activemq.transport.tcp.TcpTransport.run(TcpTransport.java:204)
        at java.lang.Thread.run(Thread.java:722)
2012-12-18 11:27:21,405 | DEBUG | Unregistering MBean org.apache.activemq:BrokerName=localhost,Type=Connection,ConnectorName=stomp,Connection=ID_demoserver-50466-1355829271859-2_1 | org.apache.activemq.broker.jmx.ManagementContext | ActiveMQ Transport: tcp:///127.0.0.1:1031@61613

## Reference
https://stackoverflow.com/questions/16940763/reconnect-to-activemq-server-after-network-failure