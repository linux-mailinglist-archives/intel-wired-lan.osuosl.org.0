Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF16D14B81
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 19:18:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A06660DB9;
	Mon, 12 Jan 2026 18:18:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dlxSc5A_Cqek; Mon, 12 Jan 2026 18:18:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A62C360D8B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768241928;
	bh=UaMWg4vSUFgDqiP4zZzxboikLWW6MxJC8CsR8zCkSA4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dgqvA0Q8maGpRosOriBs11VjKc0piuklK0wHp1lskBmKRVtHdmbtROwKgnuNPWx8u
	 q+FDrphx4rcgMcgiLNinogUnhxwZj9DQ21O3J+ydttnJ9tLcVD/gXfqZDu9MvMg5MQ
	 1KR4m7veBTAQZ0xdgI3CHy4sy06SKrJoZSHWGD7LqZeqIvwL9nmts8XPzjgsB0Xqv3
	 Xes4cBBqVh9IJw26TITEzx1Ch68AoAzSGuq2sg0eU6whKS+AL97U6Mwdt5C1ZupoZI
	 9q6pfpqQeghFA0oX92qiyGGqrOnQZuGI8IVX20nlyR7M+U9EHKunjbZ3CJrjZhSCah
	 O/C9/LNo0V05Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A62C360D8B;
	Mon, 12 Jan 2026 18:18:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9A19418D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97BE640717
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JiO2m-VDOmfT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 18:17:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::535; helo=mail-pg1-x535.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 003AD401A4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 003AD401A4
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 003AD401A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:34 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id
 41be03b00d2f7-b98983bae80so2899322a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 10:17:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768241854; x=1768846654;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=UaMWg4vSUFgDqiP4zZzxboikLWW6MxJC8CsR8zCkSA4=;
 b=utvP3GV1N37B7pRvsZiVkU8C2p35kTNQTr4AsjJHJFYZKU6YGBoRYlmoT3bdZRTnSI
 uR/7AG8DUytaVLYX1vN5IP3kc1w2zn3BfWqOAZHr1/2iwmV9fRPSsh8vw42KS406jafh
 03qXb7hB5CWMGoIyHx8ZUd12I8OoK8Vy4a1VB0oSd9EklnqNMy53oMoyVeCw5KuDRWRR
 BNN+QkoJDdllK4a5I/7070CqJ0ggbFpCd0oLjCgKWEKGY1isHhjhS++JcAWFs9Lcd0Jd
 HlCCrg47J/e1p2LKLrAxFlOpo9P28BSq5ss6ILAqImWqRdQf58PyxmNXwver0/mRKbVx
 yyCw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXs3gK58WehHURJyyZlljeWN4E0go7cbJ6btMkWZN/dw4YoAquBlbzJI7iJiq0iL8sAmsH2mZOe4HVt5+a7orc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw0y2AadMbybPW0LewMbR5CoJENDUt34bJFU9ymPnf1D9FtARuI
 fxsrAEkkMqutI0w1oSQJE1U6R8kVfkwNCrF/3G0lJvS+lHQIuwerQ0/4
X-Gm-Gg: AY/fxX4/QiMW1xZ66ZLaxuIrxCP8VnzFhzxvqMc4ZSV4KvxaePbOv1+J2BvVJ4LAHyk
 suyhDFPraiT274BVtM3IRqiOEbGSgAbNtsMGSv+V+vyyaVXmq2ae6VNCfmG3RYaJtCipwqWHhwU
 hSeuzaadn+z09TewQq/+uyCzn2ZGOHNBbsWJqJwCgGIQlmQDy5b6dkWbWeVqbxRqaA+pYIQbqj+
 dQPmkDo1+3NDeUdpbLeIH6q+zAv5Nycir9RdTMQ4xW0oRNGNMkUGFE/RiUy4DpK9m6huDsrh9bl
 zOp88qg8/0DyBC7DOj1FvAKyPZhmf8YTDEHxyK6yjkewfT04lknEW1PFaB4dOunLbog5F0piXe7
 +BOcJr34CNIhKt5w6ABGbFjWZ/PHiqMN4WNkBqRS9bhb5xDr+bwTc/YXAtouFUOJyQBKJ3E015U
 LZjvI/1XV1P//KDkaLcN17ZySQSLAEQOHfU9fCRSy8Mdqxc3KpKlnLFBkncBCgXNyx2w==
X-Google-Smtp-Source: AGHT+IHoeAxVt0AuWhhUsDTjmxXGaTHs8ySg3i9SS+DIkrhT+vbgKe7J+QXpC64qK2Vzx3i2dgGt/Q==
X-Received: by 2002:a17:90b:4acb:b0:34a:8e4b:5b52 with SMTP id
 98e67ed59e1d1-34f68b4ce84mr16936898a91.8.1768241854053; 
 Mon, 12 Jan 2026 10:17:34 -0800 (PST)
Received: from localhost.localdomain ([122.183.54.120])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-34f5f7c4141sm18165365a91.6.2026.01.12.10.17.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jan 2026 10:17:33 -0800 (PST)
From: I Viswanath <viswanathiyyappan@gmail.com>
To: edumazet@google.com, horms@kernel.org, sdf@fomichev.me, kuba@kernel.org,
 andrew+netdev@lunn.ch, pabeni@redhat.com, jasowang@redhat.com,
 eperezma@redhat.com, mst@redhat.com, xuanzhuo@linux.alibaba.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, intel-wired-lan@lists.osuosl.org,
 virtualization@lists.linux.dev, netdev@vger.kernel.org,
 I Viswanath <viswanathiyyappan@gmail.com>
Date: Mon, 12 Jan 2026 23:46:24 +0530
Message-ID: <20260112181626.20117-5-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
References: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 12 Jan 2026 18:18:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768241854; x=1768846654; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UaMWg4vSUFgDqiP4zZzxboikLWW6MxJC8CsR8zCkSA4=;
 b=hulKbDx2BG/X87jR+o2/eExNsgzPsoF3Un3wdPTrdVRWhVBHJPuqQEVIbneN0XxUYz
 kaLaRX2lZgf+ZrbdiqqJjw+Y4RG1ly7xGlfwfXcYeqxvdPwLbi5N2DqvLynuggb+MBkt
 19woXlcImpeXQ7KJ1sD7vHqiwqyzvw77MNfX7dTUQb+PvoFz54sZsvQX7EiJWtTxVJba
 FgEkp0A7mySsbTJSvzEsJC2HTGqqlubJNkBgeHlF8fBw6hLtgrHaxKWMNOJohjC87mdd
 eOCVloDStbQ61gFGRzM4Ctc+xyXB877KYKSc3Fs/+PzWaDKec+mGwdgmaly9Hw+NUB85
 +iEQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=hulKbDx2
Subject: [Intel-wired-lan] [PATCH net-next v8 4/6] 8139cp: Implement
 ndo_write_rx_mode callback
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

Add callback and update the code to use the rx_mode snapshot and
deferred write model

Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
---
 In the old cp_set_rx_mode, cp->lock was protecting access to registers
 at addresses RxConfig, MAR0 and MAR0+4. The lock was probably meant to 
 provide synchronization for cp_set_rx_mode as these registers were 
 accessed exclusively by __cp_set_rx_mode.
 
 drivers/net/ethernet/realtek/8139cp.c | 33 +++++++++++++++------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/realtek/8139cp.c b/drivers/net/ethernet/realtek/8139cp.c
index 5652da8a178c..ab0395640305 100644
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
+static void cp_write_rx_mode(struct net_device *dev)
 {
 	struct cp_private *cp = netdev_priv(dev);
 	u32 mc_filter[2];	/* Multicast hash filter */
+	char *ha_addr;
 	int rx_mode;
+	int ni;
 
 	/* Note: do not reorder, GCC is clever about common statements. */
-	if (dev->flags & IFF_PROMISC) {
+	if (netif_rx_mode_get_cfg(dev, NETIF_RX_MODE_CFG_PROMISC)) {
 		/* Unconditionally log net taps. */
 		rx_mode =
 		    AcceptBroadcast | AcceptMulticast | AcceptMyPhys |
 		    AcceptAllPhys;
 		mc_filter[1] = mc_filter[0] = 0xffffffff;
-	} else if ((netdev_mc_count(dev) > multicast_filter_limit) ||
-		   (dev->flags & IFF_ALLMULTI)) {
+	} else if ((netif_rx_mode_mc_count(dev) > multicast_filter_limit) ||
+		   netif_rx_mode_get_cfg(dev, NETIF_RX_MODE_CFG_ALLMULTI)) {
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
+	netif_rx_mode_set_flag(dev, NETIF_RX_MODE_UC_SKIP, true);
+	netif_rx_mode_set_flag(dev, NETIF_RX_MODE_MC_SKIP, promisc | allmulti);
+
+	netif_rx_mode_set_cfg(dev, NETIF_RX_MODE_CFG_ALLMULTI, allmulti);
+	netif_rx_mode_set_cfg(dev, NETIF_RX_MODE_CFG_PROMISC, promisc);
 }
 
 static void __cp_get_stats(struct cp_private *cp)
@@ -1040,7 +1042,7 @@ static void cp_init_hw (struct cp_private *cp)
 	cp_start_hw(cp);
 	cpw8(TxThresh, 0x06); /* XXX convert magic num to a constant */
 
-	__cp_set_rx_mode(dev);
+	netif_schedule_rx_mode_work(dev);
 	cpw32_f (TxConfig, IFG | (TX_DMA_BURST << TxDMAShift));
 
 	cpw8(Config1, cpr8(Config1) | DriverLoaded | PMEnable);
@@ -1262,7 +1264,7 @@ static void cp_tx_timeout(struct net_device *dev, unsigned int txqueue)
 	cp_clean_rings(cp);
 	cp_init_rings(cp);
 	cp_start_hw(cp);
-	__cp_set_rx_mode(dev);
+	netif_schedule_rx_mode_work(dev);
 	cpw16_f(IntrMask, cp_norx_intr_mask);
 
 	netif_wake_queue(dev);
@@ -1870,6 +1872,7 @@ static const struct net_device_ops cp_netdev_ops = {
 	.ndo_validate_addr	= eth_validate_addr,
 	.ndo_set_mac_address 	= cp_set_mac_address,
 	.ndo_set_rx_mode	= cp_set_rx_mode,
+	.ndo_write_rx_mode	= cp_write_rx_mode,
 	.ndo_get_stats		= cp_get_stats,
 	.ndo_eth_ioctl		= cp_ioctl,
 	.ndo_start_xmit		= cp_start_xmit,
-- 
2.47.3

