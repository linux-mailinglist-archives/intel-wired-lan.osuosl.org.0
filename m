Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4995331E7CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Feb 2021 10:21:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF0E086362;
	Thu, 18 Feb 2021 09:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M-GrdzVax8nY; Thu, 18 Feb 2021 09:21:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDA8186364;
	Thu, 18 Feb 2021 09:21:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 668141BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 09:21:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 61B2086A16
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 09:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nHy0rPn1XmTs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Feb 2021 09:21:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6145786CEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 09:21:30 +0000 (UTC)
IronPort-SDR: y6yrfCZp14s/J73iJse+bCfpe4fwqAT1qpw+LvwUvc1+p2vEctvl3A1XlIV7zqCzzCnPFX3B3j
 rGL4eS2Ky90A==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="170579364"
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; d="scan'208";a="170579364"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 01:21:28 -0800
IronPort-SDR: 4Rjgl73XWwLSgCqz5yibv27cwoirMzKsn2oGoJ9znKOpnbSwgoqTRV543LZtMGxEHiV7gNpMTa
 oqndp6SwHYAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,186,1610438400"; d="scan'208";a="428030467"
Received: from amlin-018-147.igk.intel.com ([10.102.18.147])
 by fmsmga002.fm.intel.com with ESMTP; 18 Feb 2021 01:21:26 -0800
From: Eryk Rybak <eryk.roch.rybak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Feb 2021 11:15:26 +0000
Message-Id: <20210218111526.71493-1-eryk.roch.rybak@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix kernel oops when i40e
 driver removes VF's
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
Cc: Eryk Rybak <eryk.roch.rybak@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the reason of kernel oops when i40e driver removed VFs.
Added new __I40E_VFS_RELEASING state to signalize releasing
process by PF, that it makes possible to exit of reset VF procedure.
Without this patch, it is possible to suspend the VFs reset by
releasing VFs resources procedure. Retrying the reset after the
timeout works on the freed VF memory causing a kernel oops.

Fixes: d43d60e5eb95("i40e: ensure reset occurs when disabling VF")
Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h             | 1 +
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 9 +++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 118473d..fe12587 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -142,6 +142,7 @@ enum i40e_state_t {
 	__I40E_VIRTCHNL_OP_PENDING,
 	__I40E_RECOVERY_MODE,
 	__I40E_VF_RESETS_DISABLED,	/* disable resets during i40e_remove */
+	__I40E_VFS_RELEASING,
 	/* This must be last as it determines the size of the BITMAP */
 	__I40E_STATE_SIZE__,
 };
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 1b6ec9b..0c6cbe9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -137,6 +137,7 @@ void i40e_vc_notify_vf_reset(struct i40e_vf *vf)
  **/
 static inline void i40e_vc_disable_vf(struct i40e_vf *vf)
 {
+	struct i40e_pf *pf = vf->pf;
 	int i;
 
 	i40e_vc_notify_vf_reset(vf);
@@ -147,6 +148,11 @@ static inline void i40e_vc_disable_vf(struct i40e_vf *vf)
 	 * ensure a reset.
 	 */
 	for (i = 0; i < 20; i++) {
+		/* If pf is in vfs releasing state reset vf is impossible,
+		 * so leave it.
+		 */
+		if (test_bit(__I40E_VFS_RELEASING, pf->state))
+			return;
 		if (i40e_reset_vf(vf, false))
 			return;
 		usleep_range(10000, 20000);
@@ -1574,6 +1580,8 @@ void i40e_free_vfs(struct i40e_pf *pf)
 
 	if (!pf->vf)
 		return;
+
+	set_bit(__I40E_VFS_RELEASING, pf->state);
 	while (test_and_set_bit(__I40E_VF_DISABLE, pf->state))
 		usleep_range(1000, 2000);
 
@@ -1631,6 +1639,7 @@ void i40e_free_vfs(struct i40e_pf *pf)
 		}
 	}
 	clear_bit(__I40E_VF_DISABLE, pf->state);
+	clear_bit(__I40E_VFS_RELEASING, pf->state);
 }
 
 #ifdef CONFIG_PCI_IOV

base-commit: e4b62cf7559f2ef9a022de235e5a09a8d7ded520
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
