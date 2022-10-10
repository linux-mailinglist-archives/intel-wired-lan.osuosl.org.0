Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D95D5FA027
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Oct 2022 16:24:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E56DD40A71;
	Mon, 10 Oct 2022 14:24:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E56DD40A71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665411858;
	bh=thF8FMIv8Srl8gX9wYHQaXSfFDUasQmRcrFtjfQBESI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=y+Z66Va5PBhu4EqBSddRqPRK+mHjEC1F7l+lppxhHDuLqhsl7MaWKlDuEZqBzP5Fj
	 nJvEjDLjqn6HK9RZBWlNf/JjhR8Gwxwe33Ti8TibeEmYb/e7wY3AurMeqAR8X4gNH7
	 sMF2o7/vl0i++Jbub3UbEVJGOvAN6gHfCXOrLnAzb4UHAQQqbSnrGvvN7TJtmmsYmH
	 rjMjEcsSbzFkWqbcK44ylezuioUxLMu1JBoXfWacNtWwOsVmfC94AX2LLlYlu19mGM
	 bLPBuvnl1mXU9+d/U4R7Gr3rXKXTPjmmaRygRoK4m06+vxGRTQriIPCZRR/PnVMeps
	 +P1mBGgK/IDFQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PIyCcEIp8057; Mon, 10 Oct 2022 14:24:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A640B40104;
	Mon, 10 Oct 2022 14:24:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A640B40104
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 764A91BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Oct 2022 14:24:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C1F481516
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Oct 2022 14:24:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C1F481516
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W2M2vTdDq50E for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Oct 2022 14:24:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 19FAF814BB
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 19FAF814BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Oct 2022 14:24:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="301846335"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="301846335"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 07:24:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="625982712"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="625982712"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by orsmga002.jf.intel.com with ESMTP; 10 Oct 2022 07:24:08 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Oct 2022 10:22:22 -0400
Message-Id: <20221010142222.591646-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665411851; x=1696947851;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IlZdQ4wKBG0bRWgEtMDRGSlvfiZVxpCgka3/tyNFiV0=;
 b=e/PkqHiDedt42inz9ZhkVanHFrT8pcYkec7ncatqoCJg0XhB/W6h72Oy
 btdQnPMiBhOq5Fjj3md8GiQ7oH7gtplMWbCzhIkTTWPTdr0LFIFAmEJjo
 /ITiWkxVc73ozDXod4FlAqUuHvlsIro8cfzbpy1yQK+MzTwQvMe/aa7So
 HNYOPAwUM+Mzws40Yea8BNkpPo59jAVjyVjmBKQ3JIHJPzpxZdVulSXPl
 v6QkzyLVtm14T/eQw6tDmwzkqPSXAYxlcYhPXXIyzEcIGbr5QCg5qwBCc
 xjNGWhquppMLmRujKFJLKhvGDnRx65D1Rw83bpOVw7vYAw47P9vPz4On0
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e/PkqHiD
Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix spurious interrupt during
 removal of trusted VF
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
Cc: Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Norbert Zulinski <norbertx.zulinski@intel.com>

Previously, during removal of trusted VF when VF is down there was
number of spurious interrupt equal to number of queues on VF.

Add check if VF already has inactive queues. If VF is disabled and
has inactive rx queues then do not disable rx queues.
Add check in ice_vsi_stop_tx_ring if it's VF's vsi and if VF is
disabled.

Fixes: efe41860008e ("ice: Fix memory corruption in VF driver")
Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Addressed comments regarding initilization of variables and 
 added usage of ice_for_each_rxq function
---
 drivers/net/ethernet/intel/ice/ice_base.c   |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c    | 25 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h    |  1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c |  5 ++++-
 4 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 9e36f01dfa4f..e864634d66bc 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -958,7 +958,7 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 	 * associated to the queue to schedule NAPI handler
 	 */
 	q_vector = ring->q_vector;
-	if (q_vector)
+	if (q_vector && !(vsi->vf && ice_is_vf_disabled(vsi->vf)))
 		ice_trigger_sw_intr(hw, q_vector);
 
 	status = ice_dis_vsi_txq(vsi->port_info, txq_meta->vsi_idx,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 938ba8c215cb..7276badfa19e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2239,6 +2239,31 @@ int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi)
 	return ice_vsi_stop_tx_rings(vsi, ICE_NO_RESET, 0, vsi->xdp_rings, vsi->num_xdp_txq);
 }
 
+/**
+ * ice_vsi_is_rx_queue_active
+ * @vsi: the VSI being configured
+ *
+ * Return true if at least one queue is active.
+ */
+bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi)
+{
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	int i;
+
+	ice_for_each_rxq(vsi, i) {
+		u32 rx_reg;
+		int pf_q;
+
+		pf_q = vsi->rxq_map[i];
+		rx_reg = rd32(hw, QRX_CTRL(pf_q));
+		if (rx_reg & QRX_CTRL_QENA_STAT_M)
+			return true;
+	}
+
+	return false;
+}
+
 /**
  * ice_vsi_is_vlan_pruning_ena - check if VLAN pruning is enabled or not
  * @vsi: VSI to check whether or not VLAN pruning is enabled.
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index ec4bf0c89857..dcdf69a693e9 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -129,4 +129,5 @@ u16 ice_vsi_num_non_zero_vlans(struct ice_vsi *vsi);
 bool ice_is_feature_supported(struct ice_pf *pf, enum ice_feature f);
 void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_init_feature_support(struct ice_pf *pf);
+bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi);
 #endif /* !_ICE_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 0abeed092de1..1c51778db951 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -576,7 +576,10 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 			return -EINVAL;
 		}
 		ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
-		ice_vsi_stop_all_rx_rings(vsi);
+
+		if (ice_vsi_is_rx_queue_active(vsi))
+			ice_vsi_stop_all_rx_rings(vsi);
+
 		dev_dbg(dev, "VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
 			vf->vf_id);
 		return 0;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
