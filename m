Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A35E33F209D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 21:30:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BD9D4253F;
	Thu, 19 Aug 2021 19:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Vjp1dFxwbxe; Thu, 19 Aug 2021 19:30:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AE89404C5;
	Thu, 19 Aug 2021 19:30:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C0481BF59F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:30:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7F97424F7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OiJ96nEGxYSV for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Aug 2021 19:30:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A08A442504
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Aug 2021 19:30:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="216665557"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="216665557"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 12:30:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="451749606"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 12:29:59 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 19 Aug 2021 12:29:59 -0700
Message-Id: <20210819192959.590146-4-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210819192959.590146-1-jesse.brandeburg@intel.com>
References: <20210819192959.590146-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 3/3] ice-linux: fix software
 generating extra interrupts
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

The driver tried to work around missing completion events that occurred
while interrupts are disabled, by triggering a software interrupt
whenever we exit polling (but we had to have polled at least once).

This was causing a *lot* of extra interrupts for some workloads like
NVMe over TCP, which resulted in regressions in performance. It was also
visible when polling didn't prevent interrupts when busy_poll was
enabled.

Fix the extra interrupts by utilizing our previously unused 3rd ITR
(interrupt throttle) index and set it to 20K interrupts per second, and
then trigger a software interrupt within that rate limit.

While here, slightly refactor the code to avoid an overwrite of a local
variable in the case of wb_en = true.

Fixes: b7306b42beaf ("ice: manage interrupts during poll exit")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 .../net/ethernet/intel/ice/ice_hw_autogen.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 26 +++++++++++--------
 2 files changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index ab5065b5e748..d16738a3d3a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -183,6 +183,7 @@
 #define GLINT_DYN_CTL_INTERVAL_S		5
 #define GLINT_DYN_CTL_INTERVAL_M		ICE_M(0xFFF, 5)
 #define GLINT_DYN_CTL_SW_ITR_INDX_ENA_M		BIT(24)
+#define GLINT_DYN_CTL_SW_ITR_INDX_S		25
 #define GLINT_DYN_CTL_SW_ITR_INDX_M		ICE_M(0x3, 25)
 #define GLINT_DYN_CTL_WB_ON_ITR_M		BIT(30)
 #define GLINT_DYN_CTL_INTENA_MSK_M		BIT(31)
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index fec95ea486e4..b95cb4c3d86e 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1323,21 +1323,25 @@ static void ice_enable_interrupt(struct ice_q_vector *q_vector)
 	if (test_bit(ICE_DOWN, vsi->state))
 		return;
 
-	/* When exiting WB_ON_ITR, let ITR resume its normal
-	 * interrupts-enabled path.
+	/* trigger an ITR delayed software interrupt when exiting busy poll, to
+	 * make sure to catch any pending cleanups that might have been missed
+	 * due to interrupt state transition. If busy poll or poll isn't
+	 * enabled, then don't update ITR, and just enable the interrupt.
 	 */
-	if (wb_en)
+	if (!wb_en) {
+		itr_val = ice_buildreg_itr(ICE_ITR_NONE, 0);
+	} else {
 		q_vector->wb_on_itr = false;
 
-	itr_val = ice_buildreg_itr(ICE_ITR_NONE, 0);
-	/* trigger an immediate software interrupt when exiting
-	 * busy poll, to make sure to catch any pending cleanups
-	 * that might have been missed due to interrupt state
-	 * transition.
-	 */
-	if (wb_en) {
+		/* do two things here with a single write. Set up the third ITR
+		 * index to be used for software interrupt moderation, and then
+		 * trigger a software interrupt with a rate limit of 20K on
+		 * software interrupts, this will help avoid high interrupt
+		 * loads due to frequently polling and exiting polling.
+		 */
+		itr_val = ice_buildreg_itr(ICE_IDX_ITR2, ICE_ITR_20K);
 		itr_val |= GLINT_DYN_CTL_SWINT_TRIG_M |
-			   GLINT_DYN_CTL_SW_ITR_INDX_M |
+			   ICE_IDX_ITR2 << GLINT_DYN_CTL_SW_ITR_INDX_S |
 			   GLINT_DYN_CTL_SW_ITR_INDX_ENA_M;
 	}
 	wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx), itr_val);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
