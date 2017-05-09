package com.yuxin.tcp;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * Created by lyx on 2016/12/21.
 */
public class Server {
    public static void main(String[] args) throws IOException {
        ServerSocket server = new ServerSocket(12344);
        while (true) {
            Socket socket = server.accept();
            InputStream inputStream = socket.getInputStream();
            int len = inputStream.read();
            String text =new String(new byte[1024],0,len);
            System.out.println(text);
        }
    }
}
