Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5676888748A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 22:45:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 044FD4195B;
	Fri, 22 Mar 2024 21:44:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C0kS-HeE3d9f; Fri, 22 Mar 2024 21:44:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A72A941950
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711143897;
	bh=Y8SJaRO3opwvj9357fjpoxG9nXozUWAvccwL/P2qHyc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T2RzLo+7iTvCo5UnRArAz2K4Vn+1N3Aw9Pyw5ULZj4NcJyVxJdqxkO/j4EuYUVPuM
	 Dl17LJxycHf3edyf0mGpc7gg4vjxWwOCIx7WypCwf9R5kGe2GPXDrsu9r5qHbtUKsR
	 p7j+pvSz4N7ggRXwvfJbbJfnTth/ai7vFZPLMv1yfoHc6xmaRzm9PbDhi4zVmSbRzC
	 jCLqO+LWBN1ah/QO1Mh1F1OBRuzGFpXvb55olebUZb4Mlk/AQyL68QXbNsk7tg+8au
	 E2xDkKYnwjSHLUDlSW/p1mdknyVhNVxuxAJn2AIjsSE4Zf/0NiytfkEkrZLr79qCR5
	 L4c45z60Nj86A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A72A941950;
	Fri, 22 Mar 2024 21:44:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EB421BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 21:44:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A9D9741947
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 21:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AFwZyOl6oVVK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 21:44:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D675408CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D675408CB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D675408CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 21:44:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11021"; a="28689863"
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; d="scan'208";a="28689863"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 14:44:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,147,1708416000"; d="scan'208";a="19733212"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 14:44:49 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 22 Mar 2024 14:44:45 -0700
Message-ID: <20240322214445.1653263-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.44.0.53.g0f9d4d28b7e6
In-Reply-To: <20240322214445.1653263-1-jacob.e.keller@intel.com>
References: <20240322214445.1653263-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711143891; x=1742679891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1DB1gLvY4disXn3Qc/gNEVCqQLLk/513QzTxokQBi88=;
 b=bJVdwTdu2Lt80lBdpSwoehBQcPrIDYU9GaODutMBTGJvO5rT5f5pT25I
 mvKsKs/d1iKx1KNY/1TwPVjYHlTiH+hwaabyAcIX0vwH8D22ZSal11hPZ
 46K2YRaE5ODilgbEqFhoqsthSGpoufQUz+eOGVyW8SYo3L3Pe3yv5BzbV
 lNVsTLFuW6m2NxRzzgBmlGELS52EHj0HmNcLN56wy/RBW4MQh94JOscug
 meJjdn5J2EqrZQm1adWkW1ZCeNnM5XCRL932zhMusCbxrNK7Iszi1YzK0
 ICUFNCk8VPsx6IsuX0Wq6iNoyXLEAsDPHlKnWOlRNKrxCBabZsges5oaB
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bJVdwTdu
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ice: store VF relative
 MSI-X index in q_vector->vf_reg_idx
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice physical function driver needs to configure the association of
queues and interrupts on behalf of its virtual functions. This is done over
virtchnl by the VF sending messages during its initialization phase. These
messages contain a vector_id which the VF wants to associate with a given
queue. This ID is relative to the VF space, where 0 indicates the control
IRQ for non-queue interrupts.

When programming the mapping, the PF driver currently passes this vector_id
directly to the low level functions for programming. This works for SR-IOV,
because the hardware uses the VF-based indexing for interrupts.

This won't work for Scalable IOV, which uses PF-based indexing for
programming its VSIs. To handle this, the driver needs to be able to look
up the proper index to use for programming. For typical IRQs, this would be
the q_vector->reg_idx field.

The q_vector->reg_idx can't be set to a VF relative value, because it is
used when the PF needs to control the interrupt, such as when triggering a
software interrupt on stopping the Tx queue. Thus, introduce a new
q_vector->vf_reg_idx which can store the VF relative index for registers
which expect this.

Use this in ice_cfg_interrupt to look up the VF index from the q_vector.
This allows removing the vector ID parameter of ice_cfg_interrupt. Also
notice that this function returns an int, but then is cast to the virtchnl
error enumeration, virtchnl_status_code. Update the return type to indicate
it does not return an integer error code. We can't use normal error codes
here because the return values are passed across the virtchnl interface.

This will allow the future Scalable IOV VFs to correctly look up the index
needed for programming the VF queues without breaking SR-IOV.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
I found a bug during further testing in the v1 case because the irq.index
field is used to determine if the IRQ vector was actually allocated. I then
investigated if q_vector->reg_idx was necessary or if it could be replaced.
It turns out that it is used during the shutdown path for the Tx queues as
part of the stop queue procedure. Thus, I opted to replace the functionality
by using a separate vf_reg_idx field that fits in a 2-byte gap in the
current q_vector structure.

Changes since v2:
* introduce new vf_reg_idx instead of (ab)using msi_map index field
* Keep ice_calc_vf_reg_idx and use it to assign both the PF-relative
  register index as well as the VF index needed for virtchnl
* Assign vf_reg_idx to the same as reg_idx for all non-ICE_VSI_VF VSIs.

 drivers/net/ethernet/intel/ice/ice.h          |  3 ++-
 drivers/net/ethernet/intel/ice/ice_base.c     |  3 ++-
 drivers/net/ethernet/intel/ice/ice_sriov.c    |  7 ++++---
 drivers/net/ethernet/intel/ice/ice_sriov.h    |  5 ++---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 14 +++++++-------
 5 files changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index a7e88d797d4c..67a3236ab1fc 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -459,7 +459,7 @@ struct ice_q_vector {
 	struct ice_vsi *vsi;
 
 	u16 v_idx;			/* index in the vsi->q_vector array. */
-	u16 reg_idx;
+	u16 reg_idx;			/* PF relative register index */
 	u8 num_ring_rx;			/* total number of Rx rings in vector */
 	u8 num_ring_tx;			/* total number of Tx rings in vector */
 	u8 wb_on_itr:1;			/* if true, WB on ITR is enabled */
@@ -481,6 +481,7 @@ struct ice_q_vector {
 	char name[ICE_INT_NAME_STR_LEN];
 
 	u16 total_events;	/* net_dim(): number of interrupts processed */
+	u16 vf_reg_idx;		/* VF relative register index */
 	struct msi_map irq;
 } ____cacheline_internodealigned_in_smp;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 662fc395edcc..5e1d5a76ee00 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -121,7 +121,7 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
 	q_vector->irq.index = -ENOENT;
 
 	if (vsi->type == ICE_VSI_VF) {
-		q_vector->reg_idx = ice_calc_vf_reg_idx(vsi->vf, q_vector);
+		ice_calc_vf_reg_idx(vsi->vf, q_vector);
 		goto out;
 	} else if (vsi->type == ICE_VSI_CTRL && vsi->vf) {
 		struct ice_vsi *ctrl_vsi = ice_get_vf_ctrl_vsi(pf, vsi);
@@ -145,6 +145,7 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
 
 skip_alloc:
 	q_vector->reg_idx = q_vector->irq.index;
+	q_vector->vf_reg_idx = q_vector->irq.index;
 
 	/* only set affinity_mask if the CPU is online */
 	if (cpu_online(v_idx))
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 5e9521876617..fb2e96db647e 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -360,13 +360,14 @@ static void ice_ena_vf_mappings(struct ice_vf *vf)
  * @vf: VF to calculate the register index for
  * @q_vector: a q_vector associated to the VF
  */
-int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector)
+void ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector)
 {
 	if (!vf || !q_vector)
-		return -EINVAL;
+		return;
 
 	/* always add one to account for the OICR being the first MSIX */
-	return vf->first_vector_idx + q_vector->v_idx + 1;
+	q_vector->vf_reg_idx = q_vector->v_idx + ICE_NONQ_VECS_VF;
+	q_vector->reg_idx = vf->first_vector_idx + q_vector->vf_reg_idx;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 8488df38b586..4ba8fb53aea1 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -49,7 +49,7 @@ int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state);
 
 int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena);
 
-int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector);
+void ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector);
 
 int
 ice_get_vf_stats(struct net_device *netdev, int vf_id,
@@ -130,11 +130,10 @@ ice_set_vf_bw(struct net_device __always_unused *netdev,
 	return -EOPNOTSUPP;
 }
 
-static inline int
+static inline void
 ice_calc_vf_reg_idx(struct ice_vf __always_unused *vf,
 		    struct ice_q_vector __always_unused *q_vector)
 {
-	return 0;
 }
 
 static inline int
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 1ff9818b4c84..1c6ce0c4ed4e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1505,13 +1505,12 @@ static int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
  * ice_cfg_interrupt
  * @vf: pointer to the VF info
  * @vsi: the VSI being configured
- * @vector_id: vector ID
  * @map: vector map for mapping vectors to queues
  * @q_vector: structure for interrupt vector
  * configure the IRQ to queue map
  */
-static int
-ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi *vsi, u16 vector_id,
+static enum virtchnl_status_code
+ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi *vsi,
 		  struct virtchnl_vector_map *map,
 		  struct ice_q_vector *q_vector)
 {
@@ -1531,7 +1530,8 @@ ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi *vsi, u16 vector_id,
 		q_vector->num_ring_rx++;
 		q_vector->rx.itr_idx = map->rxitr_idx;
 		vsi->rx_rings[vsi_q_id]->q_vector = q_vector;
-		ice_cfg_rxq_interrupt(vsi, vsi_q_id, vector_id,
+		ice_cfg_rxq_interrupt(vsi, vsi_q_id,
+				      q_vector->vf_reg_idx,
 				      q_vector->rx.itr_idx);
 	}
 
@@ -1545,7 +1545,8 @@ ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi *vsi, u16 vector_id,
 		q_vector->num_ring_tx++;
 		q_vector->tx.itr_idx = map->txitr_idx;
 		vsi->tx_rings[vsi_q_id]->q_vector = q_vector;
-		ice_cfg_txq_interrupt(vsi, vsi_q_id, vector_id,
+		ice_cfg_txq_interrupt(vsi, vsi_q_id,
+				      q_vector->vf_reg_idx,
 				      q_vector->tx.itr_idx);
 	}
 
@@ -1619,8 +1620,7 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 		}
 
 		/* lookout for the invalid queue index */
-		v_ret = (enum virtchnl_status_code)
-			ice_cfg_interrupt(vf, vsi, vector_id, map, q_vector);
+		v_ret = ice_cfg_interrupt(vf, vsi, map, q_vector);
 		if (v_ret)
 			goto error_param;
 	}
-- 
2.44.0.53.g0f9d4d28b7e6

