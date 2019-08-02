Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F317FEF5
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Aug 2019 18:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57FFA878A5;
	Fri,  2 Aug 2019 16:54:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6v0wA-LPAziV; Fri,  2 Aug 2019 16:54:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F76E87D57;
	Fri,  2 Aug 2019 16:54:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 98EC31BF9BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 16:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8CAFA8775B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 16:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JWrC5xP8wrHr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Aug 2019 16:54:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C8D13876EE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Aug 2019 16:54:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 09:53:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,338,1559545200"; d="scan'208";a="175640942"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga003.jf.intel.com with ESMTP; 02 Aug 2019 09:53:58 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  2 Aug 2019 01:25:23 -0700
Message-Id: <20190802082533.23083-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190802082533.23083-1-anthony.l.nguyen@intel.com>
References: <20190802082533.23083-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S26 05/15] ice: Rework ice_ena_msix_range
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

The current implementation of ice_ena_msix_range is difficult to read
and has subtle issues. This patch reworks the said function for
clarity and correctness.

More specifically,

1. Add more checks to bail out of 'needed' is greater than 'v_left'.

2. Simplify fallback logic

3. Do not set pf->num_avail_sw_msix in ice_ena_msix_range as it
   gets overwritten by ice_init_interrupt_scheme.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 32 +++++++++++++++--------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0eefac05eae1..0d850d92cd5c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2317,13 +2317,18 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 
 	/* reserve one vector for miscellaneous handler */
 	needed = 1;
+	if (v_left < needed)
+		goto no_hw_vecs_left_err;
 	v_budget += needed;
 	v_left -= needed;
 
 	/* reserve vectors for LAN traffic */
-	pf->num_lan_msix = min_t(int, num_online_cpus(), v_left);
-	v_budget += pf->num_lan_msix;
-	v_left -= pf->num_lan_msix;
+	needed = min_t(int, num_online_cpus(), v_left);
+	if (v_left < needed)
+		goto no_hw_vecs_left_err;
+	pf->num_lan_msix = needed;
+	v_budget += needed;
+	v_left -= needed;
 
 	pf->msix_entries = devm_kcalloc(&pf->pdev->dev, v_budget,
 					sizeof(*pf->msix_entries), GFP_KERNEL);
@@ -2348,18 +2353,18 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 
 	if (v_actual < v_budget) {
 		dev_warn(&pf->pdev->dev,
-			 "not enough vectors. requested = %d, obtained = %d\n",
+			 "not enough OS MSI-X vectors. requested = %d, obtained = %d\n",
 			 v_budget, v_actual);
-		if (v_actual >= (pf->num_lan_msix + 1)) {
-			pf->num_avail_sw_msix = v_actual -
-						(pf->num_lan_msix + 1);
-		} else if (v_actual >= 2) {
-			pf->num_lan_msix = 1;
-			pf->num_avail_sw_msix = v_actual - 2;
-		} else {
+/* 2 vectors for LAN (traffic + OICR) */
+#define ICE_MIN_LAN_VECS 2
+
+		if (v_actual < ICE_MIN_LAN_VECS) {
+			/* error if we can't get minimum vectors */
 			pci_disable_msix(pf->pdev);
 			err = -ERANGE;
 			goto msix_err;
+		} else {
+			pf->num_lan_msix = ICE_MIN_LAN_VECS;
 		}
 	}
 
@@ -2369,6 +2374,11 @@ static int ice_ena_msix_range(struct ice_pf *pf)
 	devm_kfree(&pf->pdev->dev, pf->msix_entries);
 	goto exit_err;
 
+no_hw_vecs_left_err:
+	dev_err(&pf->pdev->dev,
+		"not enough device MSI-X vectors. requested = %d, available = %d\n",
+		needed, v_left);
+	err = -ERANGE;
 exit_err:
 	pf->num_lan_msix = 0;
 	return err;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
