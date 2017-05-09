package com.yuxin.tcp;

import java.io.*;
import java.net.Socket;

/**
 * Created by lyx on 2016/12/21.
 */
public class Consumer {
    public static void main(String[] args) throws IOException {
        Socket socket = new Socket("127.0.0.1",12344);
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("你好啊".getBytes());


    }

}
