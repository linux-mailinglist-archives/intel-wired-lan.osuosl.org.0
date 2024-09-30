Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD1C98A15E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:04:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7E54606C7;
	Mon, 30 Sep 2024 12:04:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pF_iqkmCoz8q; Mon, 30 Sep 2024 12:04:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B84276066F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727697865;
	bh=ixAiNGKIenoCWfr3z9I4jhwVrb8mcRBXY1b4N2H7RRo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zol5nGZTSzCwrkPQKiuknGWxEUm3WPYIwKhQXaG0or0IpStgDKnFlYr8c+ORlvAk3
	 75GfPR6EGgXSVXyqvR1k8/bpQRP6OkrMrqSPXQ46ruXY6+1MsXdc9vbHxhtAiaSzpB
	 BWLqW3+eozhb5EFHQwEKrR/knaztMtK3u5lFFl9tTAS9YE5MPZvYl0Xt4Jn2eCVsLD
	 TdiXVqR10x0CTL04eshoHTXgh++VnVi5k/W4lBscRED+d/2KZ9/r9X9OC0mYn5Q6Qp
	 +4uVFY+InmN+g035BOCqudGhBFUDLp4T/cjBAIPv5n6WCz1rv7v4C2dtMiRfnXPPno
	 wuu9A5i32sgYw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B84276066F;
	Mon, 30 Sep 2024 12:04:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A47131BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:04:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A8FE080F7F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:04:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZomvQz6Wg6_I for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:04:19 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B525880F35
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B525880F35
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B525880F35
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:04:19 +0000 (UTC)
X-CSE-ConnectionGUID: Pl0PmDSPQ/a6NUC/WJJLCw==
X-CSE-MsgGUID: RYTZ02+UQimopV4R/WdPXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="29665560"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="29665560"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:04:14 -0700
X-CSE-ConnectionGUID: sGSSoHv9QOuZwJp7Ix7iNg==
X-CSE-MsgGUID: 129enlcwTTGMtgFFoR8Vbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="77363493"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa003.fm.intel.com with ESMTP; 30 Sep 2024 05:04:11 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Sep 2024 14:03:57 +0200
Message-ID: <20240930120402.3468-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240930120402.3468-1-michal.swiatkowski@linux.intel.com>
References: <20240930120402.3468-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727697860; x=1759233860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rzEoD7Py+R6as42Om9mrATt42yQ6/ockjDyO49svrCQ=;
 b=hADE94C5wwaK3vK6GHvHjkjQPoAyP3zyhggdsNI0y8993sftEmcUxOV/
 1zXPmHn8fwrcb6zFPpc3LCFi7G+9Tx3YoWudXMQa0bbCCYlE4L5+fXjrt
 JLJhbuiYRRGWNB1sUYwpwmF8Ih9ylRmfGuztaKKXNQvBBI4sFAsSpvq8a
 x4XQcdTBgx0aSCM7DWnXrkbRJpeyjhu+GL8jTPt5F7Mmp+9AXuiO+S7Zs
 D8HKKefx8xIxV2IDevYrM/PR6lPHaDVuJoj4+86aYURTh+EKIhFBe3mdq
 71Llr6+w3wVYeuDax3yj7cdO1CX+UjGQH47phIW+xrVurjx2fnktve7fb
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hADE94C5
Subject: [Intel-wired-lan] [iwl-next v4 3/8] ice: get rid of num_lan_msix
 field
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com, netdev@vger.kernel.org,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com, jiri@resnulli.us,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove the field to allow having more queues than MSI-X on VSI. As
default the number will be the same, but if there won't be more MSI-X
available VSI can run with at least one MSI-X.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 -
 drivers/net/ethernet/intel/ice/ice_base.c    | 10 +++-----
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  8 +++---
 drivers/net/ethernet/intel/ice/ice_irq.c     | 11 +++------
 drivers/net/ethernet/intel/ice/ice_lib.c     | 26 +++++++++++---------
 5 files changed, 27 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index cf824d041d5a..1e23aec2634f 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -622,7 +622,6 @@ struct ice_pf {
 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
 	struct ice_pf_msix msix;
-	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
 	u16 num_lan_tx;		/* num LAN Tx queues setup */
 	u16 num_lan_rx;		/* num LAN Rx queues setup */
 	u16 next_vsi;		/* Next free slot in pf->vsi[] - 0-based! */
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 98c3764fed39..35a8721cb110 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -795,13 +795,11 @@ int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi)
 	return 0;
 
 err_out:
-	while (v_idx--)
-		ice_free_q_vector(vsi, v_idx);
 
-	dev_err(dev, "Failed to allocate %d q_vector for VSI %d, ret=%d\n",
-		vsi->num_q_vectors, vsi->vsi_num, err);
-	vsi->num_q_vectors = 0;
-	return err;
+	dev_info(dev, "Failed to allocate %d q_vectors for VSI %d, new value %d",
+		 vsi->num_q_vectors, vsi->vsi_num, v_idx);
+	vsi->num_q_vectors = v_idx;
+	return v_idx ? 0 : err;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 85a3b2326e7b..e5c56ec8bbda 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3811,8 +3811,8 @@ ice_get_ts_info(struct net_device *dev, struct kernel_ethtool_ts_info *info)
  */
 static int ice_get_max_txq(struct ice_pf *pf)
 {
-	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
-		    (u16)pf->hw.func_caps.common_cap.num_txq);
+	return min_t(u16, num_online_cpus(),
+		     pf->hw.func_caps.common_cap.num_txq);
 }
 
 /**
@@ -3821,8 +3821,8 @@ static int ice_get_max_txq(struct ice_pf *pf)
  */
 static int ice_get_max_rxq(struct ice_pf *pf)
 {
-	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
-		    (u16)pf->hw.func_caps.common_cap.num_rxq);
+	return min_t(u16, num_online_cpus(),
+		     pf->hw.func_caps.common_cap.num_rxq);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index 3d89d5303cd1..f1d5e43251ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -101,7 +101,7 @@ void ice_clear_interrupt_scheme(struct ice_pf *pf)
 int ice_init_interrupt_scheme(struct ice_pf *pf)
 {
 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
-	int vectors, max_vectors;
+	int vectors;
 
 	/* load default PF MSI-X range */
 	if (!pf->msix.min)
@@ -110,20 +110,17 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 	if (!pf->msix.max)
 		pf->msix.max = total_vectors / 2;
 
-	if (pci_msix_can_alloc_dyn(pf->pdev)) {
+	if (pci_msix_can_alloc_dyn(pf->pdev))
 		vectors = pf->msix.min;
-		max_vectors = total_vectors;
-	} else {
+	else
 		vectors = pf->msix.max;
-		max_vectors = vectors;
-	}
 
 	vectors = pci_alloc_irq_vectors(pf->pdev, pf->msix.min, vectors,
 					PCI_IRQ_MSIX);
 	if (vectors < pf->msix.min)
 		return -ENOMEM;
 
-	ice_init_irq_tracker(pf, max_vectors, vectors);
+	ice_init_irq_tracker(pf, pf->msix.max, vectors);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d4e74f96a8ad..26cfb4b67972 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -157,6 +157,16 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 	}
 }
 
+static u16 ice_get_rxq_count(struct ice_pf *pf)
+{
+	return min_t(u16, ice_get_avail_rxq_count(pf), num_online_cpus());
+}
+
+static u16 ice_get_txq_count(struct ice_pf *pf)
+{
+	return min_t(u16, ice_get_avail_txq_count(pf), num_online_cpus());
+}
+
 /**
  * ice_vsi_set_num_qs - Set number of queues, descriptors and vectors for a VSI
  * @vsi: the VSI being configured
@@ -178,9 +188,7 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
 			vsi->alloc_txq = vsi->req_txq;
 			vsi->num_txq = vsi->req_txq;
 		} else {
-			vsi->alloc_txq = min3(pf->num_lan_msix,
-					      ice_get_avail_txq_count(pf),
-					      (u16)num_online_cpus());
+			vsi->alloc_txq = ice_get_txq_count(pf);
 		}
 
 		pf->num_lan_tx = vsi->alloc_txq;
@@ -193,17 +201,14 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
 				vsi->alloc_rxq = vsi->req_rxq;
 				vsi->num_rxq = vsi->req_rxq;
 			} else {
-				vsi->alloc_rxq = min3(pf->num_lan_msix,
-						      ice_get_avail_rxq_count(pf),
-						      (u16)num_online_cpus());
+				vsi->alloc_rxq = ice_get_rxq_count(pf);
 			}
 		}
 
 		pf->num_lan_rx = vsi->alloc_rxq;
 
-		vsi->num_q_vectors = min_t(int, pf->num_lan_msix,
-					   max_t(int, vsi->alloc_rxq,
-						 vsi->alloc_txq));
+		vsi->num_q_vectors = max_t(int, vsi->alloc_rxq,
+					   vsi->alloc_txq);
 		break;
 	case ICE_VSI_SF:
 		vsi->alloc_txq = 1;
@@ -1173,12 +1178,11 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 static void
 ice_chnl_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 {
-	struct ice_pf *pf = vsi->back;
 	u16 qcount, qmap;
 	u8 offset = 0;
 	int pow;
 
-	qcount = min_t(int, vsi->num_rxq, pf->num_lan_msix);
+	qcount = vsi->num_rxq;
 
 	pow = order_base_2(qcount);
 	qmap = FIELD_PREP(ICE_AQ_VSI_TC_Q_OFFSET_M, offset);
-- 
2.42.0

