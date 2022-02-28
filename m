Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155584C6CC9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 13:40:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC65440588;
	Mon, 28 Feb 2022 12:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rgZ6SXFxQuiG; Mon, 28 Feb 2022 12:40:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C59740275;
	Mon, 28 Feb 2022 12:40:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 248C51BF349
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 12:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1292640902
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 12:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bzDp2LFB4pB9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 12:40:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F07D408FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 12:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646052017; x=1677588017;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GodFJ9nTxIkHyG/VtS5I6iO15ikyDMfUYV943FwGdD0=;
 b=bjdXPt1Q9c0N16mXOZ0s9lvkDa91cToZ9fuQIdEaOng6s9M/825obota
 Kwxhw6Zg/CBvhvwYH+nVyajtrhmlhlABTzB+h2OVQoYjjP92XksoboTuh
 Na48ZdRGMgwe0buGwv7w6niMz0jpgPBiH3dg/pqAWGLV75riWlnmBCwqd
 eyPFj+YX6qJt0I3Cblhuxxc5Yt9Vbok1yfc3qeiiM9p+UWV6NRnsVXOLC
 zgTgt9EOdTqFRxetzYAwSkv5AtuKGkeA+zbRNxKTGCdv5iT/PDFR+ux2T
 s4+OKaXL1yJQh14mkl7zCXzhye4snNV4dqJajvyAhEFmRaVN7m1Y8VjSp A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="233491214"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="233491214"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 04:40:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="629615467"
Received: from amlin-018-218.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.218])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Feb 2022 04:40:15 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Feb 2022 12:39:28 +0000
Message-Id: <20220228123928.278014-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix re-enablement of FW
 logging after reset
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
Cc: Ben Shelton <benjamin.h.shelton@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>

Device resets such as a CORER disable FW logging, and currently, it is
not re-enabled by the driver after the reset. This means that FW log
messages are not captured even though FW logging was enabled at driver
load time.

To fix the issue, call ice_cfg_fw_log() from ice_rebuild() to re-enable
the FW logging after a reset.

Fixes: 8b97ceb1dc0f ("ice: Enable firmware logging during device initialization.")
Signed-off-by: Ben Shelton <benjamin.h.shelton@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: fix incorrect git mail config
---
 drivers/net/ethernet/intel/ice/ice_common.c | 2 +-
 drivers/net/ethernet/intel/ice/ice_common.h | 1 +
 drivers/net/ethernet/intel/ice/ice_main.c   | 5 +++++
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index e2af99a763ed..e0e20ad80199 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -737,7 +737,7 @@ static int ice_get_fw_log_cfg(struct ice_hw *hw)
  * messages from FW to SW. Interrupts are typically disabled during the device's
  * initialization phase.
  */
-static int ice_cfg_fw_log(struct ice_hw *hw, bool enable)
+int ice_cfg_fw_log(struct ice_hw *hw, bool enable)
 {
 	struct ice_aqc_fw_logging *cmd;
 	u16 i, chgs = 0, len = 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 1c57097ddf0b..2d3743a3638e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -174,6 +174,7 @@ ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
 int ice_replay_vsi(struct ice_hw *hw, u16 vsi_handle);
 void ice_replay_post(struct ice_hw *hw);
 void ice_output_fw_log(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf);
+int ice_cfg_fw_log(struct ice_hw *hw, bool enable);
 struct ice_q_ctx *
 ice_get_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 q_handle);
 int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d72d5d147c75..9c36851d1401 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6646,6 +6646,11 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		goto err_init_ctrlq;
 	}
 
+	/* Re-enable FW logging. Not fatal if this fails. */
+	err = ice_cfg_fw_log(hw, true);
+	if (err)
+		dev_dbg(dev, "Failed to re-enable FW logging\n");
+
 	/* if DDP was previously loaded successfully */
 	if (!ice_is_safe_mode(pf)) {
 		/* reload the SW DB of filter tables */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
