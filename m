Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BEB78917A4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 12:24:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 157FB82D0F;
	Fri, 29 Mar 2024 11:24:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TjwJgB1LmCjM; Fri, 29 Mar 2024 11:24:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F14B9824E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711711459;
	bh=syhPjy3JhYrPDzn/9O7IRiS08hiTxgXyAzXaHjnAGbY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wi+UeITO1aFzKjm6lK73pw44xVkzv/ebgTmlW93tWvv2YKopV66qXsnFhVp/WHk5Q
	 90RymgfX247u5JnkhVxlJFnF9sgRu9IPz06SutSV/j1LmkcufMYLH0D1CzNeArIxHt
	 xdxlL7xgxg3rU8Pkdp7OpxHF/FwTtI7RDx4hB2g4QZqv7HnWgIJvusMn77enf0X0dD
	 CB8Ko3VFVYqh5ZllZUwMVIb6dcv7c4O0aFsNU56DeUqh8J9R9cB7txnUubnsjjAHHi
	 BUhgzyWRoR+d7Rzll+RThGwhKTr0ddg8wXzJTB4RpyJg8XO/gF070VnoHZxMpLZRb6
	 ptOapY9UQK4xg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F14B9824E2;
	Fri, 29 Mar 2024 11:24:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B9EF1BF298
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:24:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7626160EDE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:24:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ulb-u6zVbotZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 11:24:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 544046067C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 544046067C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 544046067C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 11:24:10 +0000 (UTC)
X-CSE-ConnectionGUID: pP6wyQuvTb2weeIwBPc5vA==
X-CSE-MsgGUID: 0cVVXsrIQhKY6KOWsZ+L1Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6755216"
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; 
   d="scan'208";a="6755216"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 04:24:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,164,1708416000"; d="scan'208";a="16836758"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa010.fm.intel.com with ESMTP; 29 Mar 2024 04:24:08 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 Mar 2024 12:21:55 +0100
Message-ID: <20240329112339.29642-25-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329112339.29642-14-karol.kolacinski@intel.com>
References: <20240329112339.29642-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711711450; x=1743247450;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jf1zt0f+0IAA7DiJeTdrpn1sN3b06OMFEdgeCnzU3mo=;
 b=RBIhMrNZeGPiWRRHSaiJdH3IQUyDJo3KuFDlrEO2MaabkZNGZvtF6lWe
 sHLAngtoYU8nuCXtqRskndAboGga6o2lBwNqu4t4c5h7sl3Dp9ZGoobi9
 k9icEjgdYFGOzClQb2wFhNvNadY051MVD5QNfMyi4zW5i4NJhvPjqs6dC
 +8Qqdn0TEp8AD9ntaHuMKbPt7zrUIFCjLVsgOwq98XXYOXNg4M9GNqJ3Q
 DkzwI1kMlv/UH7eBm+NYnjla2Os4qvnw4qCffu1rbWctyUIqJ+driewjm
 b3QjxP3QyHdDeWoIkVZ2M0o0GWzBlDlfa3QJ95DwWhxMyM5ox4BgJIEkr
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RBIhMrNZ
Subject: [Intel-wired-lan] [PATCH v3 iwl-next 11/12] ice: Support 2XNAC
 configuration using auxbus
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There are E825C products featuring 2 NACs. Those have only one source
clock on the primary NAC.
For those devices, there
should be only one clock controller on the primary NAC. All PFs from
both NACs should connect as auxiliary devices to the auxiliary driver on
the primary NAC.

Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h        | 23 +++++++-
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 62 +++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 28 ++++++++--
 drivers/net/ethernet/intel/ice/ice_type.h   |  2 +
 4 files changed, 101 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 67a3236ab1fc..b8319851bef1 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -197,8 +197,6 @@
 
 #define ice_pf_to_dev(pf) (&((pf)->pdev->dev))
 
-#define ice_pf_src_tmr_owned(pf) ((pf)->hw.func_caps.ts_func_info.src_tmr_owned)
-
 enum ice_feature {
 	ICE_F_DSCP,
 	ICE_F_PHY_RCLK,
@@ -1010,4 +1008,25 @@ static inline void ice_clear_rdma_cap(struct ice_pf *pf)
 }
 
 extern const struct xdp_metadata_ops ice_xdp_md_ops;
+
+/**
+ * ice_pf_src_tmr_owned - check if PF is owner of source timer
+ * @pf: Board private structure
+ */
+static inline bool ice_pf_src_tmr_owned(struct ice_pf *pf)
+{
+	if (pf->hw.ptp.phy_model == ICE_PHY_ETH56G && !pf->hw.ptp.primary_nac)
+		return false;
+	else
+		return pf->hw.func_caps.ts_func_info.src_tmr_owned;
+}
+
+/**
+ * ice_is_primary - check if PF is on a primary NAC
+ * @pf: Board private structure
+ */
+static inline bool ice_is_primary(struct ice_pf *pf)
+{
+	return pf->hw.dev_caps.nac_topo.mode & ICE_NAC_TOPO_PRIMARY_M;
+}
 #endif /* _ICE_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index e2d4632d564c..811830eab385 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -373,6 +373,9 @@ ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
 	u32 hi, lo, lo2;
 	u8 tmr_idx;
 
+	if (!hw->ptp.primary_nac)
+		hw = hw->ptp.primary_hw;
+
 	tmr_idx = ice_get_ptp_src_clock_index(hw);
 	guard(spinlock)(&pf->adapter->ptp_gltsyn_time_lock);
 	/* Read the system timestamp pre PHC read */
@@ -2675,6 +2678,31 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 				   msecs_to_jiffies(err ? 10 : 500));
 }
 
+/**
+ * ice_ptp_prepare_rebuild_sec - Prepare second NAC for PTP reset or rebuild
+ * @pf: Board private structure
+ * @rebuild: rebuild if true, prepare if false
+ * @reset_type: the reset type being performed
+ */
+static void ice_ptp_prepare_rebuild_sec(struct ice_pf *pf, bool rebuild,
+					enum ice_reset_req reset_type)
+{
+	struct ice_ptp_port *port;
+
+	mutex_lock(&pf->ptp.ports_owner.lock);
+	list_for_each_entry(port, &pf->ptp.ports_owner.ports, list_member) {
+		struct ice_pf *peer_pf = ptp_port_to_pf(port);
+
+		if (!peer_pf->hw.ptp.primary_nac) {
+			if (rebuild)
+				ice_ptp_rebuild(peer_pf, reset_type);
+			else
+				ice_ptp_prepare_for_reset(peer_pf, reset_type);
+		}
+	}
+	mutex_unlock(&pf->ptp.ports_owner.lock);
+}
+
 /**
  * ice_ptp_prepare_for_reset - Prepare PTP for reset
  * @pf: Board private structure
@@ -2683,6 +2711,7 @@ static void ice_ptp_periodic_work(struct kthread_work *work)
 void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 {
 	struct ice_ptp *ptp = &pf->ptp;
+	struct ice_hw *hw = &pf->hw;
 	u8 src_tmr;
 
 	if (ptp->state != ICE_PTP_READY)
@@ -2698,15 +2727,18 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (reset_type == ICE_RESET_PFR)
 		return;
 
+	if (ice_pf_src_tmr_owned(pf) && ice_is_e825c(hw))
+		ice_ptp_prepare_rebuild_sec(pf, false, reset_type);
+
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
 	/* Disable periodic outputs */
 	ice_ptp_disable_all_clkout(pf);
 
-	src_tmr = ice_get_ptp_src_clock_index(&pf->hw);
+	src_tmr = ice_get_ptp_src_clock_index(hw);
 
 	/* Disable source clock */
-	wr32(&pf->hw, GLTSYN_ENA(src_tmr), (u32)~GLTSYN_ENA_TSYN_ENA_M);
+	wr32(hw, GLTSYN_ENA(src_tmr), (u32)~GLTSYN_ENA_TSYN_ENA_M);
 
 	/* Acquire PHC and system timer to restore after reset */
 	ptp->reset_time = ktime_get_real_ns();
@@ -2802,6 +2834,9 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 		err = ice_ptp_rebuild_owner(pf);
 		if (err)
 			goto err;
+
+		if (ice_is_e825c(&pf->hw))
+			ice_ptp_prepare_rebuild_sec(pf, true, reset_type);
 	}
 
 	ptp->state = ICE_PTP_READY;
@@ -2874,6 +2909,9 @@ static int ice_ptp_auxbus_probe(struct auxiliary_device *aux_dev,
 		 &owner_pf->ptp.ports_owner.ports);
 	mutex_unlock(&owner_pf->ptp.ports_owner.lock);
 
+	if (!aux_pf->hw.ptp.primary_nac)
+		aux_pf->hw.ptp.primary_hw = &owner_pf->hw;
+
 	return 0;
 }
 
@@ -2951,6 +2989,7 @@ static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
 {
 	struct auxiliary_driver *aux_driver;
 	struct ice_ptp *ptp;
+	char busdev[8] = {};
 	struct device *dev;
 	char *name;
 	int err;
@@ -2960,8 +2999,10 @@ static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
 	aux_driver = &ptp->ports_owner.aux_driver;
 	INIT_LIST_HEAD(&ptp->ports_owner.ports);
 	mutex_init(&ptp->ports_owner.lock);
-	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
-			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
+	if (ice_is_e810(&pf->hw))
+		sprintf(busdev, "%u_%u_", pf->pdev->bus->number,
+			PCI_SLOT(pf->pdev->devfn));
+	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_%sclk%u", busdev,
 			      ice_get_ptp_src_clock_index(&pf->hw));
 	if (!name)
 		return -ENOMEM;
@@ -3165,6 +3206,7 @@ static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
 {
 	struct auxiliary_device *aux_dev;
 	struct ice_ptp *ptp;
+	char busdev[8] = {};
 	struct device *dev;
 	char *name;
 	int err;
@@ -3176,8 +3218,11 @@ static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
 
 	aux_dev = &ptp->port.aux_dev;
 
-	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_aux_dev_%u_%u_clk%u",
-			      pf->pdev->bus->number, PCI_SLOT(pf->pdev->devfn),
+	if (ice_is_e810(&pf->hw))
+		sprintf(busdev, "%u_%u_", pf->pdev->bus->number,
+			PCI_SLOT(pf->pdev->devfn));
+
+	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_%sclk%u", busdev,
 			      ice_get_ptp_src_clock_index(&pf->hw));
 	if (!name)
 		return -ENOMEM;
@@ -3265,6 +3310,11 @@ void ice_ptp_init(struct ice_pf *pf)
 
 	ptp->state = ICE_PTP_INITIALIZING;
 
+	if (ice_is_e825c(hw) && !ice_is_primary(pf))
+		hw->ptp.primary_nac = false;
+	else
+		hw->ptp.primary_nac = true;
+
 	ice_ptp_init_hw(hw);
 
 	ice_ptp_init_tx_interrupt_mode(pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 95f38198b074..49c289e792f4 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -838,7 +838,10 @@ void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 {
 	u32 cmd_val = ice_ptp_tmr_cmd_to_src_reg(hw, cmd);
 
-	wr32(hw, GLTSYN_CMD, cmd_val);
+	if (hw->ptp.primary_nac)
+		wr32(hw, GLTSYN_CMD, cmd_val);
+	else
+		wr32(hw->ptp.primary_hw, GLTSYN_CMD, cmd_val);
 }
 
 /**
@@ -854,7 +857,10 @@ static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
 	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
 
 	guard(spinlock)(&pf->adapter->ptp_gltsyn_time_lock);
-	wr32(hw, GLTSYN_CMD_SYNC, SYNC_EXEC_CMD);
+	if (hw->ptp.primary_nac)
+		wr32(hw, GLTSYN_CMD_SYNC, SYNC_EXEC_CMD);
+	else
+		wr32(hw->ptp.primary_hw, GLTSYN_CMD_SYNC, SYNC_EXEC_CMD);
 	ice_flush(hw);
 }
 
@@ -2177,8 +2183,13 @@ static int ice_read_phy_and_phc_time_eth56g(struct ice_hw *hw, u8 port,
 	ice_ptp_exec_tmr_cmd(hw);
 
 	/* Read the captured PHC time from the shadow time registers */
-	zo = rd32(hw, GLTSYN_SHTIME_0(tmr_idx));
-	lo = rd32(hw, GLTSYN_SHTIME_L(tmr_idx));
+	if (hw->ptp.primary_nac) {
+		zo = rd32(hw, GLTSYN_SHTIME_0(tmr_idx));
+		lo = rd32(hw, GLTSYN_SHTIME_L(tmr_idx));
+	} else {
+		zo = rd32(hw->ptp.primary_hw, GLTSYN_SHTIME_0(tmr_idx));
+		lo = rd32(hw->ptp.primary_hw, GLTSYN_SHTIME_L(tmr_idx));
+	}
 	*phc_time = (u64)lo << 32 | zo;
 
 	/* Read the captured PHY time from the PHY shadow registers */
@@ -2328,8 +2339,13 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
 	if (err)
 		return err;
 
-	lo = rd32(hw, GLTSYN_INCVAL_L(tmr_idx));
-	hi = rd32(hw, GLTSYN_INCVAL_H(tmr_idx));
+	if (hw->ptp.primary_nac) {
+		lo = rd32(hw, GLTSYN_INCVAL_L(tmr_idx));
+		hi = rd32(hw, GLTSYN_INCVAL_H(tmr_idx));
+	} else {
+		lo = rd32(hw->ptp.primary_hw, GLTSYN_INCVAL_L(tmr_idx));
+		hi = rd32(hw->ptp.primary_hw, GLTSYN_INCVAL_H(tmr_idx));
+	}
 	incval = (u64)hi << 32 | lo;
 
 	err = ice_write_40b_ptp_reg_eth56g(hw, port, PHY_REG_TIMETUS_L, incval);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 948c4bdbb206..e019dad56819 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -856,6 +856,8 @@ struct ice_ptp_hw {
 	union ice_phy_params phy;
 	u8 num_lports;
 	u8 ports_per_phy;
+	bool primary_nac;
+	struct ice_hw *primary_hw;
 };
 
 /* Port hardware description */
-- 
2.43.0

