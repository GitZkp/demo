/*
 * package com.suke.czx.modules.im.mpush;
 * 
 * import java.util.concurrent.Executors; import
 * java.util.concurrent.ScheduledExecutorService; import
 * java.util.concurrent.TimeUnit; import java.util.concurrent.locks.LockSupport;
 * 
 * import com.mpush.api.Client; import com.mpush.api.ClientListener; import
 * com.mpush.client.ClientConfig; import com.mpush.util.DefaultLogger;
 * 
 * public class MPushClientTest { private static final String publicKey =
 * "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCghPCWCobG8nTD24juwSVataW7iViRxcTkey/B792VZEhuHjQvA3cAJgx2Lv8GnX8NIoShZtoCg3Cx6ecs+VEPD2fBcg2L4JK7xldGpOJ3ONEAyVsLOttXZtNXvyDZRijiErQALMTorcgi79M5uVX9/jMv2Ggb2XAeZhlLD28fHwIDAQAB";
 * private static final String allocServer = "http://103.60.220.145:9999/";
 * 
 * public static void main(String[] args) throws Exception { int count = 1;
 * String serverHost = "127.0.0.1"; int sleep = 1000;
 * 
 * if (args != null && args.length > 0) { count = Integer.parseInt(args[0]); if
 * (args.length > 1) { serverHost = args[1]; } if (args.length > 2) { sleep =
 * Integer.parseInt(args[1]); } }
 * 
 * ScheduledExecutorService scheduledExecutor =
 * Executors.newSingleThreadScheduledExecutor(); ClientListener listener = new
 * L(scheduledExecutor); Client client = null; String cacheDir =
 * MPushClientTest.class.getResource("/").getFile(); for (int i = 0; i < count;
 * i++) { client = ClientConfig .build() .setPublicKey(publicKey)
 * //.setAllotServer(allocServer) .setServerHost(serverHost)
 * .setServerPort(3000) .setDeviceId("deviceId-test" + i) .setOsName("android")
 * .setOsVersion("6.0") .setClientVersion("2.0") .setUserId("user-" + i)
 * .setSessionStorageDir(cacheDir + i) .setLogger(new DefaultLogger())
 * .setLogEnabled(true) .setEnableHttpProxy(true) .setClientListener(listener)
 * .create(); client.start(); Thread.sleep(sleep); } }
 * 
 * public static class L implements ClientListener { private final
 * ScheduledExecutorService scheduledExecutor; boolean flag = true;
 * 
 * public L(ScheduledExecutorService scheduledExecutor) { this.scheduledExecutor
 * = scheduledExecutor; }
 * 
 * @Override public void onConnected(Client client) { flag = true; }
 * 
 * @Override public void onDisConnected(Client client) { flag = false; }
 * 
 * @Override public void onHandshakeOk(final Client client, final int heartbeat)
 * { scheduledExecutor.scheduleAtFixedRate(new Runnable() {
 * 
 * @Override public void run() { client.healthCheck(); } }, 10, 10,
 * TimeUnit.SECONDS);
 * 
 * //client.push(PushContext.build("test"));
 * 
 * }
 * 
 * @Override public void onReceivePush(Client client, byte[] content, int
 * messageId) { if (messageId > 0) client.ack(messageId); }
 * 
 * @Override public void onKickUser(String deviceId, String userId) {
 * 
 * }
 * 
 * @Override public void onBind(boolean success, String userId) {
 * 
 * }
 * 
 * @Override public void onUnbind(boolean success, String userId) {
 * 
 * }
 * 
 * } }
 */