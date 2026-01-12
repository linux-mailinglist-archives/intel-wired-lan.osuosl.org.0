Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57267D14B7B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 19:18:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8BA460D96;
	Mon, 12 Jan 2026 18:18:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1zzK5K7EnApk; Mon, 12 Jan 2026 18:18:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1ED7A60D9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768241928;
	bh=YsXS6L+T4eWxoCFRdBnUQMJP/+ral8MRAKD6IFiqy1I=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K6UQtg454N49xtf5rVSGeUpDu+0HMPHgujQxS+BM3Ij7YWn93rkwf3K66jpmnpYME
	 unUUqyFDJPHyjtMhHE43sr0CywDFlX5dnIFvrDnNuj9rz0d0Y65HyPnSTCpmyec3FW
	 oPTHpodyo/wdsbvd9d1OLmR2F+I0ST00AlhOM7Yg71/qcS1JR/ptZXqSqSv7Ma1slW
	 FbI5p1gsczKjVMOKrFkBIKUx62rbYyxw7CMOOvl2KyuB818Bo4K/kc8dJYOpFRavSw
	 UW/oABiAkZTu4tG6aKrEny98Wx8FPdzVqwkcA0HHNBvYKlO3pf43w6ExiwCxHuDHLT
	 3P97evEM4PybA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1ED7A60D9A;
	Mon, 12 Jan 2026 18:18:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8076018D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7230F60D78
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k97uYXeywYyq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 18:17:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1030; helo=mail-pj1-x1030.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B95BA60B58
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B95BA60B58
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B95BA60B58
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 18:17:26 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-34ccb7ad166so3709316a91.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 10:17:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768241846; x=1768846646;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=YsXS6L+T4eWxoCFRdBnUQMJP/+ral8MRAKD6IFiqy1I=;
 b=cLA48Ubp2gGgGfmnR2Yh8yCujxi+vMYbgd85ytZDo0AnU8KUv14l9KSimdTgd5VQRp
 nJCltxEI/X7XfjfJ/lBCfoi8et8d/FmxgN5mSVLWalyDhG99k0UgsbijvjDyR/FxaI0a
 3B51bKnTbzjkB5EshUTsO041FmXs3uE2G6QpNjuT+KpJzSoDwpia4SR+RZGu2N8HlbuR
 LxLQI3H5aFwCgP98reIrkzH9N5noy1zXaIY5w1d/qAMUXmnFDgwJjAhjJB5BppHWKdAy
 2Fi9QNMolOQI117Za408L3+/W9AY100c3ddQBGeX7Fei4xpDDklJaFOAnTASO/tFX3Az
 u+5A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVwK/XC5KHlq24HQOPyocmIVPVH0iJsNGjd9BDtOwqyaKgKvKN6QKRFWQWt64uO6igPtld4Ukc+nE3iWtpvJ4o=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwtuKqj23F+Tm4qw0bsi4HnACvvvT5Fzo/R/zivAI+u5+2q2eBU
 YQl+CNdi61Vp/bo/wT9NM6Zp4fwlvNirLBOS5/IvIKVGVq+IoJANxTr7
X-Gm-Gg: AY/fxX7tPmJvnJ3vt8QX5GfSMd+jpSzE2V/V76+jmZOZJVSKQ6wjlQYMw4yXSe3NrQW
 tZ73vCrc5okrz4SkkzLxv4LPagWOGkY+zuJFTBKiQzib1wpP0kczHcSvcvaBmXFZAQah0y0mSSF
 alQ8WFUb1/0iTkHyn9psxxxfRdooo+3/CghHi4TvmSAJ+GQ2Q6gWmPUvN24Gtk9m4HF4j34tLew
 eSRDQtqzTOuWPWpGajKrbksW1B69e2vstKJNR7OcY8bsuAHaZcVgSrVxJkcR9pJ/EzL2WztGwdb
 1vGYW6a93R6jhSeZVr2LjNUFt0MXGAHkNonmAo6Ajqy/HGAm/tElwyj/FsOkL4rgh0i1gAwYjuX
 KRkVCYJ0FVzH/3CsJWJYIrA0CzDsz/FDU90zFhfsW4Kcw1FrscL0YJKTWeNy9Dmoxc9oCfHcnFd
 HzWVCAdeq4P92UD2936conXQKy1TMg8gGwUawxPkxAjBeDPqqiCT6x3bcFS0i2zMrxUA==
X-Google-Smtp-Source: AGHT+IGuIkRrAnjG6E/2zRE+ar/qUHm3eneYw8JDZqcsw4DJueiT7pf+BtL7KohCktRxTsjaNEWUXg==
X-Received: by 2002:a17:90b:4c09:b0:335:2747:a9b3 with SMTP id
 98e67ed59e1d1-34f68c281a5mr14987512a91.32.1768241845853; 
 Mon, 12 Jan 2026 10:17:25 -0800 (PST)
Received: from localhost.localdomain ([122.183.54.120])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-34f5f7c4141sm18165365a91.6.2026.01.12.10.17.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jan 2026 10:17:25 -0800 (PST)
From: I Viswanath <viswanathiyyappan@gmail.com>
To: edumazet@google.com, horms@kernel.org, sdf@fomichev.me, kuba@kernel.org,
 andrew+netdev@lunn.ch, pabeni@redhat.com, jasowang@redhat.com,
 eperezma@redhat.com, mst@redhat.com, xuanzhuo@linux.alibaba.com,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 ronak.doshi@broadcom.com, pcnet32@frontier.com
Cc: bcm-kernel-feedback-list@broadcom.com, intel-wired-lan@lists.osuosl.org,
 virtualization@lists.linux.dev, netdev@vger.kernel.org,
 I Viswanath <viswanathiyyappan@gmail.com>
Date: Mon, 12 Jan 2026 23:46:23 +0530
Message-ID: <20260112181626.20117-4-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
References: <20260112181626.20117-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 12 Jan 2026 18:18:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768241846; x=1768846646; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YsXS6L+T4eWxoCFRdBnUQMJP/+ral8MRAKD6IFiqy1I=;
 b=MlRmUZVfKiIpuhxpCPxd8Wac0VOgmB5ytp13cFCreX81mKidX2+TnzINGQcPPPDtoH
 /HfSuVa/Umq3Q2udQiwgWU2JZTITM8Jskssg6pR9QJOwnKxxyEIfVor0ghJsRZxQ4Cv2
 TNLr9X7gPSI/0EuKvODjqpj4fQ2Gb44yglDg2l68LJWadb+bILuogk64uLks5FAoZgLl
 dJLZRX5uLT0L4gi4M47bU0iPJCCO8iiNC2dr67sPU6iK0HaTXJZrHKVMxlTNKhFKnnZ/
 ElK1NIKRutAVgwfX7TG+beee0dl6mskhpOHOJHZihEZFX8CRYSpMorzvE9rHzhUAHLI1
 M9mQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=MlRmUZVf
Subject: [Intel-wired-lan] [PATCH net-next v8 3/6] e1000: Implement
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
 The suspend callback was calling the set_rx_mode ndo even when the netif was down.
 Since that wouldn't make sense in the new model, Now, It does that only if netif 
 is not down. Correct me if this is a mistake
 
 drivers/net/ethernet/intel/e1000/e1000_main.c | 59 ++++++++++++-------
 1 file changed, 38 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 7f078ec9c14c..3b0260d502d4 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -99,6 +99,7 @@ static void e1000_clean_tx_ring(struct e1000_adapter *adapter,
 static void e1000_clean_rx_ring(struct e1000_adapter *adapter,
 				struct e1000_rx_ring *rx_ring);
 static void e1000_set_rx_mode(struct net_device *netdev);
+static void e1000_write_rx_mode(struct net_device *netdev);
 static void e1000_update_phy_info_task(struct work_struct *work);
 static void e1000_watchdog(struct work_struct *work);
 static void e1000_82547_tx_fifo_stall_task(struct work_struct *work);
@@ -359,7 +360,7 @@ static void e1000_configure(struct e1000_adapter *adapter)
 	struct net_device *netdev = adapter->netdev;
 	int i;
 
-	e1000_set_rx_mode(netdev);
+	netif_schedule_rx_mode_work(netdev);
 
 	e1000_restore_vlan(adapter);
 	e1000_init_manageability(adapter);
@@ -823,6 +824,7 @@ static const struct net_device_ops e1000_netdev_ops = {
 	.ndo_stop		= e1000_close,
 	.ndo_start_xmit		= e1000_xmit_frame,
 	.ndo_set_rx_mode	= e1000_set_rx_mode,
+	.ndo_write_rx_mode	= e1000_write_rx_mode,
 	.ndo_set_mac_address	= e1000_set_mac,
 	.ndo_tx_timeout		= e1000_tx_timeout,
 	.ndo_change_mtu		= e1000_change_mtu,
@@ -1827,7 +1829,7 @@ static void e1000_setup_rctl(struct e1000_adapter *adapter)
 	/* This is useful for sniffing bad packets. */
 	if (adapter->netdev->features & NETIF_F_RXALL) {
 		/* UPE and MPE will be handled by normal PROMISC logic
-		 * in e1000e_set_rx_mode
+		 * in e1000_write_rx_mode
 		 */
 		rctl |= (E1000_RCTL_SBP | /* Receive bad packets */
 			 E1000_RCTL_BAM | /* RX All Bcast Pkts */
@@ -2222,26 +2224,39 @@ static int e1000_set_mac(struct net_device *netdev, void *p)
 	return 0;
 }
 
+static void e1000_set_rx_mode(struct net_device *netdev)
+{
+	struct e1000_adapter *adapter = netdev_priv(netdev);
+
+	bool allmulti = !!(netdev->flags & IFF_ALLMULTI);
+	bool promisc = !!(netdev->flags & IFF_PROMISC);
+	bool vlan = e1000_vlan_used(adapter);
+
+	netif_rx_mode_set_flag(netdev, NETIF_RX_MODE_UC_SKIP, promisc);
+
+	netif_rx_mode_set_cfg(netdev, NETIF_RX_MODE_CFG_ALLMULTI, allmulti);
+	netif_rx_mode_set_cfg(netdev, NETIF_RX_MODE_CFG_PROMISC, promisc);
+	netif_rx_mode_set_cfg(netdev, NETIF_RX_MODE_CFG_VLAN, vlan);
+}
+
 /**
- * e1000_set_rx_mode - Secondary Unicast, Multicast and Promiscuous mode set
+ * e1000_write_rx_mode - Secondary Unicast, Multicast and Promiscuous mode set
  * @netdev: network interface device structure
  *
- * The set_rx_mode entry point is called whenever the unicast or multicast
- * address lists or the network interface flags are updated. This routine is
- * responsible for configuring the hardware for proper unicast, multicast,
- * promiscuous mode, and all-multi behavior.
+ * This routine is responsible for configuring the hardware for proper unicast,
+ * multicast, promiscuous mode, and all-multi behavior.
  **/
-static void e1000_set_rx_mode(struct net_device *netdev)
+static void e1000_write_rx_mode(struct net_device *netdev)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
-	struct netdev_hw_addr *ha;
 	bool use_uc = false;
 	u32 rctl;
 	u32 hash_value;
-	int i, rar_entries = E1000_RAR_ENTRIES;
+	int i, rar_entries = E1000_RAR_ENTRIES, ni;
 	int mta_reg_count = E1000_NUM_MTA_REGISTERS;
 	u32 *mcarray = kcalloc(mta_reg_count, sizeof(u32), GFP_ATOMIC);
+	char *ha_addr;
 
 	if (!mcarray)
 		return;
@@ -2250,22 +2265,22 @@ static void e1000_set_rx_mode(struct net_device *netdev)
 
 	rctl = er32(RCTL);
 
-	if (netdev->flags & IFF_PROMISC) {
+	if (netif_rx_mode_get_cfg(netdev, NETIF_RX_MODE_CFG_PROMISC)) {
 		rctl |= (E1000_RCTL_UPE | E1000_RCTL_MPE);
 		rctl &= ~E1000_RCTL_VFE;
 	} else {
-		if (netdev->flags & IFF_ALLMULTI)
+		if (netif_rx_mode_get_cfg(netdev, NETIF_RX_MODE_CFG_ALLMULTI))
 			rctl |= E1000_RCTL_MPE;
 		else
 			rctl &= ~E1000_RCTL_MPE;
 		/* Enable VLAN filter if there is a VLAN */
-		if (e1000_vlan_used(adapter))
+		if (netif_rx_mode_get_cfg(netdev, NETIF_RX_MODE_CFG_VLAN))
 			rctl |= E1000_RCTL_VFE;
 	}
 
-	if (netdev_uc_count(netdev) > rar_entries - 1) {
+	if (netif_rx_mode_uc_count(netdev) > rar_entries - 1) {
 		rctl |= E1000_RCTL_UPE;
-	} else if (!(netdev->flags & IFF_PROMISC)) {
+	} else if (!netif_rx_mode_get_cfg(netdev, NETIF_RX_MODE_CFG_PROMISC)) {
 		rctl &= ~E1000_RCTL_UPE;
 		use_uc = true;
 	}
@@ -2286,23 +2301,23 @@ static void e1000_set_rx_mode(struct net_device *netdev)
 	 */
 	i = 1;
 	if (use_uc)
-		netdev_for_each_uc_addr(ha, netdev) {
+		netif_rx_mode_for_each_uc_addr(ha_addr, netdev, ni) {
 			if (i == rar_entries)
 				break;
-			e1000_rar_set(hw, ha->addr, i++);
+			e1000_rar_set(hw, ha_addr, i++);
 		}
 
-	netdev_for_each_mc_addr(ha, netdev) {
+	netif_rx_mode_for_each_mc_addr(ha_addr, netdev, ni) {
 		if (i == rar_entries) {
 			/* load any remaining addresses into the hash table */
 			u32 hash_reg, hash_bit, mta;
-			hash_value = e1000_hash_mc_addr(hw, ha->addr);
+			hash_value = e1000_hash_mc_addr(hw, ha_addr);
 			hash_reg = (hash_value >> 5) & 0x7F;
 			hash_bit = hash_value & 0x1F;
 			mta = (1 << hash_bit);
 			mcarray[hash_reg] |= mta;
 		} else {
-			e1000_rar_set(hw, ha->addr, i++);
+			e1000_rar_set(hw, ha_addr, i++);
 		}
 	}
 
@@ -5094,7 +5109,9 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool *enable_wake)
 
 	if (wufc) {
 		e1000_setup_rctl(adapter);
-		e1000_set_rx_mode(netdev);
+
+		if (netif_running(netdev))
+			netif_schedule_rx_mode_work(netdev);
 
 		rctl = er32(RCTL);
 
-- 
2.47.3

