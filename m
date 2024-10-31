Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F1F9B7E34
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 16:20:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB651406A2;
	Thu, 31 Oct 2024 15:20:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xCkkBSqR7q9w; Thu, 31 Oct 2024 15:20:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 692D840728
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730388016;
	bh=WoFjgW9eW5wIbQI7j7GG6H0KZounKoos8uxOTfFjJI8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Do3AryYMUVfCpyemeR1vO36SLFpFXqlyIbXcG58S6U1QLsaK3fFupsI5aw9+G//BD
	 7tAxjFXa0/D+KRqRH4VAfvGL8S991MXkTTVrtXaw5sjI1GReGBQG/XfzC+hBM9YL+p
	 NWrEZCNrjAv62kJ2ljMY51SUHVk4goA5DlSTeQBdE3s+rWlZBxyVPEAdKxXyP2/M60
	 yWctBxje9XJ1KnQU1RX4dupfOby8htj3nPZxMDoU0QX0clny4cfd8n2cxmEgFjZIgW
	 jbFEuI0nQvvaeA7YTVv9dh96HfN8XtfiuBt5I6zdketMKJluT9gZ2MbRyN4a/1PTGZ
	 H0YOBHiRVXUhw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 692D840728;
	Thu, 31 Oct 2024 15:20:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 37CCB494E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 06:00:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 316056081C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 06:00:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0dP8p7G0LoNa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 06:00:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 421F9607BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 421F9607BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 421F9607BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 06:00:15 +0000 (UTC)
X-CSE-ConnectionGUID: xTo8pawDQkWnpDQGMtQp6A==
X-CSE-MsgGUID: 566R8910TOiOoFt4q7Ll1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30272927"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30272927"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 23:00:15 -0700
X-CSE-ConnectionGUID: /Vn9IotMQ1+lOF6Qy5Xjcw==
X-CSE-MsgGUID: F746RiXBQIOi6aLYDqi3dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82183642"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa007.fm.intel.com with ESMTP; 30 Oct 2024 23:00:14 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
	sridhar.samudrala@intel.com
Date: Thu, 31 Oct 2024 07:00:09 +0100
Message-ID: <20241031060009.38979-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241031060009.38979-1-michal.swiatkowski@linux.intel.com>
References: <20241031060009.38979-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 31 Oct 2024 15:20:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730354416; x=1761890416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wAF3JYpaJMaVVvrRpeHUKgd/P9Xv1gBYJiwvPM/V6tg=;
 b=HhzQMpTA339PR8kcIWvWhxw5aIF5TgPmIyo4n4SXfFrj8ahVhLLekQlu
 /EDkxkcqQrCOFiwd/Muhio+YMheAtPpgInZyNlp0m5jx1bU0RACC7g5Sg
 Lrb0qQm846hQum5blO+YBUeDGAxmJSTTXXWnT9XMBwYZ3CIr/iYtwMAF7
 N8gnuV+b/fOfoWpMSvJ+CtWMxIKYtnar9C0m2N/g9/gbow57rFlhGYf/b
 H+u47jVyHSSGmh4WfQf8RvKyb2GGxvRHDsh3hYxyFn2oDywJTLAvRhH3C
 TNGCWo2U3pMbzwP6mEY4J58ZTfdh5q7cgk9xUz9JvK0tUkmU94tcAHW0e
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HhzQMpTA
Subject: [Intel-wired-lan] [iwl-next v1 3/3] ice: allow changing SF VSI
 queues number
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move setting number of Rx and Tx queues to the separate functions and
use it in SF case.

Adjust getting max Rx and Tx queues for SF usecase.

Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 37 +++++++-----
 drivers/net/ethernet/intel/ice/ice_lib.c     | 63 ++++++++++++--------
 2 files changed, 60 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 9e2f20ed55d5..c68f7796b83e 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3786,22 +3786,31 @@ ice_get_ts_info(struct net_device *dev, struct kernel_ethtool_ts_info *info)
 
 /**
  * ice_get_max_txq - return the maximum number of Tx queues for in a PF
- * @pf: PF structure
+ * @vsi: VSI structure
  */
-static int ice_get_max_txq(struct ice_pf *pf)
+static int ice_get_max_txq(struct ice_vsi *vsi)
 {
-	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
-		    (u16)pf->hw.func_caps.common_cap.num_txq);
+	u16 num_queues = vsi->back->num_lan_msix;
+
+	if (vsi->max_io_eqs)
+		num_queues = vsi->max_io_eqs;
+	return min3(num_queues, (u16)num_online_cpus(),
+		    (u16)vsi->back->hw.func_caps.common_cap.num_txq);
 }
 
 /**
  * ice_get_max_rxq - return the maximum number of Rx queues for in a PF
- * @pf: PF structure
+ * @vsi: VSI structure
  */
-static int ice_get_max_rxq(struct ice_pf *pf)
+static int ice_get_max_rxq(struct ice_vsi *vsi)
 {
-	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
-		    (u16)pf->hw.func_caps.common_cap.num_rxq);
+	u16 num_queues = vsi->back->num_lan_msix;
+
+	if (vsi->max_io_eqs)
+		num_queues = vsi->max_io_eqs;
+
+	return min3(num_queues, (u16)num_online_cpus(),
+		    (u16)vsi->back->hw.func_caps.common_cap.num_rxq);
 }
 
 /**
@@ -3839,8 +3848,8 @@ ice_get_channels(struct net_device *dev, struct ethtool_channels *ch)
 	struct ice_pf *pf = vsi->back;
 
 	/* report maximum channels */
-	ch->max_rx = ice_get_max_rxq(pf);
-	ch->max_tx = ice_get_max_txq(pf);
+	ch->max_rx = ice_get_max_rxq(vsi);
+	ch->max_tx = ice_get_max_txq(vsi);
 	ch->max_combined = min_t(int, ch->max_rx, ch->max_tx);
 
 	/* report current channels */
@@ -3958,14 +3967,14 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 			   vsi->tc_cfg.numtc);
 		return -EINVAL;
 	}
-	if (new_rx > ice_get_max_rxq(pf)) {
+	if (new_rx > ice_get_max_rxq(vsi)) {
 		netdev_err(dev, "Maximum allowed Rx channels is %d\n",
-			   ice_get_max_rxq(pf));
+			   ice_get_max_rxq(vsi));
 		return -EINVAL;
 	}
-	if (new_tx > ice_get_max_txq(pf)) {
+	if (new_tx > ice_get_max_txq(vsi)) {
 		netdev_err(dev, "Maximum allowed Tx channels is %d\n",
-			   ice_get_max_txq(pf));
+			   ice_get_max_txq(vsi));
 		return -EINVAL;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 01220e21cc81..64a6152eaaef 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -157,6 +157,32 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 	}
 }
 
+static void ice_vsi_set_num_txqs(struct ice_vsi *vsi, u16 def_qs)
+{
+	if (vsi->req_txq) {
+		vsi->alloc_txq = vsi->req_txq;
+		vsi->num_txq = vsi->req_txq;
+	} else {
+		vsi->alloc_txq = min_t(u16, def_qs, (u16)num_online_cpus());
+	}
+}
+
+static void ice_vsi_set_num_rxqs(struct ice_vsi *vsi, bool rss_ena, u16 def_qs)
+{
+	/* only 1 Rx queue unless RSS is enabled */
+	if (rss_ena) {
+		vsi->alloc_rxq = 1;
+		return;
+	}
+
+	if (vsi->req_rxq) {
+		vsi->alloc_rxq = vsi->req_rxq;
+		vsi->num_rxq = vsi->req_rxq;
+	} else {
+		vsi->alloc_rxq = min_t(u16, def_qs, (u16)num_online_cpus());
+	}
+}
+
 /**
  * ice_vsi_set_num_qs - Set number of queues, descriptors and vectors for a VSI
  * @vsi: the VSI being configured
@@ -174,31 +200,13 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
 
 	switch (vsi_type) {
 	case ICE_VSI_PF:
-		if (vsi->req_txq) {
-			vsi->alloc_txq = vsi->req_txq;
-			vsi->num_txq = vsi->req_txq;
-		} else {
-			vsi->alloc_txq = min3(pf->num_lan_msix,
-					      ice_get_avail_txq_count(pf),
-					      (u16)num_online_cpus());
-		}
-
+		ice_vsi_set_num_txqs(vsi, min(pf->num_lan_msix,
+					      ice_get_avail_txq_count(pf)));
 		pf->num_lan_tx = vsi->alloc_txq;
 
-		/* only 1 Rx queue unless RSS is enabled */
-		if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
-			vsi->alloc_rxq = 1;
-		} else {
-			if (vsi->req_rxq) {
-				vsi->alloc_rxq = vsi->req_rxq;
-				vsi->num_rxq = vsi->req_rxq;
-			} else {
-				vsi->alloc_rxq = min3(pf->num_lan_msix,
-						      ice_get_avail_rxq_count(pf),
-						      (u16)num_online_cpus());
-			}
-		}
-
+		ice_vsi_set_num_rxqs(vsi, !test_bit(ICE_FLAG_RSS_ENA, pf->flags),
+				     min(pf->num_lan_msix,
+					 ice_get_avail_rxq_count(pf)));
 		pf->num_lan_rx = vsi->alloc_rxq;
 
 		vsi->num_q_vectors = min_t(int, pf->num_lan_msix,
@@ -206,9 +214,12 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
 						 vsi->alloc_txq));
 		break;
 	case ICE_VSI_SF:
-		vsi->alloc_txq = 1;
-		vsi->alloc_rxq = 1;
-		vsi->num_q_vectors = 1;
+		ice_vsi_set_num_txqs(vsi, min(vsi->max_io_eqs,
+					      ice_get_avail_txq_count(pf)));
+		ice_vsi_set_num_rxqs(vsi, !test_bit(ICE_FLAG_RSS_ENA, pf->flags),
+				     min(vsi->max_io_eqs,
+					 ice_get_avail_rxq_count(pf)));
+		vsi->num_q_vectors = max_t(int, vsi->alloc_rxq, vsi->alloc_txq);
 		vsi->irq_dyn_alloc = true;
 		break;
 	case ICE_VSI_VF:
-- 
2.42.0

