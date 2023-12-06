Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6D28078B5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 20:36:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B988F60B5D;
	Wed,  6 Dec 2023 19:36:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B988F60B5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701891408;
	bh=Ruka8TrIOVZOeJkmNJHi+Si9aH/y+JL/wigcUjMuCOM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KaFQDBljX8adnHj5NpS23wzcYh/9M1zM47epx/wXwNUoMza+amTOi08km/wb8wPFM
	 qwLMJHy8/0Tn8EVMwKrNUzNWpj2T8k3JBk3I5X3+I+emJBI56W4QCwEC34M3kBBu+T
	 2Vd5DlxJB+DINXD68Ef0wxx8dhOAsdY8jBvOQwp/EZXx4sCzbx92xVmL0TZKLjPimu
	 WeCAvnXJSIWADGyrnXKoC4cdKZvHz/mlK7ZuXLvLo3EaPathggcwRr3cRhgBQXJD5Z
	 lLriGC3RCwhPGdqOtSHjh181wkMYpJwH4334SbJCbHR4A9+VHoog6FayX5p50QCsTB
	 DvdCPFtZlT8gQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hmaRw7kAC6fb; Wed,  6 Dec 2023 19:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6480160B6A;
	Wed,  6 Dec 2023 19:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6480160B6A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CCACB1BF343
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A627E81E5A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:36:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A627E81E5A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aK3cUcuFyWVt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 19:36:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C44CD81E20
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:36:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C44CD81E20
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="1214432"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1214432"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 11:29:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="889446512"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="889446512"
Received: from unknown (HELO gklab-003-001.igk.intel.com) ([10.211.3.1])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2023 11:29:29 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Dec 2023 20:29:18 +0100
Message-Id: <20231206192919.3826128-3-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231206192919.3826128-1-grzegorz.nitka@intel.com>
References: <20231206192919.3826128-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701891397; x=1733427397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EtbxV+3dlFDlLU6eavI4GmCtRiztOc0sM01SAKbVkjA=;
 b=Mw2b3EMegZG/Za/u4TabgCHzRdIjwuzaw64rrIiJaQj2ZotSP0a3dCqp
 u0lkPLBAuaSlzHeETZQbhLYKNJEOWiQ6hZbO1VE0C6Jqu1OLgrZn4autP
 4zPrLOCnxFZUC+ZqYMygRUGUQeeBUNAod0jY4jn5m6w0+1K4hBP5Oz4nJ
 Ne0rCauSEHKUOVUDwhRIX75e/vrAGak7PeKnatWdFep+7zoZgGn4Vb9yz
 5ukGjQ9OJhHeci92/NeHNL8OdpYQMq75eafkypB6uQKh/xrCFEP/8YV2C
 DOHZVWZQB9MCiAmbFyAtaa2jmm9P8bunyaLGKvUvKFR6Yf39KDR5wD2hd
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Mw2b3EMe
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/3] ice: Add helper function
 ice_is_generic_mac
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
Cc: netdev@vger.kernel.org,
 Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

E800 series devices have a couple of quirks:
1. Sideband control queues are not supported
2. The registers that the driver needs to program for the "Precision
   Time Protocol (PTP)" feature are different for E800 series devices
   compared to other devices supported by this driver.

Both these require conditional logic based on the underlying device we
are dealing with.

The function ice_is_sbq_supported added by commit 8f5ee3c477a8
("ice: add support for sideband messages") addresses (1).
The same function can be used to address (2) as well
but this just looks weird readability wise in cases that have nothing
to do with sideband control queues:

	if (ice_is_sbq_supported(hw))
		/* program register A */
	else
		/* program register B */

For these cases, the function ice_is_generic_mac introduced by this
patch communicates the idea/intention better. Also rework
ice_is_sbq_supported to use this new function.
As side-band queue is supported for E825C devices, it's mac_type is
considered as generic mac_type.

Co-developed-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   | 12 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_controlq.c |  2 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  6 ++++--
 drivers/net/ethernet/intel/ice/ice_type.h     |  1 +
 5 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 0a519310472b..2a973fac8e54 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -169,6 +169,18 @@ static int ice_set_mac_type(struct ice_hw *hw)
 	return 0;
 }
 
+/**
+ * ice_is_generic_mac - check if device's mac_type is generic
+ * @hw: pointer to the hardware structure
+ *
+ * Return: true if mac_type is generic (with SBQ support), false if not
+ */
+bool ice_is_generic_mac(struct ice_hw *hw)
+{
+	return (hw->mac_type == ICE_MAC_GENERIC ||
+		hw->mac_type == ICE_MAC_GENERIC_3K_E825);
+}
+
 /**
  * ice_is_e810
  * @hw: pointer to the hardware structure
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 39be42ae3711..d0ef1fdd6493 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -111,6 +111,7 @@ ice_update_phy_type(u64 *phy_type_low, u64 *phy_type_high,
 int
 ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
 			struct ice_sq_cd *cd);
+bool ice_is_generic_mac(struct ice_hw *hw);
 bool ice_is_e810(struct ice_hw *hw);
 int ice_clear_pf_cfg(struct ice_hw *hw);
 int
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index e7d2474c431c..ffe660f34992 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -666,7 +666,7 @@ bool ice_is_sbq_supported(struct ice_hw *hw)
 	/* The device sideband queue is only supported on devices with the
 	 * generic MAC type.
 	 */
-	return hw->mac_type == ICE_MAC_GENERIC;
+	return ice_is_generic_mac(hw);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0c3b64f65a0d..71e6d1252df5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1649,8 +1649,10 @@ static void ice_clean_sbq_subtask(struct ice_pf *pf)
 {
 	struct ice_hw *hw = &pf->hw;
 
-	/* Nothing to do here if sideband queue is not supported */
-	if (!ice_is_sbq_supported(hw)) {
+	/* if mac_type is not generic, sideband is not supported
+	 * and there's nothing to do here
+	 */
+	if (!ice_is_generic_mac(hw)) {
 		clear_bit(ICE_SIDEBANDQ_EVENT_PENDING, pf->state);
 		return;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 1fff865d0661..935b1a3394de 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -132,6 +132,7 @@ enum ice_mac_type {
 	ICE_MAC_E810,
 	ICE_MAC_E830,
 	ICE_MAC_GENERIC,
+	ICE_MAC_GENERIC_3K_E825,
 };
 
 /* Media Types */
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
