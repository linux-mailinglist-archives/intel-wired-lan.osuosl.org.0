Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A23D14B84
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 19:18:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08F6560DC5;
	Mon, 12 Jan 2026 18:18:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id goIzqEf4J8XY; Mon, 12 Jan 2026 18:18:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCE6760D97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768241929;
	bh=4iPYz0c2/YOE9HPEJLTZDgF+3tXabqT+BOwl+/nVPFU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jR0+HNYEAOmeYy7YbH5SriNFQPuKDVnLWVaFTSJLCjPbp8w2fNneg2htEt4pA+kd4
	 H0szNE1tw2i4ozViQ6krhDcKuk29o9NqsFvSs5Og/ZYuEVk3GyjjEd7X6SJV0cG96r
	 6eBU4K9FglicG1Uq8QbyDVZpRNvM0VVTALhtbr0pPx9uHpzKps6BPI7+OH3EmUK3Qu
	 H5cUh3lK90llFN1ylbg6xjUUPhrk+G+7hrfXx5J2AIDL0q+pi+VuFGhUwcIEmHKH/H
	 0MCvdqhEFhsW+lHPeX06AXUVAm2tL48HqpPg5luoaiWIMvzB6wlikBOzvKBFzJZZLI
	 16+RT6lbdnoYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCE6760D97;
	Mon, 12 Jan 2026 18:18:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0CCEA18D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E802A4087B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Igxyxj41wR01 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 18:17:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52a; helo=mail-pg1-x52a.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 457BE402A7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 457BE402A7
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 457BE402A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:52 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id
 41be03b00d2f7-c54f700b5b1so2284060a12.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 10:17:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768241871; x=1768846671;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=4iPYz0c2/YOE9HPEJLTZDgF+3tXabqT+BOwl+/nVPFU=;
 b=IArsbXpZbbflewfQ+qPre7d+PH60EC4Dd4UtxHhuD0ku/eC1aczhJYWj0wHPJbAMa2
 9RaDeVDtzEgBlX/McaFP/FFLj0prCfUF+h1BUQ4PgqwqluLcKnkGNCGpZXl3iDMIgMub
 7U9/tzQIHkDJNpW0HNQ90Q7/A1xJ26JBTp+2Hw3bmWZYwB9/ljPXaRgkOuGCm8Oo2zYH
 I2oHD2/gT97qAAD6ry3i3TAS4qEEHxgpxasRPd8irqQ1b3LSLzFZzA78ddA+A4SQpAZ6
 gNGz1LlZSS2G350pzZ2PViG3iRw5tnvsEhneUkFZYg4/Hlk+i7Wu5IhSCK1mbiu6hvRp
 4FiA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXFKPZkQ/Rp54vzPlmfBXAUuU0/qJMCAwjTrlxEEUMKiRhWc1ZOGeP+ttHSXcH+pJq3gdR4r40uEVnUJnix+w4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyQBUwq5GLUAqv5n934QvHgFxQs9vvEmPyw8kBCl7luSt6Jy14E
 Y12PHYnCnRInY4Mgjbto4lDyhVLnU/IToDuFW/eui/htsV8m0z0M4Iok
X-Gm-Gg: AY/fxX6gakWjFnSwQl7ZocqjQ8uDp1NKdsZWNjsMsrMgScp0UGuac7PGwGdN0Q3E28k
 H7NTIdg7ioeaCBy62cEpcilbAPvRceJ757IS/Xjd78RvB/UoMkFxDF+wkSfYKHiRqEsVT6zw+5W
 57xWh5745tDt9suQNO0uX414iGmKce7PPsjZZ/ZuC9v860h1M3FnkqCwNvFXuQjGgjAoIPPI9A/
 uMC5HsbcRGjF3XHK3usgDttCtdgB4NJPWc2YW0b3M+BqYRlyv1Bpa3gDVAZ1gX8cONlhtN1TdTt
 qt4UowsQm3kjOuevZgkGKkNnVWARVLEusuD7f6S6uy4YZbFe/1ZHCrKUXzBhmShVYEYqQAAraQO
 QkizMRsYPSlDxYuwZD/tQo2Ry2o84n0U242FGlR765H9q0Rascbjd3NiuS+sBH1mA/3SmdDY1XQ
 S97XbPIg5Vpu7A094BEYxf1q8IIXh00j32OaxCMMvZHicwD+AVnFpbJ+XNqms7TshRzQ==
X-Google-Smtp-Source: AGHT+IFiK1jweRQzBOm3ZEpB+UiR7srhpNL+qg9Y/k0eatbaDQCE66uWR/fEIuhnV//+2MGMla7rxw==
X-Received: by 2002:a17:90b:5628:b0:34a:8c77:d386 with SMTP id
 98e67ed59e1d1-34f68c91bbemr16740424a91.9.1768241871384; 
 Mon, 12 Jan 2026 10:17:51 -0800 (PST)
Received: from localhost.localdomain ([122.183.54.120])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-34f5f7c4141sm18165365a91.6.2026.01.12.10.17.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jan 2026 10:17:50 -0800 (PST)
From: I Viswanath <viswanathiyyappan@gmail.com>
To: edumazet@google.com, horms@kernel.org, sdf@fomichev.me, kuba@kernel.org,
 andrew+netdev@lunn.ch, pabeni@redhat.com, jasowang@redhat.com,
 eperezma@redhat.com, mst@redhat.com, xuanzhuo@linux.alibaba.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, intel-wired-lan@lists.osuosl.org,
 virtualization@lists.linux.dev, netdev@vger.kernel.org,
 I Viswanath <viswanathiyyappan@gmail.com>
Date: Mon, 12 Jan 2026 23:46:26 +0530
Message-ID: <20260112181626.20117-7-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
References: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 12 Jan 2026 18:18:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768241871; x=1768846671; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4iPYz0c2/YOE9HPEJLTZDgF+3tXabqT+BOwl+/nVPFU=;
 b=dqvIiO7spT/zyKbJd5Divv/QKzMIhfV8YCT4TzHpoB7MS1T0+mnXnfkFEWdoo5kVhp
 LNV0j0z4cJP0NeTJy6kEis1wPCINjNDyB1PShSlbTMNoK2i1VsM3d2WnZIT2zV+Exb9S
 msUWuEnztxcPjK1xox+buH9L2UQHTs8vQB5KDfvW14PT5QnGRrbHAoMiK/0Ewnrik3MK
 JWHoNYV7r7Tp76EOOsenOWrTiKdbth9KRpeVmmpDb3iUToJRdvUqMJKiK0QDbKYD6Op4
 KwI1yvdPRKtlXC92ua/S4vRPywT2ovULM+w3iJb2Li2vk/leyM1R06aEbuBFbQTOL/E9
 F8vQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=dqvIiO7s
Subject: [Intel-wired-lan] [PATCH net-next v8 6/6] pcnet32: Implement
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
 This is a very weird driver in that it calls pcnet32_load_multicast to set up
 the mc filter registers instead of the set_rx_mode callback in ndo_open.
 I can't find a single other driver that does that.
 
 Apart from that, I don't think it makes sense for the (now) write_rx_mode 
 callback to call netif_wake_queue(). Correct me if I am wrong here.
 
 drivers/net/ethernet/amd/pcnet32.c | 57 ++++++++++++++++++++++--------
 1 file changed, 43 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/amd/pcnet32.c b/drivers/net/ethernet/amd/pcnet32.c
index 9eaefa0f5e80..8bb0bb3da789 100644
--- a/drivers/net/ethernet/amd/pcnet32.c
+++ b/drivers/net/ethernet/amd/pcnet32.c
@@ -314,8 +314,9 @@ static void pcnet32_tx_timeout(struct net_device *dev, unsigned int txqueue);
 static irqreturn_t pcnet32_interrupt(int, void *);
 static int pcnet32_close(struct net_device *);
 static struct net_device_stats *pcnet32_get_stats(struct net_device *);
-static void pcnet32_load_multicast(struct net_device *dev);
+static void pcnet32_load_multicast(struct net_device *dev, bool is_open);
 static void pcnet32_set_multicast_list(struct net_device *);
+static void pcnet32_write_multicast_list(struct net_device *);
 static int pcnet32_ioctl(struct net_device *, struct ifreq *, int);
 static void pcnet32_watchdog(struct timer_list *);
 static int mdio_read(struct net_device *dev, int phy_id, int reg_num);
@@ -1580,6 +1581,7 @@ static const struct net_device_ops pcnet32_netdev_ops = {
 	.ndo_tx_timeout		= pcnet32_tx_timeout,
 	.ndo_get_stats		= pcnet32_get_stats,
 	.ndo_set_rx_mode	= pcnet32_set_multicast_list,
+	.ndo_write_rx_mode	= pcnet32_write_multicast_list,
 	.ndo_eth_ioctl		= pcnet32_ioctl,
 	.ndo_set_mac_address 	= eth_mac_addr,
 	.ndo_validate_addr	= eth_validate_addr,
@@ -2264,7 +2266,7 @@ static int pcnet32_open(struct net_device *dev)
 
 	lp->init_block->mode =
 	    cpu_to_le16((lp->options & PCNET32_PORT_PORTSEL) << 7);
-	pcnet32_load_multicast(dev);
+	pcnet32_load_multicast(dev, true);
 
 	if (pcnet32_init_ring(dev)) {
 		rc = -ENOMEM;
@@ -2680,18 +2682,26 @@ static struct net_device_stats *pcnet32_get_stats(struct net_device *dev)
 }
 
 /* taken from the sunlance driver, which it took from the depca driver */
-static void pcnet32_load_multicast(struct net_device *dev)
+static void pcnet32_load_multicast(struct net_device *dev, bool is_open)
 {
 	struct pcnet32_private *lp = netdev_priv(dev);
 	volatile struct pcnet32_init_block *ib = lp->init_block;
 	volatile __le16 *mcast_table = (__le16 *)ib->filter;
 	struct netdev_hw_addr *ha;
+	char *ha_addr;
+	bool allmulti;
 	unsigned long ioaddr = dev->base_addr;
-	int i;
+	int i, ni;
 	u32 crc;
 
+	if (is_open)
+		allmulti = dev->flags & IFF_ALLMULTI;
+	else
+		allmulti = netif_rx_mode_get_cfg(dev,
+						 NETIF_RX_MODE_CFG_ALLMULTI);
+
 	/* set all multicast bits */
-	if (dev->flags & IFF_ALLMULTI) {
+	if (allmulti) {
 		ib->filter[0] = cpu_to_le32(~0U);
 		ib->filter[1] = cpu_to_le32(~0U);
 		lp->a->write_csr(ioaddr, PCNET32_MC_FILTER, 0xffff);
@@ -2705,20 +2715,40 @@ static void pcnet32_load_multicast(struct net_device *dev)
 	ib->filter[1] = 0;
 
 	/* Add addresses */
-	netdev_for_each_mc_addr(ha, dev) {
-		crc = ether_crc_le(6, ha->addr);
-		crc = crc >> 26;
-		mcast_table[crc >> 4] |= cpu_to_le16(1 << (crc & 0xf));
-	}
+	if (is_open)
+		netdev_for_each_mc_addr(ha, dev) {
+			crc = ether_crc_le(6, ha->addr);
+			crc = crc >> 26;
+			mcast_table[crc >> 4] |= cpu_to_le16(1 << (crc & 0xf));
+		}
+	else
+		netif_rx_mode_for_each_mc_addr(ha_addr, dev, ni) {
+			crc = ether_crc_le(6, ha_addr);
+			crc = crc >> 26;
+			mcast_table[crc >> 4] |= cpu_to_le16(1 << (crc & 0xf));
+		}
+
 	for (i = 0; i < 4; i++)
 		lp->a->write_csr(ioaddr, PCNET32_MC_FILTER + i,
 				le16_to_cpu(mcast_table[i]));
 }
 
+static void pcnet32_set_multicast_list(struct net_device *dev)
+{
+	bool allmulti = !!(dev->flags & IFF_ALLMULTI);
+	bool promisc = !!(dev->flags & IFF_PROMISC);
+
+	netif_rx_mode_set_flag(dev, NETIF_RX_MODE_UC_SKIP, true);
+	netif_rx_mode_set_flag(dev, NETIF_RX_MODE_MC_SKIP, promisc | allmulti);
+
+	netif_rx_mode_set_cfg(dev, NETIF_RX_MODE_CFG_ALLMULTI, allmulti);
+	netif_rx_mode_set_cfg(dev, NETIF_RX_MODE_CFG_PROMISC, promisc);
+}
+
 /*
  * Set or clear the multicast filter for this adaptor.
  */
-static void pcnet32_set_multicast_list(struct net_device *dev)
+static void pcnet32_write_multicast_list(struct net_device *dev)
 {
 	unsigned long ioaddr = dev->base_addr, flags;
 	struct pcnet32_private *lp = netdev_priv(dev);
@@ -2727,7 +2757,7 @@ static void pcnet32_set_multicast_list(struct net_device *dev)
 	spin_lock_irqsave(&lp->lock, flags);
 	suspended = pcnet32_suspend(dev, &flags, 0);
 	csr15 = lp->a->read_csr(ioaddr, CSR15);
-	if (dev->flags & IFF_PROMISC) {
+	if (netif_rx_mode_get_cfg(dev, NETIF_RX_MODE_CFG_PROMISC)) {
 		/* Log any net taps. */
 		netif_info(lp, hw, dev, "Promiscuous mode enabled\n");
 		lp->init_block->mode =
@@ -2738,7 +2768,7 @@ static void pcnet32_set_multicast_list(struct net_device *dev)
 		lp->init_block->mode =
 		    cpu_to_le16((lp->options & PCNET32_PORT_PORTSEL) << 7);
 		lp->a->write_csr(ioaddr, CSR15, csr15 & 0x7fff);
-		pcnet32_load_multicast(dev);
+		pcnet32_load_multicast(dev, false);
 	}
 
 	if (suspended) {
@@ -2746,7 +2776,6 @@ static void pcnet32_set_multicast_list(struct net_device *dev)
 	} else {
 		lp->a->write_csr(ioaddr, CSR0, CSR0_STOP);
 		pcnet32_restart(dev, CSR0_NORMAL);
-		netif_wake_queue(dev);
 	}
 
 	spin_unlock_irqrestore(&lp->lock, flags);
-- 
2.47.3

