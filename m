Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FE72328B7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Jul 2020 02:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A6C2624F92;
	Thu, 30 Jul 2020 00:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oIW71t-hY-Hu; Thu, 30 Jul 2020 00:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C3FF824FFE;
	Thu, 30 Jul 2020 00:24:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A2DC1BF9B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 30D2022846
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yWSELjVv4WQa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Jul 2020 00:23:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id DD96524EA2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Jul 2020 00:23:51 +0000 (UTC)
IronPort-SDR: MIRWEVpSEpdJtr7nQLa2BrbLZRXQiTBy8a2S2M8ou9S7Xa7GB02o/dKLw7qyQ3SYrkXV66cqe8
 XPvbypmit9/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="216004465"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="216004465"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:23:50 -0700
IronPort-SDR: 2rzW4p/dfRgx+9Vds1huu0Z31U2spiDxqKqJY/ng5DxV4YUbSByAUlpQaq+HSuJX/2Y5IplNCW
 wUPkZ5AiO3fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="320908831"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga008.jf.intel.com with ESMTP; 29 Jul 2020 17:23:50 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 Jul 2020 17:19:22 -0700
Message-Id: <20200730001922.52568-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
References: <20200730001922.52568-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S51 13/13] ice: Misc minor fixes
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

This is a collection of minor fixes including typos, whitespace, and style.
No functional changes.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c      | 5 ++---
 drivers/net/ethernet/intel/ice/ice_devlink.c     | 2 +-
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c   | 2 +-
 drivers/net/ethernet/intel/ice/ice_hw_autogen.h  | 4 ++--
 drivers/net/ethernet/intel/ice/ice_sched.c       | 4 ++--
 drivers/net/ethernet/intel/ice/ice_txrx.c        | 7 +++----
 drivers/net/ethernet/intel/ice/ice_type.h        | 2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_xsk.c         | 2 --
 9 files changed, 14 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8a93fbd6f1be..34abfcea9858 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1718,8 +1718,7 @@ ice_alloc_hw_res(struct ice_hw *hw, u16 type, u16 num, bool btm, u16 *res)
  * @num: number of resources
  * @res: pointer to array that contains the resources to free
  */
-enum ice_status
-ice_free_hw_res(struct ice_hw *hw, u16 type, u16 num, u16 *res)
+enum ice_status ice_free_hw_res(struct ice_hw *hw, u16 type, u16 num, u16 *res)
 {
 	struct ice_aqc_alloc_free_res_elem *buf;
 	enum ice_status status;
@@ -2121,7 +2120,7 @@ ice_parse_fdir_dev_caps(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
  * @cap_count: the number of capabilities
  *
  * Helper device to parse device (0x000B) capabilities list. For
- * capabilities shared between device and device, this relies on
+ * capabilities shared between device and function, this relies on
  * ice_parse_common_caps.
  *
  * Loop through the list of provided capabilities and extract the relevant
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index dbbd8b6f9d1a..111d6bfe4222 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -357,7 +357,7 @@ void ice_devlink_unregister(struct ice_pf *pf)
  *
  * Create and register a devlink_port for this PF. Note that although each
  * physical function is connected to a separate devlink instance, the port
- * will still be numbered according to the physical function id.
+ * will still be numbered according to the physical function ID.
  *
  * Return: zero on success or an error code on failure.
  */
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 7ae4df0901c3..73b9a50e0dfb 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -644,7 +644,7 @@ static bool ice_bits_max_set(const u8 *mask, u16 size, u16 max)
  * This function generates a key from a value, a don't care mask and a never
  * match mask.
  * upd, dc, and nm are optional parameters, and can be NULL:
- *	upd == NULL --> udp mask is all 1's (update all bits)
+ *	upd == NULL --> upd mask is all 1's (update all bits)
  *	dc == NULL --> dc mask is all 0's (no don't care bits)
  *	nm == NULL --> nm mask is all 0's (no never match bits)
  */
diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
index 92e4abca62a4..90abc8612a6a 100644
--- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
+++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
@@ -57,7 +57,7 @@
 #define PRTDCB_GENS				0x00083020
 #define PRTDCB_GENS_DCBX_STATUS_S		0
 #define PRTDCB_GENS_DCBX_STATUS_M		ICE_M(0x7, 0)
-#define PRTDCB_TUP2TC				0x001D26C0 /* Reset Source: CORER */
+#define PRTDCB_TUP2TC				0x001D26C0
 #define GL_PREEXT_L2_PMASK0(_i)			(0x0020F0FC + ((_i) * 4))
 #define GL_PREEXT_L2_PMASK1(_i)			(0x0020F108 + ((_i) * 4))
 #define GLFLXP_RXDID_FLX_WRD_0(_i)		(0x0045c800 + ((_i) * 4))
@@ -362,6 +362,7 @@
 #define GLV_TEPC(_VSI)				(0x00312000 + ((_VSI) * 4))
 #define GLV_UPRCL(_i)				(0x003B2000 + ((_i) * 8))
 #define GLV_UPTCL(_i)				(0x0030A000 + ((_i) * 8))
+#define PRTRPB_RDPC				0x000AC260
 #define VSIQF_FD_CNT(_VSI)			(0x00464000 + ((_VSI) * 4))
 #define VSIQF_FD_CNT_FD_GCNT_S			0
 #define VSIQF_FD_CNT_FD_GCNT_M			ICE_M(0x3FFF, 0)
@@ -378,6 +379,5 @@
 #define PFPM_WUS_FW_RST_WK_M			BIT(31)
 #define VFINT_DYN_CTLN(_i)			(0x00003800 + ((_i) * 4))
 #define VFINT_DYN_CTLN_CLEARPBA_M		BIT(1)
-#define PRTRPB_RDPC				0x000AC260
 
 #endif /* _ICE_HW_AUTOGEN_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 355f727563e4..44a228530253 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -170,7 +170,7 @@ ice_sched_add_node(struct ice_port_info *pi, u8 layer,
 		return ICE_ERR_PARAM;
 	}
 
-	/* query the current node information from FW  before additing it
+	/* query the current node information from FW before adding it
 	 * to the SW DB
 	 */
 	status = ice_sched_query_elem(hw, le32_to_cpu(info->node_teid), &elem);
@@ -578,7 +578,7 @@ ice_alloc_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
 /**
  * ice_aq_rl_profile - performs a rate limiting task
  * @hw: pointer to the HW struct
- * @opcode:opcode for add, query, or remove profile(s)
+ * @opcode: opcode for add, query, or remove profile(s)
  * @num_profiles: the number of profiles
  * @buf: pointer to buffer
  * @buf_size: buffer size in bytes
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 77de8869e7ca..9d0d6b0025cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -631,9 +631,8 @@ ice_alloc_mapped_page(struct ice_ring *rx_ring, struct ice_rx_buf *bi)
 	dma_addr_t dma;
 
 	/* since we are recycling buffers we should seldom need to alloc */
-	if (likely(page)) {
+	if (likely(page))
 		return true;
-	}
 
 	/* alloc new page for storage */
 	page = dev_alloc_pages(ice_rx_pg_order(rx_ring));
@@ -1252,12 +1251,12 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
  * @itr: ITR value to update
  *
  * Calculate how big of an increment should be applied to the ITR value passed
- * in based on wmem_default, SKB overhead, Ethernet overhead, and the current
+ * in based on wmem_default, SKB overhead, ethernet overhead, and the current
  * link speed.
  *
  * The following is a calculation derived from:
  *  wmem_default / (size + overhead) = desired_pkts_per_int
- *  rate / bits_per_byte / (size + Ethernet overhead) = pkt_rate
+ *  rate / bits_per_byte / (size + ethernet overhead) = pkt_rate
  *  (desired_pkt_rate / pkt_rate) * usecs_per_sec = ITR value
  *
  * Assuming wmem_default is 212992 and overhead is 640 bytes per
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 1eb83d9b0546..4cdccfadf274 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -321,7 +321,7 @@ struct ice_nvm_info {
 	u32 flash_size;			/* Size of available flash in bytes */
 	u8 major_ver;			/* major version of NVM package */
 	u8 minor_ver;			/* minor version of dev starter */
-	u8 blank_nvm_mode;        /* is NVM empty (no FW present) */
+	u8 blank_nvm_mode;		/* is NVM empty (no FW present) */
 };
 
 struct ice_link_default_override_tlv {
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 0ba54b39ab43..bce35ba997a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -2973,8 +2973,8 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 		vsi->max_frame = qpi->rxq.max_pkt_size;
 	}
 
-	/* VF can request to configure less than allocated queues
-	 * or default allocated queues. So update the VSI with new number
+	/* VF can request to configure less than allocated queues or default
+	 * allocated queues. So update the VSI with new number
 	 */
 	vsi->num_txq = num_txq;
 	vsi->num_rxq = num_rxq;
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 87862918bc7a..20ac5fca68c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -298,7 +298,6 @@ static void ice_xsk_remove_umem(struct ice_vsi *vsi, u16 qid)
 	}
 }
 
-
 /**
  * ice_xsk_umem_disable - disable a UMEM region
  * @vsi: Current VSI
@@ -594,7 +593,6 @@ int ice_clean_rx_irq_zc(struct ice_ring *rx_ring, int budget)
 		if (!size)
 			break;
 
-
 		rx_buf = &rx_ring->rx_buf[rx_ring->next_to_clean];
 		rx_buf->xdp->data_end = rx_buf->xdp->data + size;
 		xsk_buff_dma_sync_for_cpu(rx_buf->xdp);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
