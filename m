Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF94625B076
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Sep 2020 17:59:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 697628726F;
	Wed,  2 Sep 2020 15:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zAj73lRXprbe; Wed,  2 Sep 2020 15:59:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 017ED87280;
	Wed,  2 Sep 2020 15:59:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D56311BF489
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:59:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CE6502033D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id otpGBq4XP6DQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Sep 2020 15:58:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id E8F8B2266C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:58:55 +0000 (UTC)
IronPort-SDR: gwH+CAc8lcH9fWM4j2FPAbFYCqNXN3B3Vo2gazAMbUQhLMf2FtE6LDTcOEjJByhJRR67OM/U0n
 Lp7lDopHIx7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="158409182"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="158409182"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 08:58:54 -0700
IronPort-SDR: B6lYKXWdDOZZWx7YXe0M5biF+rw8wAesBrKG1F5i8iqXs1RkBhZMe+jW3Rn7zS2vpseY+VBPDQ
 pntsorGznaXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="301882259"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 02 Sep 2020 08:58:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Sep 2020 08:53:46 -0700
Message-Id: <20200902155347.16972-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
References: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net 5/6] ice: fix memory leak if
 register_netdev_fails
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

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_setup_pf_sw function can cause a memory leak if register_netdev
fails, due to accidentally failing to free the VSI rings. Fix the memory
leak by using ice_vsi_release, ensuring we actually go through the full
teardown process.

This should be safe even if the netdevice is not registered because we
will have set the netdev pointer to NULL, ensuring ice_vsi_release won't
call unregister_netdev.

An alternative fix would be moving management of the PF VSI netdev into
the main VSI setup code. This is complicated and likely requires
significant refactor in how we manage VSIs

Fixes: 3a858ba392c3 ("ice: Add support for VSI allocation and deallocation")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  |  6 +++---
 drivers/net/ethernet/intel/ice/ice_lib.h  |  6 ------
 drivers/net/ethernet/intel/ice/ice_main.c | 13 +++----------
 3 files changed, 6 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f2682776f8c8..65cc78279501 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -246,7 +246,7 @@ static int ice_get_free_slot(void *array, int size, int curr)
  * ice_vsi_delete - delete a VSI from the switch
  * @vsi: pointer to VSI being removed
  */
-void ice_vsi_delete(struct ice_vsi *vsi)
+static void ice_vsi_delete(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
 	struct ice_vsi_ctx *ctxt;
@@ -313,7 +313,7 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
  *
  * Returns 0 on success, negative on failure
  */
-int ice_vsi_clear(struct ice_vsi *vsi)
+static int ice_vsi_clear(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = NULL;
 	struct device *dev;
@@ -563,7 +563,7 @@ static int ice_vsi_get_qs(struct ice_vsi *vsi)
  * ice_vsi_put_qs - Release queues from VSI to PF
  * @vsi: the VSI that is going to release queues
  */
-void ice_vsi_put_qs(struct ice_vsi *vsi)
+static void ice_vsi_put_qs(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
 	int i;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 981f3a156c24..3da17895a2b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -45,10 +45,6 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc);
 
 void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
 
-void ice_vsi_delete(struct ice_vsi *vsi);
-
-int ice_vsi_clear(struct ice_vsi *vsi);
-
 #ifdef CONFIG_DCB
 int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc);
 #endif /* CONFIG_DCB */
@@ -79,8 +75,6 @@ bool ice_is_reset_in_progress(unsigned long *state);
 void
 ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16 pf_q, u32 rxdid, u32 prio);
 
-void ice_vsi_put_qs(struct ice_vsi *vsi);
-
 void ice_vsi_dis_irq(struct ice_vsi *vsi);
 
 void ice_vsi_free_irq(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ebec34d23865..d148bb71f290 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3178,10 +3178,8 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 		return -EBUSY;
 
 	vsi = ice_pf_vsi_setup(pf, pf->hw.port_info);
-	if (!vsi) {
-		status = -ENOMEM;
-		goto unroll_vsi_setup;
-	}
+	if (!vsi)
+		return -ENOMEM;
 
 	status = ice_cfg_netdev(vsi);
 	if (status) {
@@ -3228,12 +3226,7 @@ static int ice_setup_pf_sw(struct ice_pf *pf)
 	}
 
 unroll_vsi_setup:
-	if (vsi) {
-		ice_vsi_free_q_vectors(vsi);
-		ice_vsi_delete(vsi);
-		ice_vsi_put_qs(vsi);
-		ice_vsi_clear(vsi);
-	}
+	ice_vsi_release(vsi);
 	return status;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
