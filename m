Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7492838C95
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jan 2024 11:52:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4230241841;
	Tue, 23 Jan 2024 10:52:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4230241841
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706007144;
	bh=AXiIFM0z1dMWPb1b8deWPdC3pe9L9UXnT2s9hM/YSd0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DNlub/uJQ8UPn8PLamTIwEo+ItujvINvk17LWtJS/sJ/ZbWmuCtWgb8PvjLmvQ3bk
	 gUJjjV4yPT0uoZJCZ6tka4sQ97GY6TZe4muOW7fV+OdXPzjsGIwybhydQmAqxBaFwd
	 Bkd3GmEg0Jo08nWiMqNhP1rA4xeFqrI0MsytEUTK7xWNbdsba2R/BdYd5IfF5GMmwF
	 AkPv/kHvXpB6X8r9byWJCvuK8Ak7R6vlGi34KIqZnNkcDkryldT7TMh89XTdJYgvJf
	 xhrnEay9IOPyiguX0J5dza6ANWYv2pARBPh8D5hCwtz886TxTEX+Yx7h1Htj0P8UST
	 1b0YocmxZyTRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qIpCQaSJzSD5; Tue, 23 Jan 2024 10:52:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3ED5D41731;
	Tue, 23 Jan 2024 10:52:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3ED5D41731
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A38921BF299
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:52:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C4AF8238A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:52:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C4AF8238A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nT96s9Pi5zT6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 10:52:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D496682382
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 10:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D496682382
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="8877629"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; 
   d="scan'208";a="8877629"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 02:52:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="34365445"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa001.jf.intel.com with ESMTP; 23 Jan 2024 02:52:02 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jan 2024 11:51:29 +0100
Message-Id: <20240123105131.2842935-6-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240123105131.2842935-1-karol.kolacinski@intel.com>
References: <20240123105131.2842935-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706007124; x=1737543124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l0LvLUOCN//K2i3Cu/j3PDtY3ZDBcKhp/pYy5h/vNu4=;
 b=iQfcHe5MV1ijK9Q0vJHOG3ZyYvscIgaZoHw9F3uj3L44PnSrhDMLnzL6
 DHLYQS7z0v58ZpZk0g6QriKgYYoUuqw64LSM+qdQ64KHO1VWkFx4LUcss
 Bc4p0N6yo61vgfXzdSKraIEXWKx03mRbXxLJLSvffoC7mXS6yNnjoSD9+
 kRYpCeu1cDBUSxYnh+7S2xY76LaB0cmLoz4Us22jjNnbBkgcOhfFq671p
 CjBtJ5N8e/rCTR1oHOfxevTmVWcRcH2ZC6rWmX6HuByCUf1YQMzwrX+sC
 iDHyaI4v3I8HT5eOLXQI27KMsfTJaRyTG6cnOQ1ntLokTFNhkdPWa4/k3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iQfcHe5M
Subject: [Intel-wired-lan] [PATCH v7 iwl-next 5/7] ice: rename
 ice_ptp_tx_cfg_intr
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_ptp_tx_cfg_intr() function sends a control queue message to
configure the PHY timestamp interrupt block. This is a very similar name
to a function which is used to configure the MAC Other Interrupt Cause
Enable register.

Rename this function to ice_ptp_cfg_phy_interrupt in order to make it
more obvious to the reader what action it performs, and distinguish it
from other similarly named functions.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 69d11dbda22c..6f2a1ad5c2a3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1455,14 +1455,14 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
 }
 
 /**
- * ice_ptp_tx_ena_intr - Enable or disable the Tx timestamp interrupt
+ * ice_ptp_cfg_phy_interrupt - Configure PHY interrupt settings
  * @pf: PF private structure
  * @ena: bool value to enable or disable interrupt
  * @threshold: Minimum number of packets at which intr is triggered
  *
  * Utility function to enable or disable Tx timestamp interrupt and threshold
  */
-static int ice_ptp_tx_ena_intr(struct ice_pf *pf, bool ena, u32 threshold)
+static int ice_ptp_cfg_phy_interrupt(struct ice_pf *pf, bool ena, u32 threshold)
 {
 	struct ice_hw *hw = &pf->hw;
 	int err = 0;
@@ -2674,8 +2674,8 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	struct ice_ptp *ptp = &pf->ptp;
 	struct ice_hw *hw = &pf->hw;
 	struct timespec64 ts;
-	int err, itr = 1;
 	u64 time_diff;
+	int err;
 
 	if (ptp->state == ICE_PTP_READY) {
 		ice_ptp_prepare_for_reset(pf, reset_type);
@@ -2726,7 +2726,7 @@ void ice_ptp_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	if (!ice_is_e810(hw)) {
 		/* Enable quad interrupts */
-		err = ice_ptp_tx_ena_intr(pf, true, itr);
+		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
 		if (err)
 			goto err;
 	}
@@ -2979,7 +2979,7 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 {
 	struct ice_hw *hw = &pf->hw;
 	struct timespec64 ts;
-	int err, itr = 1;
+	int err;
 
 	err = ice_ptp_init_phc(hw);
 	if (err) {
@@ -3014,7 +3014,7 @@ static int ice_ptp_init_owner(struct ice_pf *pf)
 
 	if (!ice_is_e810(hw)) {
 		/* Enable quad interrupts */
-		err = ice_ptp_tx_ena_intr(pf, true, itr);
+		err = ice_ptp_cfg_phy_interrupt(pf, true, 1);
 		if (err)
 			goto err_exit;
 	}
-- 
2.40.1

