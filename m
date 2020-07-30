Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 612C82328AE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jul 2020 02:23:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F13AC87B32;
	Thu, 30 Jul 2020 00:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SfHsg6lEA1Hr; Thu, 30 Jul 2020 00:23:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 328528821C;
	Thu, 30 Jul 2020 00:23:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 11CBC1BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E582424CEB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BxDBD0pNtUjT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jul 2020 00:23:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id AF3CB24DD1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:51 +0000 (UTC)
IronPort-SDR: kHzWc8P5RPEXjqzZrNcoqRKsPH8IlrF1kJs8BDt/fOEZJFoVaTcHFWNXVdtEBhNa58NobXpKN+
 0Qmq/MzGVxQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="216004460"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="216004460"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:23:50 -0700
IronPort-SDR: Gl19x3ke4zjoD29AUcSjUlEinzeCjBFLcGxScdDuVp4g349RcDZu+GI8arqbOGWErAxRkpihz5
 PG//lMRkkVWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="320908819"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga008.jf.intel.com with ESMTP; 29 Jul 2020 17:23:49 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Jul 2020 17:19:10 -0700
Message-Id: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S51 01/13] ice: rename misleading
 grst_delay variable
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

From: Nick Nunley <nicholas.d.nunley@intel.com>

The grst_delay variable in ice_check_reset contains the maximum time
(in 100 msec units) that the driver will wait for a reset event to
transition to the Device Active state. The value is the sum of three
separate components:
1) The maximum time it may take for the firmware to process its
outstanding command before handling the reset request.
2) The value in RSTCTL.GRSTDEL (the delay firmware inserts between first
seeing the driver reset request and the actual hardware assertion).
3) The maximum expected reset processing time in hardware.

Referring to this total time as "grst_delay" is misleading and
potentially confusing to someone checking the code and cross-referencing
the hardware specification.

Fix this by renaming the variable to "grst_timeout", which is more
descriptive of its actual use.

Signed-off-by: Nick Nunley <nicholas.d.nunley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index ad5941ec7b11..8a93fbd6f1be 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1027,23 +1027,23 @@ void ice_deinit_hw(struct ice_hw *hw)
  */
 enum ice_status ice_check_reset(struct ice_hw *hw)
 {
-	u32 cnt, reg = 0, grst_delay, uld_mask;
+	u32 cnt, reg = 0, grst_timeout, uld_mask;
 
 	/* Poll for Device Active state in case a recent CORER, GLOBR,
 	 * or EMPR has occurred. The grst delay value is in 100ms units.
 	 * Add 1sec for outstanding AQ commands that can take a long time.
 	 */
-	grst_delay = ((rd32(hw, GLGEN_RSTCTL) & GLGEN_RSTCTL_GRSTDEL_M) >>
-		      GLGEN_RSTCTL_GRSTDEL_S) + 10;
+	grst_timeout = ((rd32(hw, GLGEN_RSTCTL) & GLGEN_RSTCTL_GRSTDEL_M) >>
+			GLGEN_RSTCTL_GRSTDEL_S) + 10;
 
-	for (cnt = 0; cnt < grst_delay; cnt++) {
+	for (cnt = 0; cnt < grst_timeout; cnt++) {
 		mdelay(100);
 		reg = rd32(hw, GLGEN_RSTAT);
 		if (!(reg & GLGEN_RSTAT_DEVSTATE_M))
 			break;
 	}
 
-	if (cnt == grst_delay) {
+	if (cnt == grst_timeout) {
 		ice_debug(hw, ICE_DBG_INIT,
 			  "Global reset polling failed to complete.\n");
 		return ICE_ERR_RESET_FAILED;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
