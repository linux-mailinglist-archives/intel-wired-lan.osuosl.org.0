Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E108A4104
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 Apr 2024 09:44:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5E3508134A;
	Sun, 14 Apr 2024 07:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YmUxU6UXplTH; Sun, 14 Apr 2024 07:44:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B01F81313
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713080659;
	bh=AMdpA8RlfBLfoieep1hVzJ7jhYlO38p3jYoF5ComMRE=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=g7RD6Bc9uNMOSlTjd0P3nNPUdvrU5DLUyDcPFlqlmEoexTNAZZTaBuH+ehpiiZFZr
	 UDacab2cCvw8pjVFGmN+ELtOgSu7ds+2wLu36xvof6w1pwFkLBKQ0Nhttdegos1Zk1
	 90tr7lMxHs8gbVEvgeBVWKkVaHGEzcJJEqh5o6z4O9Uxgj2bY17Ib0rHOT52eSx0a/
	 I4qN2bq1ttAz1UMpxz/2bnRnpxLbaf+dtUF56iZcOCL/WLkQrGSbYMPm+WoYQ2lZ+k
	 RWhR23hOBmR67deVj+gOEBZOYPmzR/WfN4JTpLf5q970ygBqU12QU68HJ77iAFHltN
	 A7crKx9fXN1Nw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B01F81313;
	Sun, 14 Apr 2024 07:44:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42A681BF40B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Apr 2024 07:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3124B605D9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Apr 2024 07:44:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KSiCM0nRGWbM for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 Apr 2024 07:44:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 10DE1605D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10DE1605D8
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 10DE1605D8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Apr 2024 07:44:15 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Sun, 14 Apr 2024 09:44:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240411-igc_led_deadlock-v1-1-0da98a3c68c5@linutronix.de>
X-B4-Tracking: v=1; b=H4sIAEmJG2YC/x2NXQqDMBAGryL73ICRhP5cpRTZJJ+6NI0lEVsQ7
 97Yx2EYZqOCLCh0azbKWKXInCroU0N+4jRCSahMXduZ1mitZPR9ROgDOMTZP9WZXbjYqzWDBdX
 McYFymZOfjvDFZUE+xDtjkO//dSf5RJWw0GPffxJBiQqEAAAA
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Andrew Lunn <andrew@lunn.ch>
X-Developer-Signature: v=1; a=openpgp-sha256; l=5716; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=T3sQtI9yJr/LQHwe3aNKV8VQwb7RsSAGk07/EDgrTuk=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBmG4lKN5OTTn+04LJurGm1RqD4IfqotEHijWzml
 kEyjMBWl7eJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCZhuJSgAKCRDBk9HyqkZz
 gk4qEACE/RT5geUGH56mZfrSkY0oyiOhaErd8ZYuUC/I8aPnmOXjQxayLqGiyEBJEeTjIgPZaU2
 AhKvNDILPo+AQE08hbAIIkgdjT5quytGQIRRSyaaRV5Wr2JtXVitFTW8A35Nxx50D3EindcyNl7
 KcRqZJ+cR81KMS+vYdqCuGc9TFjxaQfaeD+TB7d4sNQJL9xCumfpr8okryrgBk4XUzHteAYpUDv
 mbFm1DgsjNTpwqXxLa3c0XBlbKCJJC6I2hmqMH7undWUFjlv4EJu+S/2QIBTXhHXPT+WLuaTwcL
 5TwPpz0/RelsfqY0DRT3bJMvGJBVLZ1ZEyjktlLMGIbEbynjFcrB8wxtLTfxWwfx/h09gp6i7zE
 Zqp+CNVJYBU49FUZU0dfxRc824BlAwpJ8SxdsPv+1s2kpJJWAhS8F/Ri/etOub/ROtaNL6x+pF4
 VFu61AYiNGVi9GSwdn6SY/GGX//VqlQLSbLQIjcVwJoIDM30NXMwMBgang2olXw2NMhlh0IAMb3
 tBgYR3J3sgPhRJShSrhHr5LmhxRxN5lo7MAJzLS9f4HWhA0dFjEPLNfuk2uMllDJjLk22ucuZFz
 XQiFK5+AEf6oU9JQDQvHMLkbyX0OlxlgtIzolcRS2rIsU3mCw6aoGlWNpOxNrv/C3cx0RWm2MMT
 mL6IH0kFlEGhwKA==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1713080651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=AMdpA8RlfBLfoieep1hVzJ7jhYlO38p3jYoF5ComMRE=;
 b=WOjE8dd5v4M3mQvpSvM49fQwyWymMzTxltPeSfMx5ifYbifnT2arARNzmVqlLj8lrIrD4q
 HGyUASvyOgHIOogWuCRA2HC2BBU5KeX7nTy+1jJYRT/Qq/K2HaiMIynhxCHdw4+0jjZk6g
 qKH8oJhTxR8Df1YW38lDp6vO9FDdfsz24EoEZ2Zz43LorpRCwTQGO/VCvHuCdMib82srFe
 0TfTKJ7piWont5nAVItCsYN3r3pCD2SlG3SMbjvDXGLr9J2Z84e0LjGTseuEtxP7Em69sf
 VFvt8JvycuP2TkpUn12a6x0hBTqr8Ts9VxM1W3iGVryPoMyUy7JaTUhgmag8Aw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1713080651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=AMdpA8RlfBLfoieep1hVzJ7jhYlO38p3jYoF5ComMRE=;
 b=4uwPNXo1uTLPXV+l/aIH/PdHdknbwnqXn438hoQ8qaDg+cztrZcfv+BC+3Kn1MTYUlILRR
 QFtB0622cqatowAg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=WOjE8dd5; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=4uwPNXo1
Subject: [Intel-wired-lan] [PATCH iwl-net] igc: Fix deadlock on module
 removal
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Sasha Neftin <sasha.neftin@intel.com>, netdev@vger.kernel.org,
 Kurt Kanzenbach <kurt@linutronix.de>, Lukas Wunner <lukas@wunner.de>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The removal of the igc module leads to a deadlock:

|[Mon Apr  8 17:38:55 2024]  __mutex_lock.constprop.0+0x3e5/0x7a0
|[Mon Apr  8 17:38:55 2024]  ? preempt_count_add+0x85/0xd0
|[Mon Apr  8 17:38:55 2024]  __mutex_lock_slowpath+0x13/0x20
|[Mon Apr  8 17:38:55 2024]  mutex_lock+0x3b/0x50
|[Mon Apr  8 17:38:55 2024]  rtnl_lock+0x19/0x20
|[Mon Apr  8 17:38:55 2024]  unregister_netdevice_notifier+0x2a/0xc0
|[Mon Apr  8 17:38:55 2024]  netdev_trig_deactivate+0x25/0x70
|[Mon Apr  8 17:38:55 2024]  led_trigger_set+0xe2/0x2d0
|[Mon Apr  8 17:38:55 2024]  led_classdev_unregister+0x4f/0x100
|[Mon Apr  8 17:38:55 2024]  devm_led_classdev_release+0x15/0x20
|[Mon Apr  8 17:38:55 2024]  release_nodes+0x47/0xc0
|[Mon Apr  8 17:38:55 2024]  devres_release_all+0x9f/0xe0
|[Mon Apr  8 17:38:55 2024]  device_del+0x272/0x3c0
|[Mon Apr  8 17:38:55 2024]  netdev_unregister_kobject+0x8c/0xa0
|[Mon Apr  8 17:38:55 2024]  unregister_netdevice_many_notify+0x530/0x7c0
|[Mon Apr  8 17:38:55 2024]  unregister_netdevice_queue+0xad/0xf0
|[Mon Apr  8 17:38:55 2024]  unregister_netdev+0x21/0x30
|[Mon Apr  8 17:38:55 2024]  igc_remove+0xfb/0x1f0 [igc]
|[Mon Apr  8 17:38:55 2024]  pci_device_remove+0x42/0xb0
|[Mon Apr  8 17:38:55 2024]  device_remove+0x43/0x70

unregister_netdev() acquires the RNTL lock and releases the LEDs bound
to that netdevice. However, netdev_trig_deactivate() and later
unregister_netdevice_notifier() try to acquire the RTNL lock again.

Avoid this situation by not using the device-managed LED class
functions.

Suggested-by: Lukas Wunner <lukas@wunner.de>
Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc.h      |  4 ++++
 drivers/net/ethernet/intel/igc/igc_leds.c | 37 ++++++++++++++++++++++++-------
 drivers/net/ethernet/intel/igc/igc_main.c |  3 +++
 3 files changed, 36 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 90316dc58630..9f352cbe5d56 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -164,6 +164,8 @@ struct igc_ring {
 	struct xsk_buff_pool *xsk_pool;
 } ____cacheline_internodealigned_in_smp;
 
+struct igc_led_classdev;
+
 /* Board specific private data structure */
 struct igc_adapter {
 	struct net_device *netdev;
@@ -298,6 +300,7 @@ struct igc_adapter {
 
 	/* LEDs */
 	struct mutex led_mutex;
+	struct igc_led_classdev *leds;
 };
 
 void igc_up(struct igc_adapter *adapter);
@@ -723,6 +726,7 @@ void igc_ptp_read(struct igc_adapter *adapter, struct timespec64 *ts);
 void igc_ptp_tx_tstamp_event(struct igc_adapter *adapter);
 
 int igc_led_setup(struct igc_adapter *adapter);
+void igc_led_free(struct igc_adapter *adapter);
 
 #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
 
diff --git a/drivers/net/ethernet/intel/igc/igc_leds.c b/drivers/net/ethernet/intel/igc/igc_leds.c
index bf240c5daf86..eee550cdb1d5 100644
--- a/drivers/net/ethernet/intel/igc/igc_leds.c
+++ b/drivers/net/ethernet/intel/igc/igc_leds.c
@@ -236,8 +236,8 @@ static void igc_led_get_name(struct igc_adapter *adapter, int index, char *buf,
 		 pci_dev_id(adapter->pdev), index);
 }
 
-static void igc_setup_ldev(struct igc_led_classdev *ldev,
-			   struct net_device *netdev, int index)
+static int igc_setup_ldev(struct igc_led_classdev *ldev,
+			  struct net_device *netdev, int index)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct led_classdev *led_cdev = &ldev->led;
@@ -257,24 +257,45 @@ static void igc_setup_ldev(struct igc_led_classdev *ldev,
 	led_cdev->hw_control_get = igc_led_hw_control_get;
 	led_cdev->hw_control_get_device = igc_led_hw_control_get_device;
 
-	devm_led_classdev_register(&netdev->dev, led_cdev);
+	return led_classdev_register(&netdev->dev, led_cdev);
 }
 
 int igc_led_setup(struct igc_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
-	struct device *dev = &netdev->dev;
 	struct igc_led_classdev *leds;
-	int i;
+	int i, err;
 
 	mutex_init(&adapter->led_mutex);
 
-	leds = devm_kcalloc(dev, IGC_NUM_LEDS, sizeof(*leds), GFP_KERNEL);
+	leds = kcalloc(IGC_NUM_LEDS, sizeof(*leds), GFP_KERNEL);
 	if (!leds)
 		return -ENOMEM;
 
-	for (i = 0; i < IGC_NUM_LEDS; i++)
-		igc_setup_ldev(leds + i, netdev, i);
+	for (i = 0; i < IGC_NUM_LEDS; i++) {
+		err = igc_setup_ldev(leds + i, netdev, i);
+		if (err)
+			goto err;
+	}
+
+	adapter->leds = leds;
 
 	return 0;
+
+err:
+	for (i--; i >= 0; i--)
+		led_classdev_unregister(&((leds + i)->led));
+
+	return err;
+}
+
+void igc_led_free(struct igc_adapter *adapter)
+{
+	struct igc_led_classdev *leds = adapter->leds;
+	int i;
+
+	for (i = 0; i < IGC_NUM_LEDS; i++)
+		led_classdev_unregister(&((leds + i)->led));
+
+	kfree(leds);
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 35ad40a803cb..4d975d620a8e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7021,6 +7021,9 @@ static void igc_remove(struct pci_dev *pdev)
 	cancel_work_sync(&adapter->watchdog_task);
 	hrtimer_cancel(&adapter->hrtimer);
 
+	if (IS_ENABLED(CONFIG_IGC_LEDS))
+		igc_led_free(adapter);
+
 	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
 	 * would have already happened in close and is redundant.
 	 */

---
base-commit: 7efd0a74039fb6b584be2cb91c1d0ef0bd796ee1
change-id: 20240411-igc_led_deadlock-7abd85954f5e

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

