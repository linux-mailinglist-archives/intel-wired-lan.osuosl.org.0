Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE82350908
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:27:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 570CC60B78;
	Wed, 31 Mar 2021 21:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sz--QXbWwN79; Wed, 31 Mar 2021 21:26:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44DED60AD5;
	Wed, 31 Mar 2021 21:26:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BFEE91BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AECBE8496D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Ai0EOw-y0cB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:26:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BED7984958
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:53 +0000 (UTC)
IronPort-SDR: 8Q5tSyENXOSQpOncE0TXgtF+Yn+J5yVyGu3UIInd/DjJp3bNx/TSjM8CQTHWqaajK9Rb57n7EC
 CDQBNOGIH6Ow==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192117304"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="192117304"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:51 -0700
IronPort-SDR: xR0D+Jj2BmI1R7063x+MWJD4rh5ydgSJOGEXi7zXV8voPD8iJT1bTG8vtrEivqKge/X8iszRMs
 SsWgsa9pEtoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="445819636"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2021 14:26:51 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 14:16:58 -0700
Message-Id: <20210331211708.55205-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S58 03/13] ice: manage interrupts during
 poll exit
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

The driver would occasionally miss that there were outstanding
descriptors to clean when exiting busy/napi poll. This issue has
been in the code since the introduction of the ice driver.

Attempt to "catch" any remaining work by triggering a software
interrupt when exiting napi poll or busy-poll. This will not
cause extra interrupts in the case of normal execution.

This issue was found when running sfnt-pingpong, with busy
poll enabled, and typically with larger I/O sizes like > 8192,
the program would occasionally report > 1 second maximums
to complete a ping pong.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx.c       | 13 ++++++++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index a501e2b7e09e..9b8300d4a267 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -131,6 +131,7 @@
 #define GLINT_DYN_CTL_ITR_INDX_M		ICE_M(0x3, 3)
 #define GLINT_DYN_CTL_INTERVAL_S		5
 #define GLINT_DYN_CTL_INTERVAL_M		ICE_M(0xFFF, 5)
+#define GLINT_DYN_CTL_SW_ITR_INDX_ENA_M		BIT(24)
 #define GLINT_DYN_CTL_SW_ITR_INDX_M		ICE_M(0x3, 25)
 #define GLINT_DYN_CTL_WB_ON_ITR_M		BIT(30)
 #define GLINT_DYN_CTL_INTENA_MSK_M		BIT(31)
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 035fac5f74dc..ac22457f3bf8 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1302,6 +1302,7 @@ static u32 ice_buildreg_itr(u16 itr_idx, u16 itr)
 static void ice_update_ena_itr(struct ice_q_vector *q_vector)
 {
 	struct ice_vsi *vsi = q_vector->vsi;
+	bool wb_en = q_vector->wb_on_itr;
 	u32 itr_val;
 
 	if (test_bit(ICE_DOWN, vsi->state))
@@ -1310,7 +1311,7 @@ static void ice_update_ena_itr(struct ice_q_vector *q_vector)
 	/* When exiting WB_ON_ITR, let ITR resume its normal
 	 * interrupts-enabled path.
 	 */
-	if (q_vector->wb_on_itr)
+	if (wb_en)
 		q_vector->wb_on_itr = false;
 
 	/* This will do nothing if dynamic updates are not enabled. */
@@ -1318,6 +1319,16 @@ static void ice_update_ena_itr(struct ice_q_vector *q_vector)
 
 	/* net_dim() updates ITR out-of-band using a work item */
 	itr_val = ice_buildreg_itr(ICE_ITR_NONE, 0);
+	/* trigger an immediate software interrupt when exiting
+	 * busy poll, to make sure to catch any pending cleanups
+	 * that might have been missed due to interrupt state
+	 * transition.
+	 */
+	if (wb_en) {
+		itr_val |= GLINT_DYN_CTL_SWINT_TRIG_M |
+			   GLINT_DYN_CTL_SW_ITR_INDX_M |
+			   GLINT_DYN_CTL_SW_ITR_INDX_ENA_M;
+	}
 	wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx), itr_val);
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
