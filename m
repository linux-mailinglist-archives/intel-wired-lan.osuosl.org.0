Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FF74C2D43
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Feb 2022 14:37:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5DCE440477;
	Thu, 24 Feb 2022 13:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dIc208yKW1Az; Thu, 24 Feb 2022 13:37:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E52AA4046D;
	Thu, 24 Feb 2022 13:37:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF10B1BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 13:37:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC153610DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 13:37:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hKc-lviTrpIG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Feb 2022 13:36:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B391161085
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Feb 2022 13:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645709818; x=1677245818;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7qQimGJu3LRwPzQnxTXzyuahWEYB6hsLouJpqZyFmFk=;
 b=cejdtNO0ykXKxfsiGirGOSSkkZFzb33C7dVU/ct/4lD21zxO2loGeLb6
 mleoOJ4JXzfXOK1lLzY0cDFWkEvS3EEKFCIIrigmLCqTyuBZJdB4qWt7f
 HiXi9S66J5xP5eYXCn4mZsNJy66GFEfhdc45LzXPATldD3nMFj5MVYaWO
 ycSqYIBJhXM0md79Ci1cNkX89bFtJ7yX9ThTOCxqsK69PKxRWM24qTR71
 LZDy84ofVwn+HmY7vJyqqJ1eM83Pvzg2Jcagv3jAmw5BwjNq1LAApXAQQ
 f1Pm3YnfzqXiSc6WiTqag8JR3oUb+mFrAqBwtK2dT75YdwaDxrX0QWr4M g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="251062378"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="251062378"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 05:36:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="508872268"
Received: from amlin-018-218.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.218])
 by orsmga006.jf.intel.com with ESMTP; 24 Feb 2022 05:36:56 -0800
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Feb 2022 13:36:14 +0000
Message-Id: <20220224133614.179091-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix re-enablement of FW
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
