Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E06A0542ACA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 11:11:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8CE1419F3;
	Wed,  8 Jun 2022 09:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FTwFy-Ney6sn; Wed,  8 Jun 2022 09:11:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F7D841945;
	Wed,  8 Jun 2022 09:11:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0AC1E1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:11:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EBEA641945
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:11:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FKh8mjpdd_MS for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 09:11:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91EDB41922
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654679465; x=1686215465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=B+DzPiwXFFQMHlOcIyqsWSIxe71pkiWiD55HmK0+Jdc=;
 b=hVZrN19+pIPN6GoAUOSaAAmiZQ/wMFKqh74vaBs92xcvgRccAVRWsQKo
 Blt7TwoTsW8s0w+Vr914VT6ylhybGt0Dd04V3s3R+mSgISWK2favJ+SqA
 hJGSPdD+hIR5Al0STb2I8N5JgxUaiHCrkn27XVqLyhaV8HjT2DpKG2wDC
 sMvmsB7Dy2C7+6qGZnMi/fzbjRzEybKR7EF1x/TT9ZblHQO2t7kOmv+Vm
 LOVqWpy0jFSAaAn+sIetuzUyveWwB7dMcKKosk1H584soiFDq/GBgHN67
 4Ecb5wiA4CdQgnI7YR4tSkD2KLbYDwsSxlVS7Dy953/Q4qZr+QOj68XNi w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="278009245"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="278009245"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 02:10:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="533020557"
Received: from s240.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.202])
 by orsmga003.jf.intel.com with ESMTP; 08 Jun 2022 02:10:55 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Jun 2022 11:13:21 +0200
Message-Id: <20220608091321.394492-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix erroneous adapter
 reinitialization during recovery process
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
Cc: Dawid Lukwinski <dawid.lukwinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alice Michael <alice.michael@intel.com>

Fix an issue, when driver incorrectly detects state
of recovery process and erroneously reinitializes interrupts,
which results in a kernel error and call trace message.

The issue was caused by a combination of two factors:
1. Assuming the EMP reset issued after completing
firmware recovery means the whole recovery process is complete.
2. Erroneous reinitialization of interrupt vector after detecting
the abovementioned EMP reset.

Fixes (1) by changing how recovery state change is detected
and (2) by adjusting the conditional expression to ensure using proper
interrupt reinitialization method, depending on the situation.

Fixes: 4ff0ee1af016 ("i40e: Introduce recovery mode support")
Signed-off-by: Alice Michael <alice.michael@intel.com>
Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d59b9a08f5b3..685556e968f2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -10654,7 +10654,7 @@ static int i40e_reset(struct i40e_pf *pf)
  **/
 static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 {
-	int old_recovery_mode_bit = test_bit(__I40E_RECOVERY_MODE, pf->state);
+	const bool is_recovery_mode_reported = i40e_check_recovery_mode(pf);
 	struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 	struct i40e_hw *hw = &pf->hw;
 	i40e_status ret;
@@ -10662,13 +10662,11 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	int v;
 
 	if (test_bit(__I40E_EMP_RESET_INTR_RECEIVED, pf->state) &&
-	    i40e_check_recovery_mode(pf)) {
+	    is_recovery_mode_reported)
 		i40e_set_ethtool_ops(pf->vsi[pf->lan_vsi]->netdev);
-	}
 
 	if (test_bit(__I40E_DOWN, pf->state) &&
-	    !test_bit(__I40E_RECOVERY_MODE, pf->state) &&
-	    !old_recovery_mode_bit)
+	    !test_bit(__I40E_RECOVERY_MODE, pf->state))
 		goto clear_recovery;
 	dev_dbg(&pf->pdev->dev, "Rebuilding internal switch\n");
 
@@ -10695,13 +10693,12 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	 * accordingly with regard to resources initialization
 	 * and deinitialization
 	 */
-	if (test_bit(__I40E_RECOVERY_MODE, pf->state) ||
-	    old_recovery_mode_bit) {
+	if (test_bit(__I40E_RECOVERY_MODE, pf->state)) {
 		if (i40e_get_capabilities(pf,
 					  i40e_aqc_opc_list_func_capabilities))
 			goto end_unlock;
 
-		if (test_bit(__I40E_RECOVERY_MODE, pf->state)) {
+		if (is_recovery_mode_reported) {
 			/* we're staying in recovery mode so we'll reinitialize
 			 * misc vector here
 			 */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
