Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB61A880613
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 21:33:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D6EC8144C;
	Tue, 19 Mar 2024 20:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVJ6AgTwOtsL; Tue, 19 Mar 2024 20:33:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42597812CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710880425;
	bh=Pg/ycTk30YWyw+T6ijTrx686ICoL2Iy1q38wmaObXvo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pxUCbzHL1cNIbRlDLp/6qfcuz9OkKQWYI9mgon52pRORhv3kI+VINHT0eDfstOLhj
	 wckYvapPu0iKApYwUgWXggjh1EjHLnyJqRZeBmM480qU9ErvlXROEvAOoSZz0J4KnG
	 BH7Raq3Mdl+uE3LcBubiwQO/B10CcA+X3mJEzS4SB4z+7MLBn8eNq3f2nfxS1Cb8X5
	 Y2KR33nWkBVq/eBwOVa2dwaDua6LdhKC20lgB3wCuqg7cQ3ORip3JpsmFE/Asz36KV
	 NbBBBXnbksXrXLlp2p6yjhsqD7oqY1rRr8k5sOxSKA7r8huKpiT6O6OgjvKOJaD6MB
	 TEI4rPE59xB9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42597812CA;
	Tue, 19 Mar 2024 20:33:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 479021BF834
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 20:33:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 348AE6059A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 20:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9GFf5fmfb2ZW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 20:33:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 052C860671
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 052C860671
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 052C860671
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 20:33:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5899784"
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; 
   d="scan'208";a="5899784"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 13:33:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,138,1708416000"; d="scan'208";a="18578762"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 13:33:34 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 19 Mar 2024 13:33:28 -0700
Message-ID: <20240319203328.890350-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.44.0.53.g0f9d4d28b7e6
In-Reply-To: <20240319203328.890350-1-jacob.e.keller@intel.com>
References: <20240319203328.890350-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710880422; x=1742416422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0l9pGvVEa9jT1VKMD1wXS5tqRMEbn3SV9e6jpYgGbl0=;
 b=L03xj1nbSLX116dEQ1Rcg7lwgNelSzrTQNnwQ57JxkFB0NDANXSgskHI
 Nn+OT+6FtOddGapag9q/1ahXVR8PXIG/9xT4VZshf35ef+hFo6f0hzZc8
 TkliF6Kt07BNx6KtwdbCfdSfU4AbPrzgllgkXh+WnMOSfPsubniE8fTU1
 NFoHcOgWUJPCZ4+SMLyu57r9fXewecW6sNMElJ+PNXrHlKMXx9QnrO20w
 xzjoQrm+68J/nJ0rZWQx9QmA7Xdr54cdJyw4Pm9DFQ+C1aYUYhIu+6S7P
 kFwA5OOzx337O4KGj6EPt0HFQwY5Qj6wzD8hF3vlbQ3tyHeMrtyhI2TIO
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L03xj1nb
Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] ice: look up VF MSI-X index
 from q_vector->irq.index
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
 Anthony Nguyen <anthony.l.nguyen@intel.com>, jesse
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

The future Scalable IOV work does not use VF-based indexing, as the
interrupts are used from the PF space and mapped via VFIO into the VM.
Thus, the interrupt indexes used on the PF are PF-based. To handle this,
the driver will need to be able to locate the proper index for programming
the hardware registers. For standard IRQs allocated from the PF area, this
would just  be the irq.index field.

This field is currently unused for SR-IOV. When initializing the queue
vectors for ICE_VSI_VF, populate the irq.index field appropriately. Replace
the direct use of the vector_id parameter passed from VF with the
q_vector->irq.index when programming the queues.

Now that we lookup the vector_id from the q_vector structure, we no longer
need to pass the value as a parameter in ice_cfg_interrupt. Also notice
that this function returns an int, but then is cast to the virtchnl error
enumeration, virtchnl_status_code. Update the return type to indicate it
does not return an integer error code. We can't use normal error codes here
because the return values are passed across the virtchnl interface.

This prepares the virtchnl logic for configuring interrupts to support the
upcoming Scalable IOV VFs, without breaking existing SR-IOV functionality.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     |  6 ++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 12 +++++-------
 2 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 662fc395edcc..013b3509028a 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -122,6 +122,12 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
 
 	if (vsi->type == ICE_VSI_VF) {
 		q_vector->reg_idx = ice_calc_vf_reg_idx(vsi->vf, q_vector);
+		/* The index value is used to configure the hardware when
+		 * programming the Tx and Rx queues. It is relative to each VF
+		 * but must account for the non-queue vectors associated with
+		 * that VF.
+		 */
+		q_vector->irq.index = v_idx + ICE_NONQ_VECS_VF;
 		goto out;
 	} else if (vsi->type == ICE_VSI_CTRL && vsi->vf) {
 		struct ice_vsi *ctrl_vsi = ice_get_vf_ctrl_vsi(pf, vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 1ff9818b4c84..2d20cfc97647 100644
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
@@ -1531,7 +1530,7 @@ ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi *vsi, u16 vector_id,
 		q_vector->num_ring_rx++;
 		q_vector->rx.itr_idx = map->rxitr_idx;
 		vsi->rx_rings[vsi_q_id]->q_vector = q_vector;
-		ice_cfg_rxq_interrupt(vsi, vsi_q_id, vector_id,
+		ice_cfg_rxq_interrupt(vsi, vsi_q_id, q_vector->irq.index,
 				      q_vector->rx.itr_idx);
 	}
 
@@ -1545,7 +1544,7 @@ ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi *vsi, u16 vector_id,
 		q_vector->num_ring_tx++;
 		q_vector->tx.itr_idx = map->txitr_idx;
 		vsi->tx_rings[vsi_q_id]->q_vector = q_vector;
-		ice_cfg_txq_interrupt(vsi, vsi_q_id, vector_id,
+		ice_cfg_txq_interrupt(vsi, vsi_q_id, q_vector->irq.index,
 				      q_vector->tx.itr_idx);
 	}
 
@@ -1619,8 +1618,7 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
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

