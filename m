Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFsmDw6ptWmw3AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:34 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFDE28E74E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91FBE8230B;
	Sat, 14 Mar 2026 18:29:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9zsHpeQuwUvj; Sat, 14 Mar 2026 18:29:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAAE48230D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773512972;
	bh=IB6x/lr1ek9kI9gI1prPQzKFPvlqHQ7Z+jL2sCBy488=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BJO7sM2aCtIhijmaxtrQ5/S8E4rvCLUzvEjB41SM9d8YKdfk4y/ZcBhB9aOqzDOJ+
	 BEMYtzQ/ptaJ1xykSUS/14wabuTRV43Vs5d91ZSUNvMpy1XxtWeDRBc4eFzZnuArzL
	 r/N4GOjC0L1je1iMccXEygT57q19Pug+/YQiVvNBn/2vC4d7d53NNNW+D4OHgvXBG1
	 DeSIDCTD4lMgLRz/PLS/xlKXMCMwDQlqMoxdHdTDEVEfvF4bV5XqWqbm3voF6qmhB9
	 HAWtoGY0Ah2babOZGCL4P9RGuf7YA81GIE+Hmy3vsuReyCIh41qYeyQArStlf4BDIt
	 cDr1fScDeaAyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAAE48230D;
	Sat, 14 Mar 2026 18:29:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5688A1B4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3C4A760C18
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bKxue-nxXqL0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Mar 2026 18:29:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62a; helo=mail-pl1-x62a.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 91D7C60A72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91D7C60A72
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 91D7C60A72
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:29 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id
 d9443c01a7336-2a7a9b8ed69so40182695ad.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 11:29:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773512969; x=1774117769;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=IB6x/lr1ek9kI9gI1prPQzKFPvlqHQ7Z+jL2sCBy488=;
 b=HMeoGkPi3UIzBdTZgH26vxYGYOnF0TJ7f82e6tBHuWOAL5kljN3c0kjzECtZGn8pvT
 raaeSEqqkq1ktBt+7EzK677/TeIXWq1Q9pZ7TtwmukVVrc9XUN0v7mATD09FNytXMYhL
 r7OqTJqUbNXwn2Dx2on7E2tNXAuhr6PCq/Id8Mc1t7hVO8TmJdoApvbmAyHhxRqPSLyB
 +VjsCCZYI6ljNtC17Nt62AJwQlRNDnnYWPoYYW3bb2459S3LWiLVwfh8MHS7kGuPCGUj
 dIjUpcbODPL3pzK8mlpIltQ+P7LRC4zstH4HdqgP4oOkgtOzXmGp5P/RxUvbTEd34HxK
 TGGA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTvdfZapeNZotGIHCWtAHtBy0ZtgrseOj1w8pjsGG+obd3+9lROAeWoO3E8uq5HyjJJlhUGPi4KUSktpDldYs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwRmvz8eDNjSuGH+bfDYO5VHdvNKnyybslzufZoqyvPsCuDJew7
 wvhZE5r2dE9yjkyTxBHDpSDoCWgtXzbG3Pg3t3psSk8EKSWIKgSm1ffm
X-Gm-Gg: ATEYQzw4Nbp/o27mKfqU8HK46ZTJm/aPkBAI8XpGmmiM+aR8m/4j/FU6Oy1d0Z+MMCu
 nXc+TYM7e9CgY4DXaRfQUyaoj0ZNB/0nYubTvHrKO2/Y5p0mYaj98sY6dqz/CbLIOhYWob3h/KM
 sQkpaLSh8BKIs49UFCV2vBxf/2Q4DC/8z6Y96UyWlbg35ZqB6sJ2tI8ONqcI9EbIXEgmTxXLj/C
 +GoVjnxgmU7t/9WoubSDXemvTMhBs97tDxoYFes0jM77qYvDuh7pkoIdLXKZxJ/VP8o2Gptxm76
 6ryuVvQZrl/oQXWnHIjkryAGGFwzI54KOy9DY7jARZWIQM2RfLk3l6oCoO+rbGytE7i81YJYNRv
 f9nAEkzIPyjhevm2AEfnPFhhzrNwdkRy4Q60ADGRc8v8en6EQbxB/ogx8wsvLVYPNR9IOB7K0Pi
 4zLB4muRqc1RSCg9QOowVdD33DnjHtEk/IU1vfZSNV2hWxTt9GhYXuDlZK/WCt0uEOZUf0tMf1Q
 1GaOQ==
X-Received: by 2002:a17:902:d592:b0:2ae:5ec4:2f78 with SMTP id
 d9443c01a7336-2aecaaa860dmr85707515ad.33.1773512968776; 
 Sat, 14 Mar 2026 11:29:28 -0700 (PDT)
Received: from localhost.localdomain ([122.168.66.151])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2aece62c581sm77673525ad.33.2026.03.14.11.29.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2026 11:29:27 -0700 (PDT)
From: I Viswanath <viswanathiyyappan@gmail.com>
To: stfomichev@gmail.com, horms@kernel.org, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, kuba@kernel.org,
 davem@davemloft.net, eperezma@redhat.com, xuanzhuo@linux.alibaba.com,
 jasowang@redhat.com, mst@redhat.com, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 virtualization@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, I Viswanath <viswanathiyyappan@gmail.com>
Date: Sat, 14 Mar 2026 23:58:07 +0530
Message-ID: <20260314182809.362808-6-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773512969; x=1774117769; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IB6x/lr1ek9kI9gI1prPQzKFPvlqHQ7Z+jL2sCBy488=;
 b=kV7PUbmEHY3Twg2xvYi+IguRU2BZ+x84b9a8dZAdYH0HulIvE2oPDKY5fxXOMmqkf3
 LSinE97b6G7fuGFt79bBZp3AHUCkahMtx/kmztgCvsG6EnqfYuj97WqESwBsNH9B9noV
 2TKwZH8ZOCRcehBMKuv5KBgB7BhEm3xBGNNGOhqzajcbauiRu9stkmPAiwzvtRr9/eBC
 d9ZtQY+r8s94PsgnGP+/9Rms4xdIst++jcVP2Kt6YMMf71Rr+Z/gxRCHoMQPR5uHZzYW
 XwMZ1iDGbZI4VkDUa3Nlu7rr68Fho2TOAywrN7zndszjbPvjwXymXwV+lkqN0u+KPgLt
 nnsg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=kV7PUbmE
Subject: [Intel-wired-lan] [PATCH net-next v9 5/7] 8139cp: Implement
 ndo_set_rx_mode_async callback
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:stfomichev@gmail.com,m:horms@kernel.org,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:davem@davemloft.net,m:eperezma@redhat.com,m:xuanzhuo@linux.alibaba.com,m:jasowang@redhat.com,m:mst@redhat.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:ronak.doshi@broadcom.com,m:pcnet32@frontier.com,m:bcm-kernel-feedback-list@broadcom.com,m:netdev@vger.kernel.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:viswanathiyyappan@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,redhat.com,lunn.ch,davemloft.net,linux.alibaba.com,intel.com,broadcom.com,frontier.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[broadcom.com,vger.kernel.org,lists.linux.dev,lists.osuosl.org,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EDFDE28E74E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Implement the ndo_set_rx_mode_async callback and update
the driver to use the snapshot/commit model for RX mode update.

Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
---
 
Call paths involving netif_set_rx_mode in 8139cp

netif_set_rx_mode
|-- cp_init_hw
|   |-- cp_open (ndo_open, takes lock)
|   |   `-- cp_change_mtu (ndo_change_mtu, takes lock)
|   |
|   `-- cp_resume (lock added)
|
`-- cp_tx_timeout (ndo_tx_timeout, takes lock)

 drivers/net/ethernet/realtek/8139cp.c | 49 ++++++++++++++++++---------
 1 file changed, 33 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/realtek/8139cp.c b/drivers/net/ethernet/realtek/8139cp.c
index 5652da8a178c..9651a0d9d8f0 100644
--- a/drivers/net/ethernet/realtek/8139cp.c
+++ b/drivers/net/ethernet/realtek/8139cp.c
@@ -372,7 +372,6 @@ struct cp_private {
 	} while (0)
 
 
-static void __cp_set_rx_mode (struct net_device *dev);
 static void cp_tx (struct cp_private *cp);
 static void cp_clean_rings (struct cp_private *cp);
 #ifdef CONFIG_NET_POLL_CONTROLLER
@@ -885,30 +884,31 @@ static netdev_tx_t cp_start_xmit (struct sk_buff *skb,
 /* Set or clear the multicast filter for this adaptor.
    This routine is not state sensitive and need not be SMP locked. */
 
-static void __cp_set_rx_mode (struct net_device *dev)
+static void cp_set_rx_mode_async(struct net_device *dev)
 {
 	struct cp_private *cp = netdev_priv(dev);
 	u32 mc_filter[2];	/* Multicast hash filter */
+	char *ha_addr;
 	int rx_mode;
+	int ni;
 
 	/* Note: do not reorder, GCC is clever about common statements. */
-	if (dev->flags & IFF_PROMISC) {
+	if (netif_get_rx_mode_cfg(dev, NETIF_RX_MODE_CFG_PROMISC)) {
 		/* Unconditionally log net taps. */
 		rx_mode =
 		    AcceptBroadcast | AcceptMulticast | AcceptMyPhys |
 		    AcceptAllPhys;
 		mc_filter[1] = mc_filter[0] = 0xffffffff;
-	} else if ((netdev_mc_count(dev) > multicast_filter_limit) ||
-		   (dev->flags & IFF_ALLMULTI)) {
+	} else if ((netif_rx_mode_mc_count(dev) > multicast_filter_limit) ||
+		   netif_get_rx_mode_cfg(dev, NETIF_RX_MODE_CFG_ALLMULTI)) {
 		/* Too many to filter perfectly -- accept all multicasts. */
 		rx_mode = AcceptBroadcast | AcceptMulticast | AcceptMyPhys;
 		mc_filter[1] = mc_filter[0] = 0xffffffff;
 	} else {
-		struct netdev_hw_addr *ha;
 		rx_mode = AcceptBroadcast | AcceptMyPhys;
 		mc_filter[1] = mc_filter[0] = 0;
-		netdev_for_each_mc_addr(ha, dev) {
-			int bit_nr = ether_crc(ETH_ALEN, ha->addr) >> 26;
+		netif_rx_mode_for_each_mc_addr(ha_addr, dev, ni) {
+			int bit_nr = ether_crc(ETH_ALEN, ha_addr) >> 26;
 
 			mc_filter[bit_nr >> 5] |= 1 << (bit_nr & 31);
 			rx_mode |= AcceptMulticast;
@@ -925,12 +925,14 @@ static void __cp_set_rx_mode (struct net_device *dev)
 
 static void cp_set_rx_mode (struct net_device *dev)
 {
-	unsigned long flags;
-	struct cp_private *cp = netdev_priv(dev);
+	bool allmulti = !!(dev->flags & IFF_ALLMULTI);
+	bool promisc = !!(dev->flags & IFF_PROMISC);
 
-	spin_lock_irqsave (&cp->lock, flags);
-	__cp_set_rx_mode(dev);
-	spin_unlock_irqrestore (&cp->lock, flags);
+	netif_set_rx_mode_flag(dev, NETIF_RX_MODE_UC_SKIP, true);
+	netif_set_rx_mode_flag(dev, NETIF_RX_MODE_MC_SKIP, promisc | allmulti);
+
+	netif_set_rx_mode_cfg(dev, NETIF_RX_MODE_CFG_ALLMULTI, allmulti);
+	netif_set_rx_mode_cfg(dev, NETIF_RX_MODE_CFG_PROMISC, promisc);
 }
 
 static void __cp_get_stats(struct cp_private *cp)
@@ -1040,7 +1042,7 @@ static void cp_init_hw (struct cp_private *cp)
 	cp_start_hw(cp);
 	cpw8(TxThresh, 0x06); /* XXX convert magic num to a constant */
 
-	__cp_set_rx_mode(dev);
+	netif_set_rx_mode(dev);
 	cpw32_f (TxConfig, IFG | (TX_DMA_BURST << TxDMAShift));
 
 	cpw8(Config1, cpr8(Config1) | DriverLoaded | PMEnable);
@@ -1262,7 +1264,7 @@ static void cp_tx_timeout(struct net_device *dev, unsigned int txqueue)
 	cp_clean_rings(cp);
 	cp_init_rings(cp);
 	cp_start_hw(cp);
-	__cp_set_rx_mode(dev);
+	netif_set_rx_mode(dev);
 	cpw16_f(IntrMask, cp_norx_intr_mask);
 
 	netif_wake_queue(dev);
@@ -1870,6 +1872,7 @@ static const struct net_device_ops cp_netdev_ops = {
 	.ndo_validate_addr	= eth_validate_addr,
 	.ndo_set_mac_address 	= cp_set_mac_address,
 	.ndo_set_rx_mode	= cp_set_rx_mode,
+	.ndo_set_rx_mode_async	= cp_set_rx_mode_async,
 	.ndo_get_stats		= cp_get_stats,
 	.ndo_eth_ioctl		= cp_ioctl,
 	.ndo_start_xmit		= cp_start_xmit,
@@ -2071,7 +2074,7 @@ static int __maybe_unused cp_suspend(struct device *device)
 	spin_unlock_irqrestore (&cp->lock, flags);
 
 	device_set_wakeup_enable(device, cp->wol_enabled);
-
+	netif_disable_async_ops(dev);
 	return 0;
 }
 
@@ -2081,6 +2084,8 @@ static int __maybe_unused cp_resume(struct device *device)
 	struct cp_private *cp = netdev_priv(dev);
 	unsigned long flags;
 
+	netif_enable_async_ops(dev);
+
 	if (!netif_running(dev))
 		return 0;
 
@@ -2088,7 +2093,11 @@ static int __maybe_unused cp_resume(struct device *device)
 
 	/* FIXME: sh*t may happen if the Rx ring buffer is depleted */
 	cp_init_rings_index (cp);
+
+	rtnl_lock();
 	cp_init_hw (cp);
+	rtnl_unlock();
+
 	cp_enable_irq(cp);
 	netif_start_queue (dev);
 
@@ -2101,6 +2110,13 @@ static int __maybe_unused cp_resume(struct device *device)
 	return 0;
 }
 
+static void cp_shutdown(struct pci_dev *pdev)
+{
+	struct net_device *dev = pci_get_drvdata(pdev);
+
+	netif_disable_async_ops(dev);
+}
+
 static const struct pci_device_id cp_pci_tbl[] = {
         { PCI_DEVICE(PCI_VENDOR_ID_REALTEK,     PCI_DEVICE_ID_REALTEK_8139), },
         { PCI_DEVICE(PCI_VENDOR_ID_TTTECH,      PCI_DEVICE_ID_TTTECH_MC322), },
@@ -2116,6 +2132,7 @@ static struct pci_driver cp_driver = {
 	.probe        =	cp_init_one,
 	.remove       = cp_remove_one,
 	.driver.pm    = &cp_pm_ops,
+	.shutdown     = &cp_shutdown
 };
 
 module_pci_driver(cp_driver);
-- 
2.47.3

