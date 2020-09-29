Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D33427D9A1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:03:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCC2484E2E;
	Tue, 29 Sep 2020 21:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9XBfU8aiWU-f; Tue, 29 Sep 2020 21:03:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99306848F0;
	Tue, 29 Sep 2020 21:03:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EE321BF36E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2704186806
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TNvkvP0TT9bF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 20:35:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 034338682B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 20:35:54 +0000 (UTC)
Message-Id: <20200929203500.579810110@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1601411752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=7A0i41gQJ/jaywFxeyOJx2shJ3OAIzso1ZapJJEzz0I=;
 b=x9VNUjW3UhjXawHze0N9X7waM046YqAuAEtl+aeXbianGAnhXgFsSqnTYrJ6K+DxH4ZbKQ
 r4QNlXs9Xna57gIoMMtiQTirPjgrYi8JaRm+mKr7celqmDHBCaVAeaeTdZq0RupXUYQcGV
 wgV3JKUBE0h4I+FllmpCIGO7H+ygcoxQDSN4PSimL3K+3swSR78hMFJBPuxh61nI0F0hEr
 ttiZ7tIiugpCb+E9AArqio9M1BrMfzjJfFWCzatnSUY4aRE4742Zskk/37HNbcLM+mqnWX
 twMuWxi9pqKsJuJCF0ST3rn2SWIKj7FDFgQEtn76YRVOOi+bug7QKFTW46AxJw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1601411752;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=7A0i41gQJ/jaywFxeyOJx2shJ3OAIzso1ZapJJEzz0I=;
 b=lIKvBa507QD8w6eBx1eHyxYQdAw7I2lyHTNyDJp9+jiiicKmHN82JbIP/9QMLw36BeSwui
 rzrxfsKTabcD+0Dw==
Date: Tue, 29 Sep 2020 22:25:20 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200929202509.673358734@linutronix.de>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:03:08 +0000
Subject: [Intel-wired-lan] [patch V2 11/36] net: ionic: Replace
 in_interrupt() usage.
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Christian Benvenuti <benve@cisco.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Martin Habets <mhabets@solarflare.com>, Ulrich Kunitz <kune@deine-taler.de>,
 Jay Cliburn <jcliburn@gmail.com>, Paul McKenney <paulmck@kernel.org>,
 Stanislaw Gruszka <stf_xl@wp.pl>, Jouni Malinen <j@w1.fi>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>, Amitkumar Karwar <amitkarwar@gmail.com>,
 Wright Feng <wright.feng@cypress.com>, Daniel Drake <dsd@gentoo.org>,
 Pensando Drivers <drivers@pensando.io>, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>, Dave Miller <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

The in_interrupt() usage in this driver tries to figure out which context
may sleep and which context may not sleep. in_interrupt() is not really
suitable as it misses both preemption disabled and interrupt disabled
invocations from task context.

Conditionals like that in driver code are frowned upon in general because
invocations of functions from invalid contexts might not be detected
as the conditional papers over it.

ionic_lif_addr() and _ionoc_lif_rx_mode() can be called from:

 1) ->ndo_set_rx_mode() which is under netif_addr_lock_bh()) so it must not
    sleep.

 2) Init and setup functions which are in fully preemptible task context.

ionic_link_status_check_request() has two call paths:

 1) NAPI which obviously cannot sleep

 2) Setup which is again fully preemptible task context

Add arguments which convey the execution context to the affected functions
and let the callers provide the context instead of letting the functions
deduce it.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
V2: Treat _ionoc_lif_rx_mode() correclty (Shannon)
---
 drivers/net/ethernet/pensando/ionic/ionic_dev.c |    2 
 drivers/net/ethernet/pensando/ionic/ionic_lif.c |   64 ++++++++++++++++--------
 drivers/net/ethernet/pensando/ionic/ionic_lif.h |    2 
 3 files changed, 47 insertions(+), 21 deletions(-)

--- a/drivers/net/ethernet/pensando/ionic/ionic_dev.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_dev.c
@@ -22,7 +22,7 @@ static void ionic_watchdog_cb(struct tim
 	hb = ionic_heartbeat_check(ionic);
 
 	if (hb >= 0 && ionic->lif)
-		ionic_link_status_check_request(ionic->lif);
+		ionic_link_status_check_request(ionic->lif, false);
 }
 
 void ionic_init_devinfo(struct ionic *ionic)
--- a/drivers/net/ethernet/pensando/ionic/ionic_lif.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_lif.c
@@ -151,7 +151,7 @@ static void ionic_link_status_check(stru
 	clear_bit(IONIC_LIF_F_LINK_CHECK_REQUESTED, lif->state);
 }
 
-void ionic_link_status_check_request(struct ionic_lif *lif)
+void ionic_link_status_check_request(struct ionic_lif *lif, bool can_sleep)
 {
 	struct ionic_deferred_work *work;
 
@@ -159,7 +159,7 @@ void ionic_link_status_check_request(str
 	if (test_and_set_bit(IONIC_LIF_F_LINK_CHECK_REQUESTED, lif->state))
 		return;
 
-	if (in_interrupt()) {
+	if (!can_sleep) {
 		work = kzalloc(sizeof(*work), GFP_ATOMIC);
 		if (!work)
 			return;
@@ -798,7 +798,7 @@ static bool ionic_notifyq_service(struct
 
 	switch (le16_to_cpu(comp->event.ecode)) {
 	case IONIC_EVENT_LINK_CHANGE:
-		ionic_link_status_check_request(lif);
+		ionic_link_status_check_request(lif, false);
 		break;
 	case IONIC_EVENT_RESET:
 		work = kzalloc(sizeof(*work), GFP_ATOMIC);
@@ -981,7 +981,8 @@ static int ionic_lif_addr_del(struct ion
 	return 0;
 }
 
-static int ionic_lif_addr(struct ionic_lif *lif, const u8 *addr, bool add)
+static int ionic_lif_addr(struct ionic_lif *lif, const u8 *addr, bool add,
+			  bool can_sleep)
 {
 	struct ionic *ionic = lif->ionic;
 	struct ionic_deferred_work *work;
@@ -1010,7 +1011,7 @@ static int ionic_lif_addr(struct ionic_l
 			lif->nucast--;
 	}
 
-	if (in_interrupt()) {
+	if (!can_sleep) {
 		work = kzalloc(sizeof(*work), GFP_ATOMIC);
 		if (!work) {
 			netdev_err(lif->netdev, "%s OOM\n", __func__);
@@ -1036,12 +1037,22 @@ static int ionic_lif_addr(struct ionic_l
 
 static int ionic_addr_add(struct net_device *netdev, const u8 *addr)
 {
-	return ionic_lif_addr(netdev_priv(netdev), addr, true);
+	return ionic_lif_addr(netdev_priv(netdev), addr, true, true);
+}
+
+static int ionic_ndo_addr_add(struct net_device *netdev, const u8 *addr)
+{
+	return ionic_lif_addr(netdev_priv(netdev), addr, true, false);
 }
 
 static int ionic_addr_del(struct net_device *netdev, const u8 *addr)
 {
-	return ionic_lif_addr(netdev_priv(netdev), addr, false);
+	return ionic_lif_addr(netdev_priv(netdev), addr, false, true);
+}
+
+static int ionic_ndo_addr_del(struct net_device *netdev, const u8 *addr)
+{
+	return ionic_lif_addr(netdev_priv(netdev), addr, false, false);
 }
 
 static void ionic_lif_rx_mode(struct ionic_lif *lif, unsigned int rx_mode)
@@ -1081,11 +1092,12 @@ static void ionic_lif_rx_mode(struct ion
 		lif->rx_mode = rx_mode;
 }
 
-static void _ionic_lif_rx_mode(struct ionic_lif *lif, unsigned int rx_mode)
+static void _ionic_lif_rx_mode(struct ionic_lif *lif, unsigned int rx_mode,
+			       bool from_ndo)
 {
 	struct ionic_deferred_work *work;
 
-	if (in_interrupt()) {
+	if (from_ndo) {
 		work = kzalloc(sizeof(*work), GFP_ATOMIC);
 		if (!work) {
 			netdev_err(lif->netdev, "%s OOM\n", __func__);
@@ -1100,7 +1112,16 @@ static void _ionic_lif_rx_mode(struct io
 	}
 }
 
-static void ionic_set_rx_mode(struct net_device *netdev)
+static void ionic_dev_uc_sync(struct net_device *netdev, bool from_ndo)
+{
+	if (from_ndo)
+		__dev_uc_sync(netdev, ionic_ndo_addr_add, ionic_ndo_addr_del);
+	else
+		__dev_uc_sync(netdev, ionic_addr_add, ionic_addr_del);
+
+}
+
+static void ionic_set_rx_mode(struct net_device *netdev, bool from_ndo)
 {
 	struct ionic_lif *lif = netdev_priv(netdev);
 	struct ionic_identity *ident;
@@ -1122,7 +1143,7 @@ static void ionic_set_rx_mode(struct net
 	 *       we remove our overflow flag and check the netdev flags
 	 *       to see if we can disable NIC PROMISC
 	 */
-	__dev_uc_sync(netdev, ionic_addr_add, ionic_addr_del);
+	ionic_dev_uc_sync(netdev, from_ndo);
 	nfilters = le32_to_cpu(ident->lif.eth.max_ucast_filters);
 	if (netdev_uc_count(netdev) + 1 > nfilters) {
 		rx_mode |= IONIC_RX_MODE_F_PROMISC;
@@ -1134,7 +1155,7 @@ static void ionic_set_rx_mode(struct net
 	}
 
 	/* same for multicast */
-	__dev_mc_sync(netdev, ionic_addr_add, ionic_addr_del);
+	ionic_dev_uc_sync(netdev, from_ndo);
 	nfilters = le32_to_cpu(ident->lif.eth.max_mcast_filters);
 	if (netdev_mc_count(netdev) > nfilters) {
 		rx_mode |= IONIC_RX_MODE_F_ALLMULTI;
@@ -1146,7 +1167,12 @@ static void ionic_set_rx_mode(struct net
 	}
 
 	if (lif->rx_mode != rx_mode)
-		_ionic_lif_rx_mode(lif, rx_mode);
+		_ionic_lif_rx_mode(lif, rx_mode, from_ndo);
+}
+
+static void ionic_ndo_set_rx_mode(struct net_device *netdev)
+{
+	ionic_set_rx_mode(netdev, true);
 }
 
 static __le64 ionic_netdev_features_to_nic(netdev_features_t features)
@@ -1391,7 +1417,7 @@ static int ionic_start_queues_reconfig(s
 	 */
 	err = ionic_txrx_init(lif);
 	mutex_unlock(&lif->queue_lock);
-	ionic_link_status_check_request(lif);
+	ionic_link_status_check_request(lif, true);
 	netif_device_attach(lif->netdev);
 
 	return err;
@@ -1720,7 +1746,7 @@ static int ionic_txrx_init(struct ionic_
 	if (lif->netdev->features & NETIF_F_RXHASH)
 		ionic_lif_rss_init(lif);
 
-	ionic_set_rx_mode(lif->netdev);
+	ionic_set_rx_mode(lif->netdev, false);
 
 	return 0;
 
@@ -2093,7 +2119,7 @@ static const struct net_device_ops ionic
 	.ndo_stop               = ionic_stop,
 	.ndo_start_xmit		= ionic_start_xmit,
 	.ndo_get_stats64	= ionic_get_stats64,
-	.ndo_set_rx_mode	= ionic_set_rx_mode,
+	.ndo_set_rx_mode	= ionic_ndo_set_rx_mode,
 	.ndo_set_features	= ionic_set_features,
 	.ndo_set_mac_address	= ionic_set_mac_address,
 	.ndo_validate_addr	= eth_validate_addr,
@@ -2521,7 +2547,7 @@ static void ionic_lif_handle_fw_up(struc
 	}
 
 	clear_bit(IONIC_LIF_F_FW_RESET, lif->state);
-	ionic_link_status_check_request(lif);
+	ionic_link_status_check_request(lif, true);
 	netif_device_attach(lif->netdev);
 	dev_info(ionic->dev, "FW Up: LIFs restarted\n");
 
@@ -2713,7 +2739,7 @@ static int ionic_station_set(struct ioni
 		 */
 		if (!ether_addr_equal(ctx.comp.lif_getattr.mac,
 				      netdev->dev_addr))
-			ionic_lif_addr(lif, netdev->dev_addr, true);
+			ionic_lif_addr(lif, netdev->dev_addr, true, true);
 	} else {
 		/* Update the netdev mac with the device's mac */
 		memcpy(addr.sa_data, ctx.comp.lif_getattr.mac, netdev->addr_len);
@@ -2730,7 +2756,7 @@ static int ionic_station_set(struct ioni
 
 	netdev_dbg(lif->netdev, "adding station MAC addr %pM\n",
 		   netdev->dev_addr);
-	ionic_lif_addr(lif, netdev->dev_addr, true);
+	ionic_lif_addr(lif, netdev->dev_addr, true, true);
 
 	return 0;
 }
--- a/drivers/net/ethernet/pensando/ionic/ionic_lif.h
+++ b/drivers/net/ethernet/pensando/ionic/ionic_lif.h
@@ -245,7 +245,7 @@ static inline u32 ionic_coal_usec_to_hw(
 
 typedef void (*ionic_reset_cb)(struct ionic_lif *lif, void *arg);
 
-void ionic_link_status_check_request(struct ionic_lif *lif);
+void ionic_link_status_check_request(struct ionic_lif *lif, bool can_sleep);
 void ionic_get_stats64(struct net_device *netdev,
 		       struct rtnl_link_stats64 *ns);
 void ionic_lif_deferred_enqueue(struct ionic_deferred *def,

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
