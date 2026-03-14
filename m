Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJGYMASptWmw3AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5898E28E739
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 075BD413CF;
	Sat, 14 Mar 2026 18:29:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FGKLJiIc0VuK; Sat, 14 Mar 2026 18:29:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58387413D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773512962;
	bh=HcUZRx+vC9EsPoreW0zaJm9GJsT/ODmp1Tzy9ZQGo5g=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NSrT/Tz+JO/pDJlWA0JjCe54fYwuZJJvNhcG1YyQ0bKg2xOgjUuHOHbPNlF4M0kBC
	 +quPLaMSchlUtlZX6SGt6rG/Pb7VEWtOC+0i6hYoXhwGfK99KeD1apgz5STiYOpPt5
	 Ja74PDtrw3I5ofxTTrwx5CVZqLEflbjA13ALj7a7fPW8ewEk9WLQTWcdLq8CKTX6M0
	 GcoDr5mRJOInwmYoslnTxcqZge3vSEKIi1QJs8m0TX06aCtNhPL07u8hT7sim5kjf9
	 HS986vk2rXkbhVLdx7HDIXqH6Klx1Ku4vHUSQ8id41SajJXaSSXnKK04ZKEaLUeI5y
	 Wk7AFdoHpY4Pg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58387413D2;
	Sat, 14 Mar 2026 18:29:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 51E4E1B2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4396660B8A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OXf4seziV8sC for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Mar 2026 18:29:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62b; helo=mail-pl1-x62b.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6F99F60A72
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F99F60A72
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F99F60A72
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:19 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-2b042533de1so3856815ad.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 11:29:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773512959; x=1774117759;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=HcUZRx+vC9EsPoreW0zaJm9GJsT/ODmp1Tzy9ZQGo5g=;
 b=Kj6n4X32t0fPh+5MX8gjBIg9er+lLPTX7rnYbkzEfn+/odzyQFaZWYqc1G+NYUtKIK
 YXFv7zUByTlH1TcdF+NdqKuikh30sm1bWdcpldB8uDF2q22rywsMGT1fwAQXBmOhpzSI
 rKjLAageCArn2uLOUF8hDH+0KOdrB1YE+YmTNwcrAzxCVeLSAaQaGLc45yuxMmjxf5W7
 pAg79yNbbj2wffZPHwLlXCM4zk71jdKVL7mKoxtDmINTpLsNpAHPBdYPkqXYkJapJO7s
 NrgOEI6y4gw1JvNKE2phf7nDN6d4DgbGwAbG01KcrQeKci6slylBnULdVhFcYdsTohh+
 YIPA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWuyn7pkgnVwI5+yw9zctnotkT5VM/6KpVa9+bdRm3Znl/JIwI2ZffQJvBKo+ucy4UdfXfLxf88n42sHtvPtxQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxqmB7U2E9Ovz/YERYoQ+MuOwd+mlL6HJYtbM097Tdl29vtLHKu
 j+vCT8jvjt3xNiZC3X0+Xf9xw0tl9HwcyxTf464NsPx/pWz8HT3Q8n27
X-Gm-Gg: ATEYQzz8A3Y9oULN/HU1O6loUIIYHRhvF6k7LSPVdVJKZoGqDbhgsyHmKiZuOMP5G9Z
 Fw8PA+Ukb+968shiREtKNfTamzEmBdbbEW9Q2yXtAT1rSG43YCgipr+HzUFeqzA9ALG89Atm2Sf
 P+WBcWlpB9sk3IArUnioxVV6FvvBrMZkOZUbzk/FQ/WwZCCSP9p8ZgH86VhKVH7bmdk/MLb7OuH
 4NAQCJlsehFuv+I7VqluKVmPeRgd23MW7HkypEn2kHIq5N1c/vohUb93+lFq8S+YQtkMFiLkLZh
 wwLVd7HMG6sK86xz5wlHZf8Tgpht6XLR5YSMcG16pkC86lx7/z3MtN1ZWWvFYSdKHS3W55v/pxj
 SCaodxn5W1+MPfaxBK91QVh+cgY/g7ktgd7CypySRd/jQJXDJq7FUdSZ02uZxrrTFvkJ109JhRl
 CmlE6lgwTLstI2VqYQThxdX8X9v0TtuxvBVSVD72H+PhHAzdd5Gkllm1eKAAG0Lw/+D3hXkYuhB
 0ixSoKYo17ZJcwl
X-Received: by 2002:a17:903:2283:b0:2ae:c5b2:6a41 with SMTP id
 d9443c01a7336-2aecac84adamr78848905ad.52.1773512958550; 
 Sat, 14 Mar 2026 11:29:18 -0700 (PDT)
Received: from localhost.localdomain ([122.168.66.151])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2aece62c581sm77673525ad.33.2026.03.14.11.29.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2026 11:29:17 -0700 (PDT)
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
Date: Sat, 14 Mar 2026 23:58:06 +0530
Message-ID: <20260314182809.362808-5-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773512959; x=1774117759; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=HcUZRx+vC9EsPoreW0zaJm9GJsT/ODmp1Tzy9ZQGo5g=;
 b=G7bDH75T9ur+QPDQqOMjHPHGLid9T3KqBAojtL+6+v72tcwdTxR7DSGX8MbHXLxVFx
 k4PUtzuVdBFRc4QnBh31ArseCGbVk4lMIMc0hSFmSIos5Z9jWQwCa0AACaiqwi9frKAJ
 Qm1uFhvtA0+dVMAmSwim7xuTQk7NHCvInZ5oM8idU0Q0RE6c6QWa8bTasXA1Jdk9kmuM
 1SAArUJObdq1LT/r/gXfzgPfatp6klG/6m6NDuca0dsgVYPuoftPAr8g/BlYEHqmqhml
 5/jjfJWK/+LCnEqcH2U8uj8z33knABbB5tIZjL9P1B98mvBzcvB39BV71+xSSYo6Lirw
 4/cQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=G7bDH75T
Subject: [Intel-wired-lan] [PATCH net-next v9 4/7] e1000: Implement
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
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
X-Rspamd-Queue-Id: 5898E28E739
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Implement the ndo_set_rx_mode_async callback and update
the driver to use the snapshot/commit model for RX mode update.

Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
---

Call paths involving netif_set_rx_mode in e1000

netif_set_rx_mode
|-- __e1000_shutdown (lock added)
|
`-- e1000_configure
    |-- e1000_open (ndo_open, takes lock)
    |
    `-- e1000_up
        |-- e1000_reinit_locked
        |   |-- e1000_set_features (ndo_set_features, takes lock)
        |   |-- e1000_reset_task (ethtool callback, takes lock)
        |   |-- e1000_mii_ioctl
        |   |   `-- e1000_ioctl (ndo_do_ioctl, takes lock)
        |   `-- e1000_nway_reset (ethtool callback, takes lock)
        |
        |-- e1000_change_mtu (ndo_change_mtu, takes lock)
        |-- e1000_resume (lock added)
        |-- e1000_io_resume (lock added)
        |
        |-- e1000_set_link_ksettings (ethtool callback, takes lock)
        |-- e1000_set_pauseparam (ethtool callback, takes lock)
        `-- e1000_set_ringparam (ethtool callback, takes lock)

 drivers/net/ethernet/intel/e1000/e1000_main.c | 77 ++++++++++++++-----
 1 file changed, 59 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index 9b09eb144b81..ec25b41c63b7 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -99,6 +99,7 @@ static void e1000_clean_tx_ring(struct e1000_adapter *adapter,
 static void e1000_clean_rx_ring(struct e1000_adapter *adapter,
 				struct e1000_rx_ring *rx_ring);
 static void e1000_set_rx_mode(struct net_device *netdev);
+static void e1000_set_rx_mode_async(struct net_device *netdev);
 static void e1000_update_phy_info_task(struct work_struct *work);
 static void e1000_watchdog(struct work_struct *work);
 static void e1000_82547_tx_fifo_stall_task(struct work_struct *work);
@@ -359,7 +360,7 @@ static void e1000_configure(struct e1000_adapter *adapter)
 	struct net_device *netdev = adapter->netdev;
 	int i;
 
-	e1000_set_rx_mode(netdev);
+	netif_set_rx_mode(netdev);
 
 	e1000_restore_vlan(adapter);
 	e1000_init_manageability(adapter);
@@ -823,6 +824,7 @@ static const struct net_device_ops e1000_netdev_ops = {
 	.ndo_stop		= e1000_close,
 	.ndo_start_xmit		= e1000_xmit_frame,
 	.ndo_set_rx_mode	= e1000_set_rx_mode,
+	.ndo_set_rx_mode_async	= e1000_set_rx_mode_async,
 	.ndo_set_mac_address	= e1000_set_mac,
 	.ndo_tx_timeout		= e1000_tx_timeout,
 	.ndo_change_mtu		= e1000_change_mtu,
@@ -2223,23 +2225,44 @@ static int e1000_set_mac(struct net_device *netdev, void *p)
 }
 
 /**
- * e1000_set_rx_mode - Secondary Unicast, Multicast and Promiscuous mode set
+ * e1000_set_rx_mode - Secondary Unicast, Multicast and Promiscuous mode
+ * config.
  * @netdev: network interface device structure
  *
  * The set_rx_mode entry point is called whenever the unicast or multicast
  * address lists or the network interface flags are updated. This routine is
- * responsible for configuring the hardware for proper unicast, multicast,
- * promiscuous mode, and all-multi behavior.
+ * responsible for preparing the rx mode config and scheduling the rx_mode
+ * work which invokes the set_rx_mode_async callback.
  **/
 static void e1000_set_rx_mode(struct net_device *netdev)
+{
+	bool allmulti = !!(netdev->flags & IFF_ALLMULTI);
+	bool promisc = !!(netdev->flags & IFF_PROMISC);
+
+	netif_set_rx_mode_flag(netdev, NETIF_RX_MODE_UC_SKIP, promisc);
+
+	netif_set_rx_mode_cfg(netdev, NETIF_RX_MODE_CFG_ALLMULTI, allmulti);
+	netif_set_rx_mode_cfg(netdev, NETIF_RX_MODE_CFG_PROMISC, promisc);
+}
+
+/**
+ * e1000_set_rx_mode_async - Secondary Unicast, Multicast and Promiscuous mode
+ * confirm.
+ * @netdev: network interface device structure
+ *
+ * The set_rx_mode_async callback is responsible for actually updating the
+ * hardware. This routine is responsible for configuring the hardware for
+ * proper unicast, multicast, promiscuous mode, and all-multi behavior.
+ **/
+static void e1000_set_rx_mode_async(struct net_device *netdev)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
-	struct netdev_hw_addr *ha;
 	bool use_uc = false;
+	char *ha_addr;
 	u32 rctl;
 	u32 hash_value;
-	int i, rar_entries = E1000_RAR_ENTRIES;
+	int i, rar_entries = E1000_RAR_ENTRIES, ni;
 	int mta_reg_count = E1000_NUM_MTA_REGISTERS;
 	u32 *mcarray = kcalloc(mta_reg_count, sizeof(u32), GFP_ATOMIC);
 
@@ -2250,11 +2273,11 @@ static void e1000_set_rx_mode(struct net_device *netdev)
 
 	rctl = er32(RCTL);
 
-	if (netdev->flags & IFF_PROMISC) {
+	if (netif_get_rx_mode_cfg(netdev, NETIF_RX_MODE_CFG_PROMISC)) {
 		rctl |= (E1000_RCTL_UPE | E1000_RCTL_MPE);
 		rctl &= ~E1000_RCTL_VFE;
 	} else {
-		if (netdev->flags & IFF_ALLMULTI)
+		if (netif_get_rx_mode_cfg(netdev, NETIF_RX_MODE_CFG_ALLMULTI))
 			rctl |= E1000_RCTL_MPE;
 		else
 			rctl &= ~E1000_RCTL_MPE;
@@ -2263,9 +2286,9 @@ static void e1000_set_rx_mode(struct net_device *netdev)
 			rctl |= E1000_RCTL_VFE;
 	}
 
-	if (netdev_uc_count(netdev) > rar_entries - 1) {
+	if (netif_rx_mode_uc_count(netdev) > rar_entries - 1) {
 		rctl |= E1000_RCTL_UPE;
-	} else if (!(netdev->flags & IFF_PROMISC)) {
+	} else if (!netif_get_rx_mode_cfg(netdev, NETIF_RX_MODE_CFG_PROMISC)) {
 		rctl &= ~E1000_RCTL_UPE;
 		use_uc = true;
 	}
@@ -2286,23 +2309,23 @@ static void e1000_set_rx_mode(struct net_device *netdev)
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
 
@@ -5092,7 +5115,10 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool *enable_wake)
 
 	if (wufc) {
 		e1000_setup_rctl(adapter);
-		e1000_set_rx_mode(netdev);
+
+		rtnl_lock();
+		netif_set_rx_mode(netdev);
+		rtnl_unlock();
 
 		rctl = er32(RCTL);
 
@@ -5150,11 +5176,13 @@ static int e1000_suspend(struct device *dev)
 {
 	int retval;
 	struct pci_dev *pdev = to_pci_dev(dev);
+	struct net_device *netdev = pci_get_drvdata(pdev);
 	bool wake;
 
 	retval = __e1000_shutdown(pdev, &wake);
 	device_set_wakeup_enable(dev, wake);
 
+	netif_disable_async_ops(netdev);
 	return retval;
 }
 
@@ -5166,6 +5194,8 @@ static int e1000_resume(struct device *dev)
 	struct e1000_hw *hw = &adapter->hw;
 	u32 err;
 
+	netif_enable_async_ops(netdev);
+
 	if (adapter->need_ioport)
 		err = pci_enable_device(pdev);
 	else
@@ -5195,8 +5225,11 @@ static int e1000_resume(struct device *dev)
 
 	e1000_init_manageability(adapter);
 
-	if (netif_running(netdev))
+	if (netif_running(netdev)) {
+		rtnl_lock();
 		e1000_up(adapter);
+		rtnl_unlock();
+	}
 
 	netif_device_attach(netdev);
 
@@ -5205,6 +5238,7 @@ static int e1000_resume(struct device *dev)
 
 static void e1000_shutdown(struct pci_dev *pdev)
 {
+	struct net_device *netdev = pci_get_drvdata(pdev);
 	bool wake;
 
 	__e1000_shutdown(pdev, &wake);
@@ -5213,6 +5247,8 @@ static void e1000_shutdown(struct pci_dev *pdev)
 		pci_wake_from_d3(pdev, wake);
 		pci_set_power_state(pdev, PCI_D3hot);
 	}
+
+	netif_disable_async_ops(netdev);
 }
 
 #ifdef CONFIG_NET_POLL_CONTROLLER
@@ -5312,11 +5348,16 @@ static void e1000_io_resume(struct pci_dev *pdev)
 {
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct e1000_adapter *adapter = netdev_priv(netdev);
+	int rc;
 
 	e1000_init_manageability(adapter);
 
 	if (netif_running(netdev)) {
-		if (e1000_up(adapter)) {
+		rtnl_lock();
+		rc = e1000_up(adapter);
+		rtnl_unlock();
+
+		if (rc) {
 			pr_info("can't bring device back up after reset\n");
 			return;
 		}
-- 
2.47.3

