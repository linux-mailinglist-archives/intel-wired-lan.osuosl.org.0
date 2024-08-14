Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47819951B75
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 15:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BE5C804D7;
	Wed, 14 Aug 2024 13:09:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CXcK8M_5i8eH; Wed, 14 Aug 2024 13:09:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AAF380CCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723640983;
	bh=ebk/QM1Xgq6+6xzqYoNvs2on/Bt4S0Cq9/CBaXHPFaA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Uu+kzUht80iskOPrCFSqzjS1ubwGzy7uRT8lPX5mUbsSA6eogJZb+G5cYVru1E3b2
	 GyYNgsZw0tyos4x1QD/Us4Q4h0iKCb8FfT8QxhMbaEA9ZWnerGcnJjf9g8SIL0vzba
	 +Ro2aGIwh7ud7LryO/cj1BfSwQcd6J4SNyH68Hm5XNOc3UPzPTaPGtRCAf1exyLPhk
	 MoKXjlssHJwPAFOB6gooRMbMHWcXhR/Ro6xMgAJI6Z0AVofO0wpbuROEBv6Wjzlb1T
	 oKZKy8N0sSV47OSKiNqXmtZA/KYFp0uypiW5LA6X3LFSciqX1n4+sPYIooKtz9uMPb
	 SknORgRTE2vXw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AAF380CCE;
	Wed, 14 Aug 2024 13:09:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DAD11BF32E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67859403B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:09:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sONMa6DWlq_1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 13:09:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1EBC940372
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EBC940372
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1EBC940372
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 13:09:33 +0000 (UTC)
X-CSE-ConnectionGUID: /1bJ2bhjTqqmjhsAp+CBEw==
X-CSE-MsgGUID: /ak4Daa/QXm0kJbZuUdPJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="25658814"
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; d="scan'208";a="25658814"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 06:09:33 -0700
X-CSE-ConnectionGUID: gq7NS4JtThCL9s3fr/Dirg==
X-CSE-MsgGUID: 0W/NlcGhSVCvMzMtHns3fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; d="scan'208";a="59009710"
Received: from unknown (HELO kkolacin-desk1.igk.intel.com) ([10.217.160.108])
 by fmviesa009.fm.intel.com with ESMTP; 14 Aug 2024 06:09:31 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 14 Aug 2024 15:05:43 +0200
Message-ID: <20240814130918.58444-13-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240814130918.58444-8-karol.kolacinski@intel.com>
References: <20240814130918.58444-8-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723640974; x=1755176974;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7N5eGTkDiG8Qvv/AIj8ZvUfBEc+qQ7WfM1ZJ92TKzX0=;
 b=RUYZdJ6lm5B0LomiQTY2T7No++VPaFfEzJ4Lt8IhyfHKBxLTX2WfWEH/
 i1Yg8ya88v3KvB42mpp/MFmc12gRS/FTBE7w5uPX/69pIL2swYYgbM0Uh
 Ebs6Pmx+eslfwoofWmhBldfi27HmXreZ1XV+Wm0xjaVAAVyDmsNDyOfoo
 ACJOzO3bcu61CE9+0YLY1Ztnijk0Hjbf9kL0CnQ1KJBqGP3KH+YXPtSVk
 ByfYYxoIAXENN47RNTshsPv+ZFjWYAsCSUMWp/ZSzpw8nmwzzKxRZRmQV
 Xjbi8tb4d6uMNunEHkUHu5c2rSGPzNJen+a9duXfdVfS9QrNRb0LgkEgp
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RUYZdJ6l
Subject: [Intel-wired-lan] [PATCH v6 iwl-next 5/6] ice: Add timestamp ready
 bitmap for E830 products
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

E830 PHY supports timestamp ready bitmap.
Enable the bitmap by refactoring tx init function.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 56 +++++++-----------------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  3 +-
 2 files changed, 17 insertions(+), 42 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 861f6224540a..b438647717cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -942,28 +942,6 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
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
@@ -974,9 +952,11 @@ static int ice_ptp_init_tx_eth56g(struct ice_pf *pf, struct ice_ptp_tx *tx,
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
@@ -987,24 +967,27 @@ ice_ptp_init_tx_e82x(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 }
 
 /**
- * ice_ptp_init_tx_e810 - Initialize tracking for Tx timestamps
+ * ice_ptp_init_tx - Initialize tracking for Tx timestamps
  * @pf: Board private structure
  * @tx: the Tx tracking structure to initialize
+ * @port: the port this structure tracks
  *
- * Initialize the Tx timestamp tracker for this PF. For E810 devices, each
- * port has its own block of timestamps, independent of the other ports.
+ * Initialize the Tx timestamp tracker for this PF. For all PHYs except E82X,
+ * each port has its own block of timestamps, independent of the other ports.
+ *
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
@@ -3344,20 +3327,13 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 	mutex_init(&ptp_port->ps_lock);
 
 	switch (hw->mac_type) {
-	case ICE_MAC_E810:
-	case ICE_MAC_E830:
-		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
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
-		return -ENODEV;
+		return ice_ptp_init_tx(pf, &ptp_port->tx, ptp_port->port_num);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 5122b3a862fb..eae15b3b0286 100644
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

