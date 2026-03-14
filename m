Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBuHKCGptWmw3AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C37528E764
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0915482311;
	Sat, 14 Mar 2026 18:29:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UY0Thn68jjic; Sat, 14 Mar 2026 18:29:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C9B98230B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773512991;
	bh=+JSH/0/b9giaRQVQnVF9Hnbf5bM9rYVcnC9nwZ0R2/U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gjJqLIAH8P+eeoIbCYVTPVIDtbv7GNJYbA0aPpwpqatkjimO+VwM7N7CWidrcaQr+
	 VipUETM8v0QonG8AI60b1AOtHmZ7qgYTp+DZJPyPvX404BPsOTbZb8UNbdB3xATKWP
	 8yCWSHMFil7IbDEcS76JkFXZBPkq+ll5jiSuRNmJ6TcDdpzgiqRdVinHu2zPi9qZ4v
	 K0NsGC5cOgAejlaiH6aP8wJ0Va3Cq3IfV39yfyl0IRF+iVrqR0Dt0LxQdMt+W4B2l9
	 hiyiCsFOKE+HNqDbSvXh3NsL1t9r/HVb4WNGKG3mtawVnsHGMIh7KpDCbnK3I59OmO
	 2OK+wERNDnAZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C9B98230B;
	Sat, 14 Mar 2026 18:29:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C40741B4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A9F83413CA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rq4StxLJMmkn for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Mar 2026 18:29:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0032D40F74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0032D40F74
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0032D40F74
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:48 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-2a7a9b8ed69so40184545ad.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 11:29:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773512988; x=1774117788;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=+JSH/0/b9giaRQVQnVF9Hnbf5bM9rYVcnC9nwZ0R2/U=;
 b=KC+uT2yCJk2p4BNqEOIedHe8M5e4Nuh2Q0kA9VAJX2Qu5gD5XEIlbpVXM1t5M3jt4F
 Ig97wPBSHmbuHOj481BmFlPLN0IxwMLUkQITlD1iSgeQEe3P+C1xig0DWKQTb5qQKcSr
 fpQFh8iG6YEYe9gB+0f9noLdU38jfcdNuBc+nL94fKbMsN7nx54b7iO1dNy87pCa1lfH
 rD9KtXtAInkoLBKdURL8+M4atViV1TYzGx+SxXfFhU9LeG1u9mDqbwVdY69W+PbQ5rOZ
 zVn8jAnsW5kSD0IGY+6a9+Z4T2nubUDe8O3PXlQKWEFqzd3bW7kfU+qOW+BiDMezv02o
 l/Aw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVA8vkQdreoJFupCeQul7I+uiGdsi2f2sneKcHIstg9GDdZkXKegzDFVTFbvofKLNbK7aX8t7okOPbTM93txzg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxkGzfdPraNX7uBpXQuMev3HeWyuLFVhENVyeStvFaI3lqyTHUs
 SBqgcUtfGlJ6+MsT7GHqvtVP16j4qyB6CpNSRh6s4h9snBbG25S7PxTI
X-Gm-Gg: ATEYQzyOXRcIGhjYRifBYUrazjPx6w+R82dcHHmRrGcLozSMfeHfw++93MMiMstPbZ3
 GY/AZXtGDiPWzUzKjZgmi0F1Lwhv0W1r9JAFC7bR4dExRmf7D+tN9NmEbKBH08gxhH1/SZuot4F
 //1/27a4sgh3mEdH9SXRom7QjAOwRyQjcWCVFlYQnN4DQfI3fm9FH2UEH9T51jSkWn1MAW7mgo7
 6TO1XIyTLUJu9IV9S0i3p+fO2NfU951IR8HWyK0F0TfxnGvSuwD9HiNz9Wwj37tlopYmmGmjsPV
 jUwXkUZtqyOr9z2Tpz4rQz2DPVBCN8K+68X6pfRLbbejBbb7QhIBCs0Qb3/cyPzSFBAzUHdAiRf
 5717OrLWIROhZk/fZQkROCVqUHTPhBc5fxQOm6lSK+sc0LT3jXlj6yU3GPY/4gYfwJbxukyG/nZ
 vFtLcUYbntFHKaXPDXkycQSnhJxyJ5wB+z9XYaUpftOYC+kfvU4RcBMFXZKWryfBjFIoPatXdUJ
 WRYeQ==
X-Received: by 2002:a17:903:90f:b0:2ae:59d3:27f8 with SMTP id
 d9443c01a7336-2aeca999738mr72086855ad.19.1773512988217; 
 Sat, 14 Mar 2026 11:29:48 -0700 (PDT)
Received: from localhost.localdomain ([122.168.66.151])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2aece62c581sm77673525ad.33.2026.03.14.11.29.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2026 11:29:47 -0700 (PDT)
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
Date: Sat, 14 Mar 2026 23:58:09 +0530
Message-ID: <20260314182809.362808-8-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773512988; x=1774117788; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+JSH/0/b9giaRQVQnVF9Hnbf5bM9rYVcnC9nwZ0R2/U=;
 b=T0hCsky1jCTCDycz2VYr1LP6+sEncOOXlTPkoR4M5AjwDLu3ejNBd4rei/N2d40jbj
 Axy4MekB8xOQUdgK7H/SKJxwbm4XUxv6OI2fR3RPSRMUWA+z3d6sS6ewSL6Vq2XHPsgV
 lffDRutYG3dsf6iLvyaxPFOBUUbULMSGdTJNHeTnQ869D7FhSdp2UoNJCWqWZc9I+h3K
 qM0iJxEbt5exlu0liSQqtKg7WxXVxKqgMe0jQ0FzYdlTcAlCF0F7xT1Maup7P5AHytfZ
 Z2Y6/9XkMD8YHjBsCDZ0KH36liDHbMLwD4B3cJ6DCkepYjYeYxgsfAzAoJd5VGwOH5mi
 a8qQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=T0hCsky1
Subject: [Intel-wired-lan] [PATCH net-next v9 7/7] pcnet32: Implement
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:stfomichev@gmail.com,m:horms@kernel.org,m:edumazet@google.com,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:kuba@kernel.org,m:davem@davemloft.net,m:eperezma@redhat.com,m:xuanzhuo@linux.alibaba.com,m:jasowang@redhat.com,m:mst@redhat.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:ronak.doshi@broadcom.com,m:pcnet32@frontier.com,m:bcm-kernel-feedback-list@broadcom.com,m:netdev@vger.kernel.org,m:virtualization@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:viswanathiyyappan@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,google.com,redhat.com,lunn.ch,davemloft.net,linux.alibaba.com,intel.com,broadcom.com,frontier.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[viswanathiyyappan@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[broadcom.com,vger.kernel.org,lists.linux.dev,lists.osuosl.org,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5C37528E764
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Implement the ndo_set_rx_mode_async callback and update
the driver to use the snapshot/commit model for RX mode update.

Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
---
 
There are no calls to netif_set_rx_mode in pcnet32
 
 drivers/net/ethernet/amd/pcnet32.c | 65 ++++++++++++++++++++++++------
 1 file changed, 53 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/amd/pcnet32.c b/drivers/net/ethernet/amd/pcnet32.c
index 911808ab13a7..d5ad96985d68 100644
--- a/drivers/net/ethernet/amd/pcnet32.c
+++ b/drivers/net/ethernet/amd/pcnet32.c
@@ -314,8 +314,9 @@ static void pcnet32_tx_timeout(struct net_device *dev, unsigned int txqueue);
 static irqreturn_t pcnet32_interrupt(int, void *);
 static int pcnet32_close(struct net_device *);
 static struct net_device_stats *pcnet32_get_stats(struct net_device *);
-static void pcnet32_load_multicast(struct net_device *dev);
+static void pcnet32_load_multicast(struct net_device *dev, bool is_open);
 static void pcnet32_set_multicast_list(struct net_device *);
+static void pcnet32_set_multicast_list_async(struct net_device *);
 static int pcnet32_ioctl(struct net_device *, struct ifreq *, int);
 static void pcnet32_watchdog(struct timer_list *);
 static int mdio_read(struct net_device *dev, int phy_id, int reg_num);
@@ -1580,6 +1581,7 @@ static const struct net_device_ops pcnet32_netdev_ops = {
 	.ndo_tx_timeout		= pcnet32_tx_timeout,
 	.ndo_get_stats		= pcnet32_get_stats,
 	.ndo_set_rx_mode	= pcnet32_set_multicast_list,
+	.ndo_set_rx_mode_async	= pcnet32_set_multicast_list_async,
 	.ndo_eth_ioctl		= pcnet32_ioctl,
 	.ndo_set_mac_address 	= eth_mac_addr,
 	.ndo_validate_addr	= eth_validate_addr,
@@ -2260,7 +2262,7 @@ static int pcnet32_open(struct net_device *dev)
 
 	lp->init_block->mode =
 	    cpu_to_le16((lp->options & PCNET32_PORT_PORTSEL) << 7);
-	pcnet32_load_multicast(dev);
+	pcnet32_load_multicast(dev, true);
 
 	if (pcnet32_init_ring(dev)) {
 		rc = -ENOMEM;
@@ -2676,18 +2678,26 @@ static struct net_device_stats *pcnet32_get_stats(struct net_device *dev)
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
+		allmulti = netif_get_rx_mode_cfg(dev,
+						 NETIF_RX_MODE_CFG_ALLMULTI);
+
 	/* set all multicast bits */
-	if (dev->flags & IFF_ALLMULTI) {
+	if (allmulti) {
 		ib->filter[0] = cpu_to_le32(~0U);
 		ib->filter[1] = cpu_to_le32(~0U);
 		lp->a->write_csr(ioaddr, PCNET32_MC_FILTER, 0xffff);
@@ -2701,20 +2711,41 @@ static void pcnet32_load_multicast(struct net_device *dev)
 	ib->filter[1] = 0;
 
 	/* Add addresses */
-	netdev_for_each_mc_addr(ha, dev) {
-		crc = ether_crc_le(6, ha->addr);
-		crc = crc >> 26;
-		mcast_table[crc >> 4] |= cpu_to_le16(1 << (crc & 0xf));
+	if (is_open) {
+		netdev_for_each_mc_addr(ha, dev) {
+			crc = ether_crc_le(6, ha->addr);
+			crc = crc >> 26;
+			mcast_table[crc >> 4] |= cpu_to_le16(1 << (crc & 0xf));
+		}
+	} else {
+		netif_rx_mode_for_each_mc_addr(ha_addr, dev, ni) {
+			crc = ether_crc_le(6, ha_addr);
+			crc = crc >> 26;
+			mcast_table[crc >> 4] |= cpu_to_le16(1 << (crc & 0xf));
+		}
 	}
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
+	netif_set_rx_mode_flag(dev, NETIF_RX_MODE_UC_SKIP, true);
+	netif_set_rx_mode_flag(dev, NETIF_RX_MODE_MC_SKIP, promisc | allmulti);
+
+	netif_set_rx_mode_cfg(dev, NETIF_RX_MODE_CFG_ALLMULTI, allmulti);
+	netif_set_rx_mode_cfg(dev, NETIF_RX_MODE_CFG_PROMISC, promisc);
+}
+
 /*
  * Set or clear the multicast filter for this adaptor.
  */
-static void pcnet32_set_multicast_list(struct net_device *dev)
+static void pcnet32_set_multicast_list_async(struct net_device *dev)
 {
 	unsigned long ioaddr = dev->base_addr, flags;
 	struct pcnet32_private *lp = netdev_priv(dev);
@@ -2723,7 +2754,7 @@ static void pcnet32_set_multicast_list(struct net_device *dev)
 	spin_lock_irqsave(&lp->lock, flags);
 	suspended = pcnet32_suspend(dev, &flags, 0);
 	csr15 = lp->a->read_csr(ioaddr, CSR15);
-	if (dev->flags & IFF_PROMISC) {
+	if (netif_get_rx_mode_cfg(dev, NETIF_RX_MODE_CFG_PROMISC)) {
 		/* Log any net taps. */
 		netif_info(lp, hw, dev, "Promiscuous mode enabled\n");
 		lp->init_block->mode =
@@ -2734,7 +2765,7 @@ static void pcnet32_set_multicast_list(struct net_device *dev)
 		lp->init_block->mode =
 		    cpu_to_le16((lp->options & PCNET32_PORT_PORTSEL) << 7);
 		lp->a->write_csr(ioaddr, CSR15, csr15 & 0x7fff);
-		pcnet32_load_multicast(dev);
+		pcnet32_load_multicast(dev, false);
 	}
 
 	if (suspended) {
@@ -2922,6 +2953,7 @@ static int __maybe_unused pcnet32_pm_suspend(struct device *device_d)
 		pcnet32_close(dev);
 	}
 
+	netif_disable_async_ops(dev);
 	return 0;
 }
 
@@ -2929,6 +2961,7 @@ static int __maybe_unused pcnet32_pm_resume(struct device *device_d)
 {
 	struct net_device *dev = dev_get_drvdata(device_d);
 
+	netif_enable_async_ops(dev);
 	if (netif_running(dev)) {
 		pcnet32_open(dev);
 		netif_device_attach(dev);
@@ -2937,6 +2970,13 @@ static int __maybe_unused pcnet32_pm_resume(struct device *device_d)
 	return 0;
 }
 
+static void pcnet32_shutdown(struct pci_dev *pdev)
+{
+	struct net_device *dev = pci_get_drvdata(pdev);
+
+	netif_disable_async_ops(dev);
+}
+
 static void pcnet32_remove_one(struct pci_dev *pdev)
 {
 	struct net_device *dev = pci_get_drvdata(pdev);
@@ -2964,6 +3004,7 @@ static struct pci_driver pcnet32_driver = {
 	.driver = {
 		.pm = &pcnet32_pm_ops,
 	},
+	.shutdown = pcnet32_shutdown,
 };
 
 /* An additional parameter that may be passed in... */
-- 
2.47.3

