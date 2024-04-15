Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52CE8A5267
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Apr 2024 15:56:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F1D0140A6D;
	Mon, 15 Apr 2024 13:56:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qUp4AWYD2Ejy; Mon, 15 Apr 2024 13:56:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AC4E40A78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713189372;
	bh=CXXgL6G6El5HSA5GOGrdQh1jyG0t/HRLgYosE1hy5bg=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=J2Fgyjw+uEjSN1HTJDXKipmsRMZ1A8YOOHqi+hWxQEoSVNNAtt6zRh+XWrPmZpCnI
	 Rat3QUiLryXbjbLQ1cXDJhCS3dRTNrCjG+yOSZLmQfb+O4qg3mU7rjSPyltTib3jl/
	 TWFYZVyFiXOh3GkYymXtS+pdchXbSfMoMM8FlO+ksl1GkTK43w2BuC5g3bNzYqKLww
	 z5mFtfPfo7tU7deMWr9Su6MROjvjObBpG3YSEemxd+cA+WEgs7ONDbZqYx9QmI6i7x
	 55c/Lq0Vohs1oZZCOfDYmYQxoWbsTc5YaGqFcI6h6ci/hUMh9D2zVJpn7Qu7nha3OM
	 QSVsiwlorck9w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AC4E40A78;
	Mon, 15 Apr 2024 13:56:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BDC21BF285
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 13:56:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2743D40119
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 13:56:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZtUnJ9dmK0Nb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Apr 2024 13:56:08 +0000 (UTC)
X-Greylist: delayed 433 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 15 Apr 2024 13:56:07 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AB9CD401D5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB9CD401D5
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=83.223.78.240;
 helo=bmailout2.hostsharing.net; envelope-from=lukas@wunner.de;
 receiver=<UNKNOWN> 
Received: from bmailout2.hostsharing.net (bmailout2.hostsharing.net
 [83.223.78.240])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AB9CD401D5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Apr 2024 13:56:07 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by bmailout2.hostsharing.net (Postfix) with ESMTPS id ED4DC2800C7F2;
 Mon, 15 Apr 2024 15:48:46 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id BFB0F17E52; Mon, 15 Apr 2024 15:48:46 +0200 (CEST)
Message-Id: <2f1be6b1cf2b3346929b0049f2ac7d7d79acb5c9.1713188539.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Mon, 15 Apr 2024 15:48:48 +0200
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: [Intel-wired-lan] [PATCH net] igc: Fix LED-related deadlock on
 driver unbind
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
Cc: Andrew Lunn <andrew@lunn.ch>, Sasha Neftin <sasha.neftin@intel.com>,
 netdev@vger.kernel.org, Kurt Kanzenbach <kurt@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, Roman Lozko <lozko.roma@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Roman reports a deadlock on unplug of a Thunderbolt docking station
containing an Intel I225 Ethernet adapter.

The root cause is that led_classdev's for LEDs on the adapter are
registered such that they're device-managed by the netdev.  That
results in recursive acquisition of the rtnl_lock() mutex on unplug:

When the driver calls unregister_netdev(), it acquires rtnl_lock(),
then frees the device-managed resources.  Upon unregistering the LEDs,
netdev_trig_deactivate() invokes unregister_netdevice_notifier(),
which tries to acquire rtnl_lock() again.

Avoid by using non-device-managed LED registration.

Stack trace for posterity:

  schedule+0x6e/0xf0
  schedule_preempt_disabled+0x15/0x20
  __mutex_lock+0x2a0/0x750
  unregister_netdevice_notifier+0x40/0x150
  netdev_trig_deactivate+0x1f/0x60 [ledtrig_netdev]
  led_trigger_set+0x102/0x330
  led_classdev_unregister+0x4b/0x110
  release_nodes+0x3d/0xb0
  devres_release_all+0x8b/0xc0
  device_del+0x34f/0x3c0
  unregister_netdevice_many_notify+0x80b/0xaf0
  unregister_netdev+0x7c/0xd0
  igc_remove+0xd8/0x1e0 [igc]
  pci_device_remove+0x3f/0xb0

Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
Reported-by: Roman Lozko <lozko.roma@gmail.com>
Closes: https://lore.kernel.org/r/CAEhC_B=ksywxCG_+aQqXUrGEgKq+4mqnSV8EBHOKbC3-Obj9+Q@mail.gmail.com/
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
Signed-off-by: Lukas Wunner <lukas@wunner.de>
Cc: Heiner Kallweit <hkallweit1@gmail.com>
---
 drivers/net/ethernet/intel/igc/igc.h      |  2 ++
 drivers/net/ethernet/intel/igc/igc_leds.c | 38 ++++++++++++++++++++++++-------
 drivers/net/ethernet/intel/igc/igc_main.c |  3 +++
 3 files changed, 35 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 90316dc..6bc56c7 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -298,6 +298,7 @@ struct igc_adapter {
 
 	/* LEDs */
 	struct mutex led_mutex;
+	struct igc_led_classdev *leds;
 };
 
 void igc_up(struct igc_adapter *adapter);
@@ -723,6 +724,7 @@ struct igc_nfc_rule *igc_get_nfc_rule(struct igc_adapter *adapter,
 void igc_ptp_tx_tstamp_event(struct igc_adapter *adapter);
 
 int igc_led_setup(struct igc_adapter *adapter);
+void igc_led_free(struct igc_adapter *adapter);
 
 #define igc_rx_pg_size(_ring) (PAGE_SIZE << igc_rx_pg_order(_ring))
 
diff --git a/drivers/net/ethernet/intel/igc/igc_leds.c b/drivers/net/ethernet/intel/igc/igc_leds.c
index bf240c5..3929b25 100644
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
@@ -257,24 +257,46 @@ static void igc_setup_ldev(struct igc_led_classdev *ldev,
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
+	kfree(leds);
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
index 35ad40a..4d975d6 100644
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
-- 
2.43.0

