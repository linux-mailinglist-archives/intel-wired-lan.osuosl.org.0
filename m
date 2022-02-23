Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E224C060E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:28:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D993813F5;
	Wed, 23 Feb 2022 00:28:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id edik7bf424F5; Wed, 23 Feb 2022 00:28:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E13878125B;
	Wed, 23 Feb 2022 00:28:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1DFDC1BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DC21402BB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TpOuBvi0cKqt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 644E6408D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576044; x=1677112044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4ovjOeeY58xWAzvVfXW+DDBJdbT/8geJAGifdOzSakw=;
 b=kiQ0XAf1565dJkpJqfJY7TZ+64cOAu6eIQFMo8SDaaRY3HOCQBgQsJD3
 Y8TZb/lG+q8oyagEiJKjFFIkZ/UskWMifTykLtkUa4HzlvajNFv14Vs24
 cYmmCMka9FaPZ+zyvcL2H7ImzFCF7yaQKg4CAobS7dwY7pnhA2cnfx92a
 bQnho6QfBSfgzyc1HpR9WMKRVRZBfQSxDyRp82HgcIwh5NhDioxxuT0OT
 ZzJD93uV/wHivY81UrbEnYVDGU3WYC3d7jT+I6bhUz/9z82H8aYE5CUHi
 Aksz0gnhAcKsJcSN6HmaRlOy2hJhsCVwhEXFRRxjmqP7SmQtOq6ELCEns Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="239235837"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="239235837"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728046"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:27:04 -0800
Message-Id: <20220223002712.2771809-18-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 17/25] ice: drop is_vflr
 parameter from ice_reset_all_vfs
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

The ice_reset_all_vfs function takes a parameter to handle whether its
operating after a VFLR event or not. This is not necessary as every
caller always passes true. Simplify the interface by removing the
parameter.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c   | 4 ++--
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 5 ++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h | 4 ++--
 3 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a628fa9f1442..af4befb22d0d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -768,7 +768,7 @@ static void ice_do_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 		clear_bit(ICE_PREPARED_FOR_RESET, pf->state);
 		clear_bit(ICE_PFR_REQ, pf->state);
 		wake_up(&pf->reset_wait_queue);
-		ice_reset_all_vfs(pf, true);
+		ice_reset_all_vfs(pf);
 	}
 }
 
@@ -819,7 +819,7 @@ static void ice_reset_subtask(struct ice_pf *pf)
 			clear_bit(ICE_CORER_REQ, pf->state);
 			clear_bit(ICE_GLOBR_REQ, pf->state);
 			wake_up(&pf->reset_wait_queue);
-			ice_reset_all_vfs(pf, true);
+			ice_reset_all_vfs(pf);
 		}
 
 		return;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 282be49dbfed..996d84a3303d 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -356,7 +356,6 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
 /**
  * ice_reset_all_vfs - reset all allocated VFs in one go
  * @pf: pointer to the PF structure
- * @is_vflr: true if VFLR was issued, false if not
  *
  * First, tell the hardware to reset each VF, then do all the waiting in one
  * chunk, and finally finish restoring each VF after the wait. This is useful
@@ -365,7 +364,7 @@ ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m)
  *
  * Returns true if any VFs were reset, and false otherwise.
  */
-bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
+bool ice_reset_all_vfs(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
@@ -393,7 +392,7 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 
 	/* Begin reset on all VFs at once */
 	ice_for_each_vf(pf, bkt, vf)
-		ice_trigger_vf_reset(vf, is_vflr, true);
+		ice_trigger_vf_reset(vf, true, true);
 
 	/* HW requires some time to make sure it can flush the FIFO for a VF
 	 * when it resets it. Now that we've triggered all of the VFs, iterate
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 2a971e48b1cc..3ed8a56189d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -213,7 +213,7 @@ ice_vf_set_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 int
 ice_vf_clear_vsi_promisc(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m);
 bool ice_reset_vf(struct ice_vf *vf, bool is_vflr);
-bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr);
+bool ice_reset_all_vfs(struct ice_pf *pf);
 #else /* CONFIG_PCI_IOV */
 static inline struct ice_vf *ice_get_vf_by_id(struct ice_pf *pf, u16 vf_id)
 {
@@ -275,7 +275,7 @@ static inline bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 	return true;
 }
 
-static inline bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
+static inline bool ice_reset_all_vfs(struct ice_pf *pf)
 {
 	return true;
 }
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
