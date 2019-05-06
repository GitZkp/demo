/**package com.suke.czx.modules.common;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FSDataInputStream;
import org.apache.hadoop.fs.FSDataOutputStream;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;

public class HdfsUtils {

	public static final Configuration CONF = new Configuration();
	public static FileSystem hdfs;
	static {
		try {
			hdfs = FileSystem.get(CONF);
		} catch (Exception e) {
			System.out.println("无法连接hdfs，请检查配置。");
			e.printStackTrace();
		}
	}

// 在hdfs 上创建一个新的文件，将某些数据写入到hdfs中
	public static void createFile(String fileName, String content) throws IOException {
		Path path = new Path(fileName);
		if (hdfs.exists(path)) {
			System.out.println("文件：" + fileName + "在hdfs上已存在");
		} else {
			FSDataOutputStream outputStream = hdfs.create(path);
			outputStream.writeUTF(content);
			outputStream.flush();
			outputStream.close();
		}
	}

// 读取hdfs 上的文件
	public static void readFile(String fileName) throws IOException {
		Path path = new Path(fileName);
		if (!hdfs.exists(path) | hdfs.isDirectory(path)) {
			System.out.println("给定路径：" + fileName + "不存在，或者不是一个文件");
		} else {
			FSDataInputStream inputStream = hdfs.open(path);
			String content = inputStream.readUTF();
			System.out.println(content);
		}
	}

// 删除hdfs 上已有的文件
	public static void deleteFile(String fileName) throws IOException {
		Path path = new Path(fileName);
		if (!hdfs.exists(path)) {
			System.out.println("给定路径：" + fileName + "不存在");
		} else {
			hdfs.delete(path, true);
		}
	}

//把windows本地的文件上传到hdfs上
	public static void uploadFile(String fileName, String hdfsPath) throws IOException {
		Path src = new Path(fileName);
		Path dst = new Path(hdfsPath);
		hdfs.copyFromLocalFile(src, dst);
	}

//把hdfs的文件下载到windows上
	public static void downloadFile(String fileName, String localPath) throws Exception {
		Path src = new Path(fileName);
		Path dst = new Path(localPath);

// 这个方法需要配置环境变量
		hdfs.copyToLocalFile(src, dst);
// 这个不需要配置环境变量，false表示src下载后不被删除，true 表示下载到本机路径
		hdfs.copyToLocalFile(false, src, dst, true);
	}

//从本机上传文件到hdfs，采用读写的方式
	public static void uploadFile2(String fileName, String hdfsPath) throws IOException {

		Path path = new Path(hdfsPath);
		if (hdfs.exists(path)) {

			System.out.println("文件在hdfs 上面已经存在，写入会覆盖原来的数据");
		} else {

			FileInputStream inputStream = new FileInputStream(fileName);

			FSDataOutputStream dataOutputStream = hdfs.create(path);

			byte[] bytes = new byte[5];

			int length = 0;

			while ((length = inputStream.read(bytes)) != -1) {

				dataOutputStream.write(bytes, 0, length);

				dataOutputStream.flush();
			}

			dataOutputStream.close();

			inputStream.close();
		}
	}

// 从hdfs下载文件到本机，采用读写的方式
	public static void downloadFile2(String hdfsFile, String localPath) throws IOException {

		Path path = new Path(hdfsFile);

		if (!hdfs.exists(path) | hdfs.isDirectory(path)) {

			System.out.println("给定路径：" + hdfsFile + "不存在，或者不是一个文件");
		} else {

			FSDataInputStream dataInputStream = hdfs.open(path);

			FileOutputStream outputStream = new FileOutputStream(localPath);

			int length = 5;

			byte[] bytes = new byte[length];

			while (dataInputStream.read(bytes, 0, length) != -1) {

				outputStream.write(bytes, 0, bytes.length);
				outputStream.flush();
			}

			outputStream.close();
			dataInputStream.close();

		}
	}

//查看hdfs某个文件的状态
	public static void getFileStatus(String fileName) throws Exception {
		Path path = new Path(fileName);
		FileStatus[] status = hdfs.listStatus(path);
		for (FileStatus fileStatus : status) {
			System.out.println(fileStatus);
		}

	}

//给一个目录的路径，递归的列出该目录下面所有的文件的状态信息(不包括文件夹信息)方式1
	public static void getALLFileStatus(String fileName) throws Exception {
		Path path = new Path(fileName);
		FileStatus[] status = hdfs.listStatus(path);
		for (FileStatus fileStatus : status) {
			if (fileStatus.isDirectory()) {
				getALLFileStatus(fileStatus.getPath().toString());
			} else {
				System.out.println(fileStatus);
			}
		}
	}

//给一个目录的路径，递归的列出该目录下面所有的文件的状态信息(不包括文件夹信息)方式2
	public static void getALLFileStatus2(String fileName) throws Exception {

		Path path = new Path(fileName);
		if (hdfs.isDirectory(path)) {
			FileStatus[] status = hdfs.listStatus(path);
			for (FileStatus fileStatus : status) {
				getALLFileStatus2(fileStatus.getPath().toString());
			}
		} else {
			FileStatus s1 = hdfs.getFileLinkStatus(path);
			System.out.println(s1);
		}
	}

// 上传到文件hdfs
	public static void uploadToHdfs(String localPath, String hdfsPath) throws IOException {

		Path path = new Path(hdfsPath);
		if (!hdfs.exists(path)) {
			FSDataOutputStream outputStream = hdfs.create(path);
			outputStream.close();
		}

		FileReader fr = new FileReader(localPath);

		FSDataOutputStream fsout = hdfs.append(path);

		char[] chars = new char[5];
		while (fr.read(chars) != -1) {

			fsout.writeUTF(String.valueOf(chars));
		}

		fr.close();
		fsout.close();
	}

// 下载文件到local
	public static void downToLocal(String hdfsPath, String localPath) throws IOException {
		Path path = new Path(hdfsPath);
		FSDataInputStream fsinput = hdfs.open(path);
		String content = fsinput.readUTF();

		FileWriter fw = new FileWriter(localPath);
		fw.write(content);

		fw.close();
		fsinput.close();
	}

	public static void main(String[] args) throws Exception {
		String content = "hello hdfs";
		String fileName = "/bd17/11";
// createFile(fileName, content);
// readFile(fileName);
// deleteFile("/bd17");
// uploadFile("C:\\Users\\Administrator\\Desktop\\123.txt", "/bd17/66.txt");
// downloadFile(fileName, "C:\\Users\\Administrator\\Desktop\\5.txt");
// getFileStatus("/");
// getALLFileStatus("/");
// getALLFileStatus2("/");
// uploadToHdfs("C:\\Users\\Administrator\\Desktop\\00", fileName);
		downToLocal(fileName, "C:\\Users\\Administrator\\Desktop\\22");
	}

}
**/
