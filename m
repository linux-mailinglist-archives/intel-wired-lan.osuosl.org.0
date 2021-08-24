Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC923F5566
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 03:13:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E81F40406;
	Tue, 24 Aug 2021 01:13:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QTg61IYK4Rxp; Tue, 24 Aug 2021 01:13:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04E4740409;
	Tue, 24 Aug 2021 01:13:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F28D1BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 01:13:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A6FD80D6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 01:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dOaAtRK-uNZ3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 01:13:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E06E680D3F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 01:13:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="214085352"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="214085352"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 18:13:14 -0700
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; d="scan'208";a="685025452"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 18:13:13 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 23 Aug 2021 18:12:59 -0700
Message-Id: <20210824011259.738307-4-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210824011259.738307-1-jesse.brandeburg@intel.com>
References: <20210824011259.738307-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3 3/3] ice: fix software
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
index 33573774647f..44e50d511a49 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1361,21 +1361,25 @@ static void ice_enable_interrupt(struct ice_q_vector *q_vector)
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
