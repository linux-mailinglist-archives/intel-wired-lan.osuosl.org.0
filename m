Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5718194B798
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 09:20:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6FAB80C3C;
	Thu,  8 Aug 2024 07:20:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7Y9xr9r__7Vn; Thu,  8 Aug 2024 07:20:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A742A8142B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723101633;
	bh=XZwKG2vfqYr92GJuipYUMh4qQfSYI74c/Tsj65PcdLE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rf5QgzUU7aaba5zxkskXw3ifsjC4wfRjASvd+Ofh/qj6goy+DChUDaSFrVuMKC37V
	 BI2iVrFD+norqlKZZdpHJAvAhHQJlkK+gHA709n2n6v2eTTa67GgzfpXhYfpUS92Rq
	 6eLWXEX66jomQ90lSX9cPwoUWfaWn2Z76gf1KeDBzpR4Km5qGYkSlBmBWg1cTqVwwx
	 Op+WI3ko5Kd5Fl7WrmY3CdbsniQukYBtbE5y7AAeU2O844CKDTRZx8w08cYuw5WYl5
	 tMddqFnw2nfmcZQ/6FClU18TqTOTAfX3Y/DBdG46ybHPVgdJ61CsVjY6sFyi3pdrJB
	 dRVOQ7VcrI2XA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A742A8142B;
	Thu,  8 Aug 2024 07:20:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CDD761BF369
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BBE34607F3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QrnrR0eVuI3T for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 07:20:28 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A4F0760772
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4F0760772
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A4F0760772
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 07:20:28 +0000 (UTC)
X-CSE-ConnectionGUID: K8y7577YT3aa1UlW/JP8qg==
X-CSE-MsgGUID: 34N9tCECR+izsBY+VRr8qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21361352"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="21361352"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 00:20:28 -0700
X-CSE-ConnectionGUID: 9VLFfEYjRuOeMCZIvIZYPQ==
X-CSE-MsgGUID: ghml+QrhQ+SCl2XTR2f6Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="57073478"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa008.fm.intel.com with ESMTP; 08 Aug 2024 00:20:25 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2024 09:20:11 +0200
Message-ID: <20240808072016.10321-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
References: <20240808072016.10321-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723101629; x=1754637629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e7m24AGRhdmcoya9lNTF3zRk0X+iOHiyA6NoDCvS1Ck=;
 b=YmGYTmfC45TLTdNvYpvdXGHDzWzAN6gKNS9w6MDLq1F8j6aHh9kw8dBF
 V22GVnRvDxHeGV5M9kHWdyybc4JGDQp7o0jX+DvQf8ktAAF/059DUbenG
 1dAQBlG1z6Ts1/C83gUDbCQNXT4i9HSEjSmrMCRymJPSNOM84NQKvIS2j
 wPpKye+IKsJ+cp4FCezRd9G5OfbuKNCN+FVdL+zRtcGA9eU3tHmKVrGxf
 p/+CC1qTS0OJl5dWSG2FXmx9b662L+ByDff60zs7oD1cHoWezbP2GfvsU
 +tW135SGliv0hSTfur1BARrxsHfJMkezSv3TB9gB/5AdodeMVDJvajOnc
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YmGYTmfC
Subject: [Intel-wired-lan] [iwl-next v3 3/8] ice: get rid of num_lan_msix
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
index a67456057c77..eecf171bd0b6 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -623,7 +623,6 @@ struct ice_pf {
 	u16 max_pf_txqs;	/* Total Tx queues PF wide */
 	u16 max_pf_rxqs;	/* Total Rx queues PF wide */
 	struct ice_pf_msix msix;
-	u16 num_lan_msix;	/* Total MSIX vectors for base driver */
 	u16 num_lan_tx;		/* num LAN Tx queues setup */
 	u16 num_lan_rx;		/* num LAN Rx queues setup */
 	u16 next_vsi;		/* Next free slot in pf->vsi[] - 0-based! */
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 1f4792da72da..c8165915c685 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -774,13 +774,11 @@ int ice_vsi_alloc_q_vectors(struct ice_vsi *vsi)
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
index b877002d549b..1a0876209c3f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3813,8 +3813,8 @@ ice_get_ts_info(struct net_device *dev, struct kernel_ethtool_ts_info *info)
  */
 static int ice_get_max_txq(struct ice_pf *pf)
 {
-	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
-		    (u16)pf->hw.func_caps.common_cap.num_txq);
+	return min_t(u16, num_online_cpus(),
+		     pf->hw.func_caps.common_cap.num_txq);
 }
 
 /**
@@ -3823,8 +3823,8 @@ static int ice_get_max_txq(struct ice_pf *pf)
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
index 4579df21701b..99b82662434b 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -102,7 +102,7 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 {
 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
 	union devlink_param_value value;
-	int vectors, max_vectors, err;
+	int vectors, err;
 
 	/* load default PF MSI-X range */
 	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
@@ -115,20 +115,17 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 					      &value);
 	pf->msix.max = err ? total_vectors / 2 : value.vu16;
 
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
index d9c34d28c9cd..5fb33a215242 100644
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

