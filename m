Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBJCIBmptWmw3AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E70C228E755
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Mar 2026 19:29:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4028B60BBB;
	Sat, 14 Mar 2026 18:29:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kK6AdRNAyxPf; Sat, 14 Mar 2026 18:29:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DFA260BEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773512982;
	bh=7uJuhFREF46e+3OIYgkRDThTE1W9t/zG8t/Q5Vop1iU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ghX8gO5+tvw/rw9uNGNkWL2xGsOlsk3Acxhn0lXco88UR8VwLe1DE9JYdWLEjKHp4
	 CiD77+ptmlxD5u6+h881jqV7SJ8MAPs0NAyFr5sc/cq9a+rOBNKoqnoZQtQvFrHlNP
	 ARNBvPPwoGLv7yhUQ42cAGzV+HYZsibynOkwcNxnnGuhpsLYKBt8++nt46PsoKrCLE
	 zypr9b6oarTjW3ay295Vj9dtMWJhKmWWi1HmcH3biiYsohzfkxUxjncdPcGS+HhHiV
	 sHDKFlToEc0LsLooYrTf8sLNjJoXPwEikF/dYHwl9pcbuZzwz4E4wWM3RUQOJ3IIwh
	 KbZjesCLIe5Aw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DFA260BEF;
	Sat, 14 Mar 2026 18:29:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 513F31B2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 42DFD4038E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HvF6cTiBn3AW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Mar 2026 18:29:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::52e; helo=mail-pg1-x52e.google.com;
 envelope-from=viswanathiyyappan@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 847074019B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 847074019B
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 847074019B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 18:29:39 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id
 41be03b00d2f7-c73bc3dd25fso1245589a12.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Mar 2026 11:29:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773512979; x=1774117779;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=7uJuhFREF46e+3OIYgkRDThTE1W9t/zG8t/Q5Vop1iU=;
 b=MmJ8lsSGkA0NEjPFJeMV2QDiaWmbTn+8YnkcXGPIzAm/ukoKwP19BoUDbE9e32TpWN
 RkLKMtEYRyNWPHVATgITXvrWiYsrbDzBakiN/2FgZwTD/crvuQGI0UMnT1J2ceCCwr6+
 Iy0KcH7jFBjE+gD3GbI6b0lb2vrwFJ0vxsgSAi6jjtQN/2rhWxeLQWKe4gDB1uF0UmeB
 Ro0lNd8niRsAYgtylM9BFFTwCPSBSXFRXmeRLdde/hkjqlDq5GWVWKXVy17coqqx554P
 boFpI5wv/54M7HUhNAqeiU/v/TcFTv3dJi428YLFdqrDkMWgBl4Xds3B4cwE3IWwiLBg
 Yu2g==
X-Forwarded-Encrypted: i=1;
 AJvYcCV1R2Z3SlGb4hL40IYA+P9v0MDiz2M7q7t/QrYBDaKKX8OEGYcxGRNpfXDY1hXw2zcQQGAMNgakiD0eRF29BmM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyRCg0QUOIvnbeGcjhgvUQYaa04RXUuiwMRTWk82mdC6M98e6gw
 0mv85M/lOvdFSHw4cBzNT7vBlHsW4PU+GmV6Eke8ItMKg1qYMOIRxjps
X-Gm-Gg: ATEYQzyhVguxTnmUqcbOaezHZPzjsRhHUP12aOdfbLGRkg8FBuLYdqSqMemX3SMGnl9
 EIO7rZbTqeIZde2WD1VEvvyDz35pmMxT8gyA/vSgrVPWD1mwCb7nkn4xe0sxrR96fIs2SZcO+zd
 AszyGGwZgcGPqf1Mcfs/PmfU7PWHO/kej9Aho08ngcRALaSleMG88tise6Xxyj6HnQFcuJ3wjph
 fZyc0CFjVmFjP/5gL5OtO2dvP0+opZVQMilouaIP5rfkC5KtDo69khqzPqY9Yvyi7bw0mRDqlSY
 tdCwGu+1Bu4n6t+vsiGSlM7cBXurZlu/2GnMPXYYIULIT84gUohTPd2gh1ck58rDEHFxnjQPSmg
 vFVyT6WqSZSGuPqf5SokvRcTYUHzq4PyjfALUXTkbC5T3tt0PvthEvaiKiUmAY2eYK2Y4HK6+dI
 WYPPm+h5Jcn1LcWwS+S2tCLWmTGo7ULd/ziCl9x6eUGKdAwsznHSCc8dfWYPmYau1GXSIXGfEtz
 cLw6Q==
X-Received: by 2002:a17:902:f70a:b0:2ae:5044:8dd4 with SMTP id
 d9443c01a7336-2aeca960929mr72806085ad.19.1773512978654; 
 Sat, 14 Mar 2026 11:29:38 -0700 (PDT)
Received: from localhost.localdomain ([122.168.66.151])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2aece62c581sm77673525ad.33.2026.03.14.11.29.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2026 11:29:38 -0700 (PDT)
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
Date: Sat, 14 Mar 2026 23:58:08 +0530
Message-ID: <20260314182809.362808-7-viswanathiyyappan@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
References: <20260314182809.362808-1-viswanathiyyappan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773512979; x=1774117779; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7uJuhFREF46e+3OIYgkRDThTE1W9t/zG8t/Q5Vop1iU=;
 b=Mv1LGjqw/FNFKqeu5xd8sxrBMlpD8M10UZ4N6BQq1WES+7ks4NVVNYQt2dD1iVEdhO
 B6eNAM5GHOMrNFVRkfqtP20ovItyJ/fkBtunGWsw2SARZoro1v9naxE4gQDVSpDRnNSG
 75ETo633eXQ0Ofc/Kt2V1QMffNNwTzKHYwlwrNVZ17UQ09Dn7Yiq2kAAG7hisvNlOGxs
 nBhc3S2zGbKLIqyv3ShU7EalpLNkOn4SIpaL5d831092qqyARGi1Xr/va9wYsKf1N1dj
 IyEbvirvB4UKNyuEdR79tzvTcodWFVe5TsavdwGsLTCzh04rNHVI0q1UU8KdHEMqJgr6
 uIYA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=Mv1LGjqw
Subject: [Intel-wired-lan] [PATCH net-next v9 6/7] vmxnet3: Implement
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
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
X-Rspamd-Queue-Id: E70C228E755
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Implement the ndo_set_rx_mode_async callback and update
the driver to use the snapshot/commit model for RX mode update.

Signed-off-by: I Viswanath <viswanathiyyappan@gmail.com>
---
 
Call paths involving netif_set_rx_mode in vmxnet3

netif_set_rx_mode
`-- vmxnet3_activate_dev
    |-- vmxnet3_open (ndo_open, takes lock)
    |-- vmxnet3_change_mtu (ndo_change_mtu, takes lock)
    |-- vmxnet3_reset_work (takes lock)
    |-- vmxnet3_resume (lock added)
    |-- vmxnet3_set_ringparam (ethtool callback, takes lock)
    `-- vmxnet3_xdp_set
        `-- vmxnet3_xdp (ndo_bpf, takes lock)

 drivers/net/vmxnet3/vmxnet3_drv.c | 46 +++++++++++++++++++++++--------
 1 file changed, 35 insertions(+), 11 deletions(-)

diff --git a/drivers/net/vmxnet3/vmxnet3_drv.c b/drivers/net/vmxnet3/vmxnet3_drv.c
index 40522afc0532..350e44286c00 100644
--- a/drivers/net/vmxnet3/vmxnet3_drv.c
+++ b/drivers/net/vmxnet3/vmxnet3_drv.c
@@ -2775,18 +2775,18 @@ static u8 *
 vmxnet3_copy_mc(struct net_device *netdev)
 {
 	u8 *buf = NULL;
-	u32 sz = netdev_mc_count(netdev) * ETH_ALEN;
+	u32 sz = netif_rx_mode_mc_count(netdev) * ETH_ALEN;
+	char *ha_addr;
+	int ni;
 
 	/* struct Vmxnet3_RxFilterConf.mfTableLen is u16. */
 	if (sz <= 0xffff) {
 		/* We may be called with BH disabled */
 		buf = kmalloc(sz, GFP_ATOMIC);
 		if (buf) {
-			struct netdev_hw_addr *ha;
 			int i = 0;
-
-			netdev_for_each_mc_addr(ha, netdev)
-				memcpy(buf + i++ * ETH_ALEN, ha->addr,
+			netif_rx_mode_for_each_mc_addr(ha_addr, netdev, ni)
+				memcpy(buf + i++ * ETH_ALEN, ha_addr,
 				       ETH_ALEN);
 		}
 	}
@@ -2796,8 +2796,23 @@ vmxnet3_copy_mc(struct net_device *netdev)
 
 static void
 vmxnet3_set_mc(struct net_device *netdev)
+{
+	bool allmulti = !!(netdev->flags & IFF_ALLMULTI);
+	bool promisc = !!(netdev->flags & IFF_PROMISC);
+	bool broadcast = !!(netdev->flags & IFF_BROADCAST);
+
+	netif_set_rx_mode_flag(netdev, NETIF_RX_MODE_UC_SKIP, true);
+	netif_set_rx_mode_flag(netdev, NETIF_RX_MODE_MC_SKIP, allmulti);
+
+	netif_set_rx_mode_cfg(netdev, NETIF_RX_MODE_CFG_ALLMULTI, allmulti);
+	netif_set_rx_mode_cfg(netdev, NETIF_RX_MODE_CFG_PROMISC, promisc);
+	netif_set_rx_mode_cfg(netdev, NETIF_RX_MODE_CFG_BROADCAST, broadcast);
+}
+
+static void vmxnet3_set_mc_async(struct net_device *netdev)
 {
 	struct vmxnet3_adapter *adapter = netdev_priv(netdev);
+	int mc_count = netif_rx_mode_mc_count(netdev);
 	unsigned long flags;
 	struct Vmxnet3_RxFilterConf *rxConf =
 					&adapter->shared->devRead.rxFilterConf;
@@ -2806,7 +2821,7 @@ vmxnet3_set_mc(struct net_device *netdev)
 	bool new_table_pa_valid = false;
 	u32 new_mode = VMXNET3_RXM_UCAST;
 
-	if (netdev->flags & IFF_PROMISC) {
+	if (netif_get_rx_mode_cfg(netdev, NETIF_RX_MODE_CFG_PROMISC)) {
 		u32 *vfTable = adapter->shared->devRead.rxFilterConf.vfTable;
 		memset(vfTable, 0, VMXNET3_VFT_SIZE * sizeof(*vfTable));
 
@@ -2815,16 +2830,16 @@ vmxnet3_set_mc(struct net_device *netdev)
 		vmxnet3_restore_vlan(adapter);
 	}
 
-	if (netdev->flags & IFF_BROADCAST)
+	if (netif_get_rx_mode_cfg(netdev, NETIF_RX_MODE_CFG_BROADCAST))
 		new_mode |= VMXNET3_RXM_BCAST;
 
-	if (netdev->flags & IFF_ALLMULTI)
+	if (netif_get_rx_mode_cfg(netdev, NETIF_RX_MODE_CFG_ALLMULTI))
 		new_mode |= VMXNET3_RXM_ALL_MULTI;
 	else
-		if (!netdev_mc_empty(netdev)) {
+		if (mc_count) {
 			new_table = vmxnet3_copy_mc(netdev);
 			if (new_table) {
-				size_t sz = netdev_mc_count(netdev) * ETH_ALEN;
+				size_t sz = mc_count * ETH_ALEN;
 
 				rxConf->mfTableLen = cpu_to_le16(sz);
 				new_table_pa = dma_map_single(
@@ -3213,7 +3228,7 @@ vmxnet3_activate_dev(struct vmxnet3_adapter *adapter)
 	}
 
 	/* Apply the rx filter settins last. */
-	vmxnet3_set_mc(adapter->netdev);
+	netif_set_rx_mode(adapter->netdev);
 
 	/*
 	 * Check link state when first activating device. It will start the
@@ -3977,6 +3992,7 @@ vmxnet3_probe_device(struct pci_dev *pdev,
 		.ndo_get_stats64 = vmxnet3_get_stats64,
 		.ndo_tx_timeout = vmxnet3_tx_timeout,
 		.ndo_set_rx_mode = vmxnet3_set_mc,
+		.ndo_set_rx_mode_async = vmxnet3_set_mc_async,
 		.ndo_vlan_rx_add_vid = vmxnet3_vlan_rx_add_vid,
 		.ndo_vlan_rx_kill_vid = vmxnet3_vlan_rx_kill_vid,
 #ifdef CONFIG_NET_POLL_CONTROLLER
@@ -4400,6 +4416,7 @@ static void vmxnet3_shutdown_device(struct pci_dev *pdev)
 	vmxnet3_disable_all_intrs(adapter);
 
 	clear_bit(VMXNET3_STATE_BIT_RESETTING, &adapter->state);
+	netif_disable_async_ops(netdev);
 }
 
 
@@ -4518,6 +4535,7 @@ vmxnet3_suspend(struct device *device)
 	pci_disable_device(pdev);
 	pci_set_power_state(pdev, pci_choose_state(pdev, PMSG_SUSPEND));
 
+	netif_disable_async_ops(netdev);
 	return 0;
 }
 
@@ -4531,6 +4549,8 @@ vmxnet3_resume(struct device *device)
 	struct net_device *netdev = pci_get_drvdata(pdev);
 	struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 
+	netif_enable_async_ops(netdev);
+
 	if (!netif_running(netdev))
 		return 0;
 
@@ -4559,7 +4579,11 @@ vmxnet3_resume(struct device *device)
 	vmxnet3_rq_cleanup_all(adapter);
 
 	vmxnet3_reset_dev(adapter);
+
+	rtnl_lock();
 	err = vmxnet3_activate_dev(adapter);
+	rtnl_unlock();
+
 	if (err != 0) {
 		netdev_err(netdev,
 			   "failed to re-activate on resume, error: %d", err);
-- 
2.47.3

