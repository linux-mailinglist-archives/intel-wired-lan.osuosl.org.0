Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1fEZAlrPUGp+5QIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:54:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD52739E03
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:54:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=Z47tlZ1B;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63C85409D1;
	Fri, 10 Jul 2026 10:54:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 62zf5kkdJFbk; Fri, 10 Jul 2026 10:54:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79495409D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783680849;
	bh=jgTaMW2ebVq2hXn76XATZz4gJ2tyiQEnjaEYhKUoC/o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z47tlZ1BpcQLcC6gDIwCue02Sz5mqBRG52tWr+boFYE5QTHQ0QtiO70Zc28OYz/6e
	 eAHkQlcsTjnQT6z7lPPSJHwdFbTiuQio9BJ2ZBbmSwD8PmC5PMIKqXZgxxCFRvC9Xy
	 EjOBC7p3kqr6Q2rASvpzhW8fSxYa/CLnSU1TTRPA3qtDCa3QAi0Zu/r7KNXLBfk/9g
	 9Nf/wBaxnzjY/jJTIhGtT9yPyU3LUftWkEmog2n9JyO+b309CpXJDLUlmCMHRExvok
	 bmWZniDP7+xW7TlNdrjbS5fiTyZYgAJ0KlfWAhN1Y7ZQFKttev6Hs900efaMGMkuAi
	 ymsnO9rAbOWdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79495409D3;
	Fri, 10 Jul 2026 10:54:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CBCE3A3C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:54:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE37A409CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:54:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Dw2mijIr_iH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 10:54:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 77CF6409CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 77CF6409CF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77CF6409CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:54:06 +0000 (UTC)
X-CSE-ConnectionGUID: 2RoCcCXpTJSyGjGzJsW1Zg==
X-CSE-MsgGUID: 2cyxUS4ITkyBE4k45zu7hA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="86920268"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="86920268"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 03:54:06 -0700
X-CSE-ConnectionGUID: JNURY7F6RFaJER2U5JL+BA==
X-CSE-MsgGUID: cX3cNDQ1TZ6EglZXnd2UNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="259750953"
Received: from gnrd8.igk.intel.com (HELO GNRD8) ([10.123.232.137])
 by fmviesa005.fm.intel.com with ESMTP; 10 Jul 2026 03:54:05 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Fri, 10 Jul 2026 10:54:02 +0000
Message-ID: <20260710105403.1050025-2-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260710105403.1050025-1-sergey.temerkhanov@intel.com>
References: <20260710105403.1050025-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783680847; x=1815216847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I4d/AIfY9IzTgmJQVuYw25e0drYqQCMxGHd3cq0S5pc=;
 b=XvgiA63g+ZnCP9+DTW4T3hRwNIkUWWLkvxF0+F6XqfWq5GAaNtgLJhcV
 R/cvZlct4ZGgusoAJK0Grfcv1/KzRZ5zUXQyTMeL/0iicOVnQWI0AFweB
 HZS3OmL8dMnSSZvgNl1p3w4gf+zJRCia3eZGcEsbUGoBn8CwFt2Bs8vbJ
 DZxWIoOsulxWH4aSwteh4WfiEgPq8RbamFRUEXDkL/qfYc8hTSlxGnbZ7
 1LR8DKSrkgTtWY30olOjiyGvHIJzqFvhzquIXgoM+Heg/NQ5sYUQWD0Cx
 02gW67sMF6S6FweJhVE69+WmkuOr9lcZmHKS8xJIxb9js8DQDD+Wa39GM
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XvgiA63g
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] ixgbe: Refactor device
 operations to check whether netdev is available
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3BD52739E03

Refactor several ixgbe driver operations to check whether the
netdev they operate on is enabled. This will allow the system
to get synchronized, for example, during the PCI resets.

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  5 +++
 .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   | 13 +++++--
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 34 ++++++++++++-------
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c | 20 ++++++++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 22 +++++++-----
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  |  4 +--
 6 files changed, 69 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 594ccb28da20..e801433c5db8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -955,6 +955,11 @@ extern char ixgbe_driver_name[];
 extern char ixgbe_default_device_descr[];
 #endif /* IXGBE_FCOE */
 
+static inline bool ixgbe_netif_running(struct net_device *netdev)
+{
+	return netif_running(netdev) && netif_device_present(netdev);
+}
+
 int ixgbe_open(struct net_device *netdev);
 int ixgbe_close(struct net_device *netdev);
 void ixgbe_up(struct ixgbe_adapter *adapter);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
index 382d097e4b11..7c7408d32742 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c
@@ -277,17 +277,23 @@ static void ixgbe_dcbnl_get_pfc_cfg(struct net_device *netdev, int priority,
 static void ixgbe_dcbnl_devreset(struct net_device *dev)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
+	bool running;
+
+	if (!netif_device_present(dev))
+		return;
+
+	running = ixgbe_netif_running(dev);
 
 	while (test_and_set_bit(__IXGBE_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);
 
-	if (netif_running(dev))
+	if (running)
 		dev->netdev_ops->ndo_stop(dev);
 
 	ixgbe_clear_interrupt_scheme(adapter);
 	ixgbe_init_interrupt_scheme(adapter);
 
-	if (netif_running(dev))
+	if (running)
 		dev->netdev_ops->ndo_open(dev);
 
 	clear_bit(__IXGBE_RESETTING, &adapter->state);
@@ -515,6 +521,9 @@ static int ixgbe_dcbnl_ieee_setets(struct net_device *dev,
 	if (!(adapter->dcbx_cap & DCB_CAP_DCBX_VER_IEEE))
 		return -EINVAL;
 
+	if (!netif_device_present(dev))
+		return -ENETDOWN;
+
 	if (!adapter->ixgbe_ieee_ets) {
 		adapter->ixgbe_ieee_ets = kmalloc_obj(struct ieee_ets);
 		if (!adapter->ixgbe_ieee_ets)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 36e43b5e88d1..02aff411426d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -466,6 +466,9 @@ static int ixgbe_set_link_ksettings(struct net_device *netdev,
 	u32 advertised, old;
 	int err = 0;
 
+	if (!netif_device_present(netdev))
+		return -ENETDOWN;
+
 	if ((hw->phy.media_type == ixgbe_media_type_copper) ||
 	    (hw->phy.multispeed_fiber)) {
 		/*
@@ -576,9 +579,9 @@ static void ixgbe_set_pauseparam_finalize(struct net_device *netdev,
 	/* If the thing changed then we'll update and use new autoneg. */
 	if (memcmp(fc, &hw->fc, sizeof(*fc))) {
 		hw->fc = *fc;
-		if (netif_running(netdev))
+		if (ixgbe_netif_running(netdev))
 			ixgbe_reinit_locked(adapter);
-		else
+		else if (netif_device_present(netdev))
 			ixgbe_reset(adapter);
 	}
 }
@@ -1266,7 +1269,7 @@ static int ixgbe_set_ringparam(struct net_device *netdev,
 	while (test_and_set_bit(__IXGBE_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);
 
-	if (!netif_running(adapter->netdev)) {
+	if (!ixgbe_netif_running(adapter->netdev)) {
 		for (i = 0; i < adapter->num_tx_queues; i++)
 			adapter->tx_ring[i]->count = new_tx_count;
 		for (i = 0; i < adapter->num_xdp_queues; i++)
@@ -2249,10 +2252,11 @@ static void ixgbe_diag_test(struct net_device *netdev,
 			    struct ethtool_test *eth_test, u64 *data)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
-	bool if_running = netif_running(netdev);
+	bool if_running = ixgbe_netif_running(netdev);
 
-	if (ixgbe_removed(adapter->hw.hw_addr)) {
-		e_err(hw, "Adapter removed - test blocked\n");
+	if (ixgbe_removed(adapter->hw.hw_addr) ||
+	    !netif_device_present(netdev)) {
+		e_err(hw, "Adapter removed or detached - test blocked\n");
 		data[0] = 1;
 		data[1] = 1;
 		data[2] = 1;
@@ -2466,7 +2470,7 @@ static int ixgbe_nway_reset(struct net_device *netdev)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
-	if (netif_running(netdev))
+	if (ixgbe_netif_running(netdev))
 		ixgbe_reinit_locked(adapter);
 
 	return 0;
@@ -2650,7 +2654,8 @@ static int ixgbe_set_coalesce(struct net_device *netdev,
 		else
 			/* rx only or mixed */
 			q_vector->itr = rx_itr_param;
-		ixgbe_write_eitr(q_vector);
+		if (netif_device_present(netdev))
+			ixgbe_write_eitr(q_vector);
 	}
 
 	/*
@@ -3694,6 +3699,9 @@ static int ixgbe_set_eee_e610(struct net_device *netdev,
 	    kedata->eee_enabled)
 		return -EOPNOTSUPP;
 
+	if (!netif_device_present(netdev))
+		return -ENETDOWN;
+
 	hw->phy.eee_speeds_advertised = kedata->eee_enabled ?
 					hw->phy.eee_speeds_supported : 0;
 
@@ -3709,9 +3717,9 @@ static int ixgbe_set_eee_e610(struct net_device *netdev,
 	else
 		adapter->flags2 &= ~IXGBE_FLAG2_EEE_ENABLED;
 
-	if (netif_running(netdev))
+	if (ixgbe_netif_running(netdev))
 		ixgbe_reinit_locked(adapter);
-	else
+	else if (netif_device_present(netdev))
 		ixgbe_reset(adapter);
 
 	return 0;
@@ -3793,9 +3801,9 @@ static int ixgbe_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 	}
 
 	/* reset link */
-	if (netif_running(netdev))
+	if (ixgbe_netif_running(netdev))
 		ixgbe_reinit_locked(adapter);
-	else
+	else if (netif_device_present(netdev))
 		ixgbe_reset(adapter);
 
 	return 0;
@@ -3851,7 +3859,7 @@ static int ixgbe_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 		adapter->flags2 = flags2;
 
 		/* reset interface to repopulate queues */
-		if (netif_running(netdev))
+		if (ixgbe_netif_running(netdev))
 			ixgbe_reinit_locked(adapter);
 	}
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
index e338ff0e6522..a22c20c73cdc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
@@ -853,6 +853,10 @@ int ixgbe_fcoe_enable(struct net_device *netdev)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 	struct ixgbe_fcoe *fcoe = &adapter->fcoe;
+	bool running;
+
+	if (!netif_device_present(netdev))
+		return -ENETDOWN;
 
 	atomic_inc(&fcoe->refcnt);
 
@@ -862,12 +866,14 @@ int ixgbe_fcoe_enable(struct net_device *netdev)
 	if (adapter->flags & IXGBE_FLAG_FCOE_ENABLED)
 		return -EINVAL;
 
+	running = ixgbe_netif_running(netdev);
+
 	e_info(drv, "Enabling FCoE offload features.\n");
 
 	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
 		e_warn(probe, "Enabling FCoE on PF will disable legacy VFs\n");
 
-	if (netif_running(netdev))
+	if (running)
 		netdev->netdev_ops->ndo_stop(netdev);
 
 	/* Allocate per CPU memory to track DDP pools */
@@ -882,7 +888,7 @@ int ixgbe_fcoe_enable(struct net_device *netdev)
 	ixgbe_clear_interrupt_scheme(adapter);
 	ixgbe_init_interrupt_scheme(adapter);
 
-	if (netif_running(netdev))
+	if (running)
 		netdev->netdev_ops->ndo_open(netdev);
 
 	return 0;
@@ -899,6 +905,10 @@ int ixgbe_fcoe_enable(struct net_device *netdev)
 int ixgbe_fcoe_disable(struct net_device *netdev)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
+	bool running;
+
+	if (!netif_device_present(netdev))
+		return -ENETDOWN;
 
 	if (!atomic_dec_and_test(&adapter->fcoe.refcnt))
 		return -EINVAL;
@@ -906,8 +916,10 @@ int ixgbe_fcoe_disable(struct net_device *netdev)
 	if (!(adapter->flags & IXGBE_FLAG_FCOE_ENABLED))
 		return -EINVAL;
 
+	running = ixgbe_netif_running(netdev);
+
 	e_info(drv, "Disabling FCoE offload features.\n");
-	if (netif_running(netdev))
+	if (running)
 		netdev->netdev_ops->ndo_stop(netdev);
 
 	/* Free per CPU memory to track DDP pools */
@@ -923,7 +935,7 @@ int ixgbe_fcoe_disable(struct net_device *netdev)
 	ixgbe_clear_interrupt_scheme(adapter);
 	ixgbe_init_interrupt_scheme(adapter);
 
-	if (netif_running(netdev))
+	if (running)
 		netdev->netdev_ops->ndo_open(netdev);
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 2ac274c73d61..42dac766c907 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7420,7 +7420,7 @@ static int ixgbe_change_mtu(struct net_device *netdev, int new_mtu)
 	/* must set new MTU before calling down or up */
 	WRITE_ONCE(netdev->mtu, new_mtu);
 
-	if (netif_running(netdev))
+	if (ixgbe_netif_running(netdev))
 		ixgbe_reinit_locked(adapter);
 
 	return 0;
@@ -9917,6 +9917,7 @@ int ixgbe_setup_tc(struct net_device *dev, u8 tc)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
+	bool running = ixgbe_netif_running(dev);
 
 	/* Hardware supports up to 8 traffic classes */
 	if (tc > adapter->dcb_cfg.num_tcs.pg_tcs)
@@ -9929,7 +9930,10 @@ int ixgbe_setup_tc(struct net_device *dev, u8 tc)
 	 * match packet buffer alignment. Unfortunately, the
 	 * hardware is not flexible enough to do this dynamically.
 	 */
-	if (netif_running(dev))
+	if (!netif_device_present(dev))
+		return -ENETDOWN;
+
+	if (running)
 		ixgbe_close(dev);
 	else
 		ixgbe_reset(adapter);
@@ -9942,7 +9946,7 @@ int ixgbe_setup_tc(struct net_device *dev, u8 tc)
 			e_warn(probe, "DCB is not supported with XDP\n");
 
 			ixgbe_init_interrupt_scheme(adapter);
-			if (netif_running(dev))
+			if (running)
 				ixgbe_open(dev);
 			return -EINVAL;
 		}
@@ -9977,7 +9981,7 @@ int ixgbe_setup_tc(struct net_device *dev, u8 tc)
 
 	ixgbe_defrag_macvlan_pools(dev);
 
-	if (netif_running(dev))
+	if (running)
 		return ixgbe_open(dev);
 
 	return 0;
@@ -10503,9 +10507,9 @@ void ixgbe_do_reset(struct net_device *netdev)
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
-	if (netif_running(netdev))
+	if (ixgbe_netif_running(netdev))
 		ixgbe_reinit_locked(adapter);
-	else
+	else if (netif_device_present(netdev))
 		ixgbe_reset(adapter);
 }
 
@@ -10837,7 +10841,7 @@ static void *ixgbe_fwd_add(struct net_device *pdev, struct net_device *vdev)
 	accel->pool = pool;
 	accel->netdev = vdev;
 
-	if (!netif_running(pdev))
+	if (!ixgbe_netif_running(pdev))
 		return accel;
 
 	err = ixgbe_fwd_ring_up(adapter, accel);
@@ -10968,8 +10972,10 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
 			synchronize_rcu();
 		err = ixgbe_setup_tc(dev, adapter->hw_tcs);
 
-		if (err)
+		if (err) {
+			xchg(&adapter->xdp_prog, old_prog);
 			return -EINVAL;
+		}
 		if (!prog)
 			xdp_features_clear_redirect_target(dev);
 	} else {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index 89f96c463f02..02820982b202 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -39,7 +39,7 @@ static int ixgbe_xsk_pool_enable(struct ixgbe_adapter *adapter,
 	if (err)
 		return err;
 
-	if_running = netif_running(adapter->netdev) &&
+	if_running = ixgbe_netif_running(adapter->netdev) &&
 		     ixgbe_enabled_xdp_adapter(adapter);
 
 	if (if_running)
@@ -71,7 +71,7 @@ static int ixgbe_xsk_pool_disable(struct ixgbe_adapter *adapter, u16 qid)
 	if (!pool)
 		return -EINVAL;
 
-	if_running = netif_running(adapter->netdev) &&
+	if_running = ixgbe_netif_running(adapter->netdev) &&
 		     ixgbe_enabled_xdp_adapter(adapter);
 
 	if (if_running)
-- 
2.53.0

