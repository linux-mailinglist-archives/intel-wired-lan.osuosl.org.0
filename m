Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9518A713C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2019 19:00:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1099A880CB;
	Tue,  3 Sep 2019 17:00:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id odF8ARmX6Gqs; Tue,  3 Sep 2019 17:00:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 064AD87EBA;
	Tue,  3 Sep 2019 17:00:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6CE31BF27F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 17:00:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E4A672286F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 17:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WvoiPLjT426j for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2019 17:00:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id E99562270C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2019 17:00:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 10:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="187320659"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga006.jf.intel.com with ESMTP; 03 Sep 2019 10:00:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Sep 2019 01:31:02 -0700
Message-Id: <20190903083108.19593-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903083108.19593-1-anthony.l.nguyen@intel.com>
References: <20190903083108.19593-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S28 v2 3/9] ice: Check for DCB capability
 before initializing DCB
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

Check the ICE_FLAG_DCB_CAPABLE before calling ice_init_pf_dcb.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  3 ---
 drivers/net/ethernet/intel/ice/ice_main.c    | 15 ++++++++-------
 2 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index e922adf1fa15..20f440a64650 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -474,7 +474,6 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 		}
 
 		pf->dcbx_cap = DCB_CAP_DCBX_HOST | DCB_CAP_DCBX_VER_IEEE;
-		set_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
 		return 0;
 	}
 
@@ -483,8 +482,6 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 	/* DCBX in FW and LLDP enabled in FW */
 	pf->dcbx_cap = DCB_CAP_DCBX_LLD_MANAGED | DCB_CAP_DCBX_VER_IEEE;
 
-	set_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
-
 	err = ice_dcb_init_cfg(pf, locked);
 	if (err)
 		goto dcb_init_err;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 703fc7bf2b31..8bb3b81876a9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2252,6 +2252,8 @@ static void ice_deinit_pf(struct ice_pf *pf)
 static int ice_init_pf(struct ice_pf *pf)
 {
 	bitmap_zero(pf->flags, ICE_PF_FLAGS_NBITS);
+	if (pf->hw.func_caps.common_cap.dcb)
+		set_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
 #ifdef CONFIG_PCI_IOV
 	if (pf->hw.func_caps.common_cap.sr_iov_1_1) {
 		struct ice_hw *hw = &pf->hw;
@@ -2529,13 +2531,12 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_init_pf_unroll;
 	}
 
-	err = ice_init_pf_dcb(pf, false);
-	if (err) {
-		clear_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
-		clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
-
-		/* do not fail overall init if DCB init fails */
-		err = 0;
+	if (test_bit(ICE_FLAG_DCB_CAPABLE, pf->flags)) {
+		/* Note: DCB init failure is non-fatal to load */
+		if (ice_init_pf_dcb(pf, false)) {
+			clear_bit(ICE_FLAG_DCB_CAPABLE, pf->flags);
+			clear_bit(ICE_FLAG_DCB_ENA, pf->flags);
+		}
 	}
 
 	ice_determine_q_usage(pf);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
