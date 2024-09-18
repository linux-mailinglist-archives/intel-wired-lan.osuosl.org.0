Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A96597BC1E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Sep 2024 14:21:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AC1C42406;
	Wed, 18 Sep 2024 12:21:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jq8aRQT2nRRg; Wed, 18 Sep 2024 12:21:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AB5BD42700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726662069;
	bh=HKvgsuCeaAkisedDz2aIYKHUjwjT7v/xEb9eAHnD1Ho=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5Vn2CGdhRZ1k46IrtV4BMJD+Oz1KfCx2YJAju6CwR4IgByNHdQvVu0I/GK8Arr8YH
	 b+cBvCEVaTphDZEENO3AaEvxwy8kLRhz1mZ1pNYT5ka8kKae6jtKe4s9PanJQaBkd2
	 OrmIvfRtoA59hHQCT7Uk0WMhyD4ornuW5IJv0wi6XK/Y1MFXmvQyh4lYU88/g2pFS0
	 s6nZW578nT8zrreYOJqN+YYb8lcUhMR+NSEpXwjpWjI1K23bPZGiAOPZz9ryRFUV7a
	 W54ZyfmUMS9DyMLgIk7ai7eIL7FjzHQcR6/cuKp0IDWg8oOxS32fc30rWQzs1LEzKy
	 0iy91uCOPct7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB5BD42700;
	Wed, 18 Sep 2024 12:21:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5CE81BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:21:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1F5C84855
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:21:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qi9RapWkP_KK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Sep 2024 12:21:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 20FA784854
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20FA784854
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 20FA784854
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Sep 2024 12:21:04 +0000 (UTC)
X-CSE-ConnectionGUID: 24/XyPKzS4mbTqIZjY8g1A==
X-CSE-MsgGUID: vs4JQq8wTfSUccFHvahzfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25689234"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="25689234"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 05:21:04 -0700
X-CSE-ConnectionGUID: zmh9BWXnTRa6TnR3moRa9w==
X-CSE-MsgGUID: yvdwKTxKTg2YDGuy6gDJHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="69636478"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by fmviesa008.fm.intel.com with ESMTP; 18 Sep 2024 05:21:02 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Sep 2024 14:12:34 +0200
Message-ID: <20240918122048.1554692-15-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240918122048.1554692-9-karol.kolacinski@intel.com>
References: <20240918122048.1554692-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726662065; x=1758198065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4HRqVP8zXV6KjpDXTGhxm8NP5s8TffV+6Iz0T0Eeujs=;
 b=ZMAvLN0UBbXxBKY5pufhOhBFWFR2feJztySln8eFkBVG86PP+Unfz5lA
 HaCPGYs6d0C6AP/H2ux0Bxt0h0Dw7lA2aq3LusHFk75O5i+diw+Y/OsH/
 fcCJ138MEEI2ExCjRW6ps2rMycIadT2VHTQj/fTf+RhRHbuORL7Jl1MjY
 cQBDedPJDApvISjLnrMg7HvK7RHLAzla/CZmYhlNuv8f4YqBjT9HyiLqo
 dRmqy7Y64jOB7zNe5Md+NwfidcMmnGhpvaVysLfyScemAOmiekUeJrA33
 yhLtgqlv64sIXcOG5X+3YBqFEWSyz7FUECRzMIreTAGMB0Y4ZgkBWEWqb
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZMAvLN0U
Subject: [Intel-wired-lan] [PATCH v11 iwl-next 6/7] ice: Refactor
 ice_ptp_init_tx_*
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Unify ice_ptp_init_tx_* functions for most of the MAC types except E82X.
This simplifies the code for the future use with new MAC types.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V7 -> V8: Renamed the patch and reworded the commit message

 drivers/net/ethernet/intel/ice/ice_ptp.c | 56 ++++++++----------------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  3 +-
 2 files changed, 20 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 47c356d68e2e..7993646e78b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -945,28 +945,6 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	tx->len = 0;
 }
 
-/**
- * ice_ptp_init_tx_eth56g - Initialize tracking for Tx timestamps
- * @pf: Board private structure
- * @tx: the Tx tracking structure to initialize
- * @port: the port this structure tracks
- *
- * Initialize the Tx timestamp tracker for this port. ETH56G PHYs
- * have independent memory blocks for all ports.
- *
- * Return: 0 for success, -ENOMEM when failed to allocate Tx tracker
- */
-static int ice_ptp_init_tx_eth56g(struct ice_pf *pf, struct ice_ptp_tx *tx,
-				  u8 port)
-{
-	tx->block = port;
-	tx->offset = 0;
-	tx->len = INDEX_PER_PORT_ETH56G;
-	tx->has_ready_bitmap = 1;
-
-	return ice_ptp_alloc_tx_tracker(tx);
-}
-
 /**
  * ice_ptp_init_tx_e82x - Initialize tracking for Tx timestamps
  * @pf: Board private structure
@@ -977,9 +955,11 @@ static int ice_ptp_init_tx_eth56g(struct ice_pf *pf, struct ice_ptp_tx *tx,
  * the timestamp block is shared for all ports in the same quad. To avoid
  * ports using the same timestamp index, logically break the block of
  * registers into chunks based on the port number.
+ *
+ * Return: 0 on success, -ENOMEM when out of memory
  */
-static int
-ice_ptp_init_tx_e82x(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
+static int ice_ptp_init_tx_e82x(struct ice_pf *pf, struct ice_ptp_tx *tx,
+				u8 port)
 {
 	tx->block = ICE_GET_QUAD_NUM(port);
 	tx->offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT_E82X;
@@ -990,24 +970,27 @@ ice_ptp_init_tx_e82x(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 }
 
 /**
- * ice_ptp_init_tx_e810 - Initialize tracking for Tx timestamps
+ * ice_ptp_init_tx - Initialize tracking for Tx timestamps
  * @pf: Board private structure
  * @tx: the Tx tracking structure to initialize
+ * @port: the port this structure tracks
+ *
+ * Initialize the Tx timestamp tracker for this PF. For all PHYs except E82X,
+ * each port has its own block of timestamps, independent of the other ports.
  *
- * Initialize the Tx timestamp tracker for this PF. For E810 devices, each
- * port has its own block of timestamps, independent of the other ports.
+ * Return: 0 on success, -ENOMEM when out of memory
  */
-static int
-ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
+static int ice_ptp_init_tx(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 {
-	tx->block = pf->hw.port_info->lport;
+	tx->block = port;
 	tx->offset = 0;
-	tx->len = INDEX_PER_PORT_E810;
+	tx->len = INDEX_PER_PORT;
+
 	/* The E810 PHY does not provide a timestamp ready bitmap. Instead,
 	 * verify new timestamps against cached copy of the last read
 	 * timestamp.
 	 */
-	tx->has_ready_bitmap = 0;
+	tx->has_ready_bitmap = pf->hw.mac_type != ICE_MAC_E810;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
@@ -3205,6 +3188,8 @@ static int ice_ptp_init_work(struct ice_pf *pf, struct ice_ptp *ptp)
  * ice_ptp_init_port - Initialize PTP port structure
  * @pf: Board private structure
  * @ptp_port: PTP port structure
+ *
+ * Return: 0 on success, -ENODEV on invalid MAC type, -ENOMEM on failed alloc.
  */
 static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 {
@@ -3214,16 +3199,13 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
-		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
+	case ICE_MAC_GENERIC_3K_E825:
+		return ice_ptp_init_tx(pf, &ptp_port->tx, ptp_port->port_num);
 	case ICE_MAC_GENERIC:
 		kthread_init_delayed_work(&ptp_port->ov_work,
 					  ice_ptp_wait_for_offsets);
-
 		return ice_ptp_init_tx_e82x(pf, &ptp_port->tx,
 					    ptp_port->port_num);
-	case ICE_MAC_GENERIC_3K_E825:
-		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
-					      ptp_port->port_num);
 	default:
 		return -ENODEV;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index acee46ad793a..5af474285780 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -128,8 +128,7 @@ struct ice_ptp_tx {
 /* Quad and port information for initializing timestamp blocks */
 #define INDEX_PER_QUAD			64
 #define INDEX_PER_PORT_E82X		16
-#define INDEX_PER_PORT_E810		64
-#define INDEX_PER_PORT_ETH56G		64
+#define INDEX_PER_PORT			64
 
 /**
  * struct ice_ptp_port - data used to initialize an external port for PTP
-- 
2.46.0

