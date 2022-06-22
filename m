Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D6E5544F1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jun 2022 11:44:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22642844F5;
	Wed, 22 Jun 2022 09:44:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22642844F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655891077;
	bh=yXLdQxj9ur8wmua7pNW86YNXP34+qCp2aiUcb69RdiU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=EPGA+sK1nFMuwNM3DSx4zvoHWwEnlS2QMzaIV774BGd7spHwFvPLseTSAYj3ZDGA7
	 GPfBWhBK+M5jXiSPRfqS0M/pKCFASMQ1K0jr9e9KVTF/V3eRM+XeQt6G25OYTGEdsT
	 atuVuJdoO2SBxqIh/I4iszrUHLpepuu/B2OM/DoeGY19GAxiBZFFRdErErjhE2mKLQ
	 i0e+HcAbqaxysGynbM8XrKEA9KgoU0yu6fESGnQySGyipBuN4lX60o44NM2MEmYiFN
	 KiMPg77/El+yYdRLaFrg23KesOn44hSy9k8fi0FAhlOCCNyaAcj4D3MYOEFCmE8qaz
	 7gLoGtpAPZGIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K0AOXbDitUNm; Wed, 22 Jun 2022 09:44:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C373844E1;
	Wed, 22 Jun 2022 09:44:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C373844E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 68C8B1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 09:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3D3B141CD3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 09:44:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D3B141CD3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z7KOK6roQIcK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jun 2022 09:44:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6EAA41CC1
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6EAA41CC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jun 2022 09:44:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="281102088"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="281102088"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 02:44:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="585645585"
Received: from s240.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.202])
 by orsmga007.jf.intel.com with ESMTP; 22 Jun 2022 02:44:26 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jun 2022 11:46:54 +0200
Message-Id: <20220622094654.1379722-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655891069; x=1687427069;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ImIw0dxj2TpW6cKw+gxN7cRpoiSZl3p3+gUp66LYcp8=;
 b=TWOlDyPg7L7eMzwtvUrdCRqlfptspF2ul01zxLTNEAskPHAeuly8NE1z
 VVyfxAN8tKxUmlUtKCqnW0Ofj01lDA16TBvAa45EXVqw+u0JKNGw2cvQU
 tWI1aRNccTEefCSIDRMgQLw5J0pQhevYJRq9IcVTdTVjGVTyt4dl6VT++
 cH+OM+Ef4bgEPiVyQZxHF0FjYyflEOsqYaQtFXSrLG6Yj6DGnNqEKkHA1
 56A1Q8whd2Df24z8llt8JC3pf1SNz/rytxHjISDDwhfEtZ2xJOytt/5vQ
 +lEPLHrzgKdGg0RDSrzcP+Y966k40ZhhJ0OOlSOU8Hq3531tjUosWisX3
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TWOlDyPg
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix erroneous adapter
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

From: Dawid Lukwinski <dawid.lukwinski@intel.com>

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
Signed-off-by: Dawid Lukwinski <dawid.lukwinski@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
v2: Change author to Dawid, and remove signed-off-by from Alice
---
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
