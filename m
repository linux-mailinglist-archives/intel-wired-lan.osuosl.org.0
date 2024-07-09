Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6044892B9A1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jul 2024 14:36:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 860F541200;
	Tue,  9 Jul 2024 12:36:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QQ9mGaaB5n3i; Tue,  9 Jul 2024 12:36:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D3B641218
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720528611;
	bh=mPyTBI12CqD90em3t0FTe9cvi8uyc3LV2RSfikItbHk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0F4P9A6cv54K77o2VZBpUQhS219SpPnD+RB9O/itDZNKLZ9yhpuZy3OZ6yl1R4zlx
	 KFqF5Gg2BD7/JMjbGWDFkG6GQ9WLQBvnmrLpBC7robPsdp03BnsajgynbYtqUWJXtW
	 OEeQlxyVR+6oGO/ZIkEnTIl9oj8gAyxlWeqlkEbgoFclw8wxd6Fc3SrFy3LPFw/25O
	 ExaSYP9Vkm4v4C3YclAyLc8jiSE+B58CUou1zzpq9dgtV1cKYZIp26CeYtpudmgZmy
	 ZoxfMKfeqwLydEX+NSf4gr//sWDM9L4lWeANURj0AMTiCWH7FzG9pJ7zB35ZKGIchW
	 xoPIx1Q7cCVSA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D3B641218;
	Tue,  9 Jul 2024 12:36:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2BF591BF97E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 12:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 184D74012A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 12:36:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RAGLHXl3qq2N for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jul 2024 12:36:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CA0F5400B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA0F5400B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA0F5400B5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jul 2024 12:36:47 +0000 (UTC)
X-CSE-ConnectionGUID: /N/Q5YxCRNuyLIw4Qsuy4w==
X-CSE-MsgGUID: WTpq6cG0QtOG526XaOFmvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17598170"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="17598170"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 05:36:47 -0700
X-CSE-ConnectionGUID: 9JLZV39JTOOy4CXHIPlqHQ==
X-CSE-MsgGUID: 1GWUB12CQ3+euqePU8EzoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="47776113"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.132])
 by orviesa010.jf.intel.com with ESMTP; 09 Jul 2024 05:36:46 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Jul 2024 14:34:57 +0200
Message-ID: <20240709123629.666151-9-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240709123629.666151-6-karol.kolacinski@intel.com>
References: <20240709123629.666151-6-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720528608; x=1752064608;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TUbwMCbAvbauDg71o7l7BEtvTh/1DLG3VL2z+zREaEo=;
 b=FZs0Znax6URTezUtsRJ6K3pPEH/SuBgA9dCoMx0aj/vha4n7frSXLBAk
 i1aMSmUSnNhTBfZPfHZMKTWa7ax7tjD7qZEezKKLP4q9njQ3JDCn1g3xg
 hXqUmqw1pod2vqESIGbqZOIhh1bXDXn5z+UWxfSUSm9uI50MsCVM96wWf
 lyjFR9H2REHrg7UtFZcTKtH287/bM4fNofSSoGhHLyk7I7iPk4vyW05Sz
 R238/CzqNmOnpwPQxTZxU7QkZGsWFc+lmHTXH9GNW7+RfNDAQd+EUU15T
 qwJ6K++LBFIQUxPUtvit7uMxgNWR/YSsY4PO7o4BzC7lBXBNQ/+PAeT3p
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FZs0Znax
Subject: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: Add timestamp ready
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
 drivers/net/ethernet/intel/ice/ice_ptp.c | 47 +++++-------------------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  3 +-
 2 files changed, 11 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ada2ede217b4..924e4160a414 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -962,28 +962,6 @@ ice_ptp_release_tx_tracker(struct ice_pf *pf, struct ice_ptp_tx *tx)
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
@@ -1007,24 +985,25 @@ ice_ptp_init_tx_e82x(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
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
+	tx->has_ready_bitmap = ice_get_phy_model(&pf->hw) != ICE_PHY_E810;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
@@ -3035,19 +3014,13 @@ static int ice_ptp_init_port(struct ice_pf *pf, struct ice_ptp_port *ptp_port)
 	mutex_init(&ptp_port->ps_lock);
 
 	switch (ice_get_phy_model(hw)) {
-	case ICE_PHY_ETH56G:
-		return ice_ptp_init_tx_eth56g(pf, &ptp_port->tx,
-					      ptp_port->port_num);
-	case ICE_PHY_E810:
-		return ice_ptp_init_tx_e810(pf, &ptp_port->tx);
 	case ICE_PHY_E82X:
 		kthread_init_delayed_work(&ptp_port->ov_work,
 					  ice_ptp_wait_for_offsets);
-
 		return ice_ptp_init_tx_e82x(pf, &ptp_port->tx,
 					    ptp_port->port_num);
 	default:
-		return -ENODEV;
+		return ice_ptp_init_tx(pf, &ptp_port->tx, ptp_port->port_num);
 	}
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index e495af509642..4cd75efef5ba 100644
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
2.45.2

