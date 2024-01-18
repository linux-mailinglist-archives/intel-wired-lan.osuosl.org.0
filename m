Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F77831EB0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 18:46:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADDBE84404;
	Thu, 18 Jan 2024 17:46:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADDBE84404
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705600000;
	bh=AXiIFM0z1dMWPb1b8deWPdC3pe9L9UXnT2s9hM/YSd0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UmC2znAWqq1VE6rT41UHvatpnhpXxjOQQ09z5JTbvB/AqblPx/YWkSpd0ooqW/7hU
	 mQepcjbkEjTlHRhgdhGys46xaH9+pW3YtSnqP9Xjsj1kgjx4tsLcPSaw5qQ04O0pOs
	 PMhHN+P3UXr7YXcW0b/6jioVOEfOvvDkneJ/+4A65TFVjCTf7dc6VIjD8rBj/jkf81
	 AiBgpGpibQQ/FXQveYQAb2XeWFiijyLGitfagGEkVjIVhpvHInNkcp/SjHYSRzsu1R
	 y5bn8txLFbOh7oP9J0RZY4yZlEz79n2xN7Y9QWvFm6bsCKANVVqa5AZ68G1qfoczHU
	 c7SNwMLrcY+vA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FUIHrIVIHEje; Thu, 18 Jan 2024 17:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C561C83EEF;
	Thu, 18 Jan 2024 17:46:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C561C83EEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CAC661BF376
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:46:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3F5D6F5EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:46:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3F5D6F5EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RwPIeDjlQ3po for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 17:46:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 131FF6F602
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:46:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 131FF6F602
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="22001412"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="22001412"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 09:46:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="26819798"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa001.fm.intel.com with ESMTP; 18 Jan 2024 09:46:16 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Jan 2024 18:45:50 +0100
Message-Id: <20240118174552.2565889-6-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240118174552.2565889-1-karol.kolacinski@intel.com>
References: <20240118174552.2565889-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705599978; x=1737135978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l0LvLUOCN//K2i3Cu/j3PDtY3ZDBcKhp/pYy5h/vNu4=;
 b=ftK2w7DMhyr1Hy8Qm8puShgSdwiPefFAgVBQI7QTELE6S/1TBZumbXNJ
 ty2gCKDCw/Ado93ybIJ4aKOoYDekJyyfrAdXMfaCGwD1eVUvQb6wrg3nN
 9LPugjN/kv6tMedEQFNM7IS49OGrfQmAJ0I5HFNbmZAtzAN3QOdzsk6Sj
 FVdAgdSu+WXcAr8DIP3ZDAj04epOnPKip8+8vNjGTKYnrQIAdzDJmdKf9
 Sye2R8syt1dPH9cQn6NVt1e1d9crSYn++/ASO+5n2hnuMrFH3Vayz+T5c
 7FFHlStkW/5q6sMUETiUQLRP193MoWPRrKxOESxj4xihdRmZ7D6hGxqqH
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ftK2w7DM
Subject: [Intel-wired-lan] [PATCH v6 iwl-next 5/7] ice: rename
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

