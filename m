Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1057F381D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 22:20:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2517E80D5A;
	Tue, 21 Nov 2023 21:20:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2517E80D5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700601638;
	bh=X+3qGpfsMScnuvEFaOudnrM3hXf8BNsHlYVRAcDF0So=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3U/m8fMXkOiU2Y7nndzjrXuqgCPiZetDfiPd44jbAkb4t3KD8vUkJuLnav2KYWQOl
	 IB1ScTFVSrypE6LfmAMjGatbp1O6pjQ9xqz4+nEXQxCUBY2oGIMwitBJGbtHdEEr5f
	 ih25lRr05mKz3ADltcoeutljozjg7FVksyPAokfwmsBICtIRce7BExFKMFpKggWgtB
	 oplb7tRuwGB4SUie0Ho+RNVtrBtXMiSzN7bTp8y0U+mrzPsQqfoMkqGYWcB8Ybuyzk
	 eJYTQi1r8LqWmNSVG1Y+4CcmPXWeivY/ID6GINRHp6uvJbx0umSGGWdr85+HZ4N4+i
	 DR5bn5V3vgKQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GRImanZu3jYc; Tue, 21 Nov 2023 21:20:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E660B81008;
	Tue, 21 Nov 2023 21:20:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E660B81008
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 94A1B1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 852A040978
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 852A040978
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TVmDb-xkIY_Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11FC0409E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11FC0409E6
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423022089"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="423022089"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716630546"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="716630546"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:38 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 13:19:14 -0800
Message-Id: <20231121211921.19834-7-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231121211921.19834-1-jesse.brandeburg@intel.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601582; x=1732137582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VZpDDlo2T33JhbnRUHUeMzAN5Yv0wnE8bGNQL3U4hzo=;
 b=Dsu23GvTjN3khYR3GIWXeeq3L+DfdE/xqTqDPzPFzUhaTh+Zscm9Hamx
 ZO50UpaJjuRx6HxENqetW+6z5PAEhS8BK9pMLzgdfBsRBJLu87z+xhXNE
 RbsGpRT493i39/PoLavQ+UmPlcQL6opmRucnZNpj76LVsHBJrIf09CGSW
 8UTKRHBFsUyYaj4a218UaEqNg0GuQFEVF4gHbXJQYL/LBakUFJMKxreil
 VtWbjeZJKqAwXW3DS8RsviY9rFrB1QGM1Ib4ALjuJ3FKfpnAqpyods/xC
 DJGfGooUTs7CXFLiCaEApfO7P5MelHmvwm9JINu5Z/YFIbcYvto1xPC4o
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dsu23GvT
Subject: [Intel-wired-lan] [PATCH iwl-next v1 06/13] ice: field prep
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor ice driver to use FIELD_PREP(), which reduces lines of code
and adds clarity of intent.

This code was generated by the following coccinelle/spatch script and
then manually repaired.

Several places I changed to OR into a single variable with |= instead of
using a multi-line statement with trailing OR operators, as it
(subjectively) makes the code clearer.

A local variable vmvf_and_timeout was created and used to avoid multiple
logical ORs being __le16 converted, which shortened some lines and makes
the code cleaner.

@prep@
constant shift,mask;
type T;
expression a;
@@
-(((T)(a) << shift) & mask)
+FIELD_PREP(mask, a)

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c     | 20 +++---
 drivers/net/ethernet/intel/ice/ice_common.c   | 23 +++----
 drivers/net/ethernet/intel/ice/ice_dcb.c      |  3 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  |  2 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |  4 +-
 drivers/net/ethernet/intel/ice/ice_fdir.c     | 69 +++++++------------
 .../net/ethernet/intel/ice/ice_flex_pipe.c    |  8 +--
 drivers/net/ethernet/intel/ice/ice_flow.c     |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      | 52 +++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.c      |  9 ++-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 38 ++++------
 drivers/net/ethernet/intel/ice/ice_switch.c   | 61 ++++++++--------
 drivers/net/ethernet/intel/ice/ice_txrx.c     |  6 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  8 +--
 .../ethernet/intel/ice/ice_virtchnl_fdir.c    |  2 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 19 ++---
 16 files changed, 130 insertions(+), 196 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 7fa43827a3f0..3fd6e99dba23 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -234,14 +234,10 @@ static void ice_cfg_itr_gran(struct ice_hw *hw)
 	      GLINT_CTL_ITR_GRAN_25_S) == ICE_ITR_GRAN_US))
 		return;
 
-	regval = ((ICE_ITR_GRAN_US << GLINT_CTL_ITR_GRAN_200_S) &
-		  GLINT_CTL_ITR_GRAN_200_M) |
-		 ((ICE_ITR_GRAN_US << GLINT_CTL_ITR_GRAN_100_S) &
-		  GLINT_CTL_ITR_GRAN_100_M) |
-		 ((ICE_ITR_GRAN_US << GLINT_CTL_ITR_GRAN_50_S) &
-		  GLINT_CTL_ITR_GRAN_50_M) |
-		 ((ICE_ITR_GRAN_US << GLINT_CTL_ITR_GRAN_25_S) &
-		  GLINT_CTL_ITR_GRAN_25_M);
+	regval = FIELD_PREP(GLINT_CTL_ITR_GRAN_200_M, ICE_ITR_GRAN_US) |
+		 FIELD_PREP(GLINT_CTL_ITR_GRAN_100_M, ICE_ITR_GRAN_US) |
+		 FIELD_PREP(GLINT_CTL_ITR_GRAN_50_M, ICE_ITR_GRAN_US) |
+		 FIELD_PREP(GLINT_CTL_ITR_GRAN_25_M, ICE_ITR_GRAN_US);
 	wr32(hw, GLINT_CTL, regval);
 }
 
@@ -913,10 +909,10 @@ ice_cfg_txq_interrupt(struct ice_vsi *vsi, u16 txq, u16 msix_idx, u16 itr_idx)
 	struct ice_hw *hw = &pf->hw;
 	u32 val;
 
-	itr_idx = (itr_idx << QINT_TQCTL_ITR_INDX_S) & QINT_TQCTL_ITR_INDX_M;
+	itr_idx = FIELD_PREP(QINT_TQCTL_ITR_INDX_M, itr_idx);
 
 	val = QINT_TQCTL_CAUSE_ENA_M | itr_idx |
-	      ((msix_idx << QINT_TQCTL_MSIX_INDX_S) & QINT_TQCTL_MSIX_INDX_M);
+	      FIELD_PREP(QINT_TQCTL_MSIX_INDX_M, msix_idx);
 
 	wr32(hw, QINT_TQCTL(vsi->txq_map[txq]), val);
 	if (ice_is_xdp_ena_vsi(vsi)) {
@@ -945,10 +941,10 @@ ice_cfg_rxq_interrupt(struct ice_vsi *vsi, u16 rxq, u16 msix_idx, u16 itr_idx)
 	struct ice_hw *hw = &pf->hw;
 	u32 val;
 
-	itr_idx = (itr_idx << QINT_RQCTL_ITR_INDX_S) & QINT_RQCTL_ITR_INDX_M;
+	itr_idx = FIELD_PREP(QINT_RQCTL_ITR_INDX_M, itr_idx);
 
 	val = QINT_RQCTL_CAUSE_ENA_M | itr_idx |
-	      ((msix_idx << QINT_RQCTL_MSIX_INDX_S) & QINT_RQCTL_MSIX_INDX_M);
+	      FIELD_PREP(QINT_RQCTL_MSIX_INDX_M, msix_idx);
 
 	wr32(hw, QINT_RQCTL(vsi->rxq_map[rxq]), val);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8d97434e1413..9d3f01d33522 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4095,6 +4095,7 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 {
 	struct ice_aqc_sff_eeprom *cmd;
 	struct ice_aq_desc desc;
+	u16 i2c_bus_addr;
 	int status;
 
 	if (!data || (mem_addr & 0xff00))
@@ -4105,11 +4106,9 @@ ice_aq_sff_eeprom(struct ice_hw *hw, u16 lport, u8 bus_addr,
 	desc.flags = cpu_to_le16(ICE_AQ_FLAG_RD);
 	cmd->lport_num = (u8)(lport & 0xff);
 	cmd->lport_num_valid = (u8)((lport >> 8) & 0x01);
-	cmd->i2c_bus_addr = cpu_to_le16(((bus_addr >> 1) &
-					 ICE_AQC_SFF_I2CBUS_7BIT_M) |
-					((set_page <<
-					  ICE_AQC_SFF_SET_EEPROM_PAGE_S) &
-					 ICE_AQC_SFF_SET_EEPROM_PAGE_M));
+	i2c_bus_addr = ((bus_addr >> 1) & ICE_AQC_SFF_I2CBUS_7BIT_M) |
+		       FIELD_PREP(ICE_AQC_SFF_SET_EEPROM_PAGE_M, set_page);
+	cmd->i2c_bus_addr = cpu_to_le16(i2c_bus_addr);
 	cmd->i2c_mem_addr = cpu_to_le16(mem_addr & 0xff);
 	cmd->eeprom_page = cpu_to_le16((u16)page << ICE_AQC_SFF_EEPROM_PAGE_S);
 	if (write)
@@ -4368,6 +4367,7 @@ ice_aq_dis_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 	struct ice_aqc_dis_txq_item *item;
 	struct ice_aqc_dis_txqs *cmd;
 	struct ice_aq_desc desc;
+	u16 vmvf_and_timeout;
 	u16 i, sz = 0;
 	int status;
 
@@ -4383,27 +4383,26 @@ ice_aq_dis_lan_txq(struct ice_hw *hw, u8 num_qgrps,
 
 	cmd->num_entries = num_qgrps;
 
-	cmd->vmvf_and_timeout = cpu_to_le16((5 << ICE_AQC_Q_DIS_TIMEOUT_S) &
-					    ICE_AQC_Q_DIS_TIMEOUT_M);
+	vmvf_and_timeout = FIELD_PREP(ICE_AQC_Q_DIS_TIMEOUT_M, 5);
 
 	switch (rst_src) {
 	case ICE_VM_RESET:
 		cmd->cmd_type = ICE_AQC_Q_DIS_CMD_VM_RESET;
-		cmd->vmvf_and_timeout |=
-			cpu_to_le16(vmvf_num & ICE_AQC_Q_DIS_VMVF_NUM_M);
+		vmvf_and_timeout |= vmvf_num & ICE_AQC_Q_DIS_VMVF_NUM_M;
 		break;
 	case ICE_VF_RESET:
 		cmd->cmd_type = ICE_AQC_Q_DIS_CMD_VF_RESET;
 		/* In this case, FW expects vmvf_num to be absolute VF ID */
-		cmd->vmvf_and_timeout |=
-			cpu_to_le16((vmvf_num + hw->func_caps.vf_base_id) &
-				    ICE_AQC_Q_DIS_VMVF_NUM_M);
+		vmvf_and_timeout |= (vmvf_num + hw->func_caps.vf_base_id) &
+				    ICE_AQC_Q_DIS_VMVF_NUM_M;
 		break;
 	case ICE_NO_RESET:
 	default:
 		break;
 	}
 
+	cmd->vmvf_and_timeout = cpu_to_le16(vmvf_and_timeout);
+
 	/* flush pipe on time out */
 	cmd->cmd_type |= ICE_AQC_Q_DIS_CMD_FLUSH_PIPE;
 	/* If no queue group info, we are in a reset flow. Issue the AQ */
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.c b/drivers/net/ethernet/intel/ice/ice_dcb.c
index 396e555023aa..41b7853291d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb.c
@@ -35,8 +35,7 @@ ice_aq_get_lldp_mib(struct ice_hw *hw, u8 bridge_type, u8 mib_type, void *buf,
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_lldp_get_mib);
 
 	cmd->type = mib_type & ICE_AQ_LLDP_MIB_TYPE_M;
-	cmd->type |= (bridge_type << ICE_AQ_LLDP_BRID_TYPE_S) &
-		ICE_AQ_LLDP_BRID_TYPE_M;
+	cmd->type |= FIELD_PREP(ICE_AQ_LLDP_BRID_TYPE_M, bridge_type);
 
 	desc.datalen = cpu_to_le16(buf_size);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 850db8e0e6b0..6e20ee610022 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -934,7 +934,7 @@ ice_tx_prepare_vlan_flags_dcb(struct ice_tx_ring *tx_ring,
 	    skb->priority != TC_PRIO_CONTROL) {
 		first->vid &= ~VLAN_PRIO_MASK;
 		/* Mask the lower 3 bits to set the 802.1p priority */
-		first->vid |= (skb->priority << VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK;
+		first->vid |= FIELD_PREP(VLAN_PRIO_MASK, skb->priority);
 		/* if this is not already set it means a VLAN 0 + priority needs
 		 * to be offloaded
 		 */
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch.c b/drivers/net/ethernet/intel/ice/ice_eswitch.c
index 3f80e2081e5d..0aed9b5dba06 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch.c
@@ -358,8 +358,8 @@ ice_eswitch_set_target_vsi(struct sk_buff *skb,
 		off->cd_qw1 |= (cd_cmd | ICE_TX_DESC_DTYPE_CTX);
 	} else {
 		cd_cmd = ICE_TX_CTX_DESC_SWTCH_VSI << ICE_TXD_CTX_QW1_CMD_S;
-		dst_vsi = ((u64)dst->u.port_info.port_id <<
-			   ICE_TXD_CTX_QW1_VSI_S) & ICE_TXD_CTX_QW1_VSI_M;
+		dst_vsi = FIELD_PREP(ICE_TXD_CTX_QW1_VSI_M,
+				     dst->u.port_info.port_id);
 		off->cd_qw1 = cd_cmd | dst_vsi | ICE_TX_DESC_DTYPE_CTX;
 	}
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index ae089d32ee9d..5840c3e04a5b 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -604,55 +604,32 @@ ice_set_fd_desc_val(struct ice_fd_fltr_desc_ctx *ctx,
 	u64 qword;
 
 	/* prep QW0 of FD filter programming desc */
-	qword = ((u64)ctx->qindex << ICE_FXD_FLTR_QW0_QINDEX_S) &
-		ICE_FXD_FLTR_QW0_QINDEX_M;
-	qword |= ((u64)ctx->comp_q << ICE_FXD_FLTR_QW0_COMP_Q_S) &
-		 ICE_FXD_FLTR_QW0_COMP_Q_M;
-	qword |= ((u64)ctx->comp_report << ICE_FXD_FLTR_QW0_COMP_REPORT_S) &
-		 ICE_FXD_FLTR_QW0_COMP_REPORT_M;
-	qword |= ((u64)ctx->fd_space << ICE_FXD_FLTR_QW0_FD_SPACE_S) &
-		 ICE_FXD_FLTR_QW0_FD_SPACE_M;
-	qword |= ((u64)ctx->cnt_index << ICE_FXD_FLTR_QW0_STAT_CNT_S) &
-		 ICE_FXD_FLTR_QW0_STAT_CNT_M;
-	qword |= ((u64)ctx->cnt_ena << ICE_FXD_FLTR_QW0_STAT_ENA_S) &
-		 ICE_FXD_FLTR_QW0_STAT_ENA_M;
-	qword |= ((u64)ctx->evict_ena << ICE_FXD_FLTR_QW0_EVICT_ENA_S) &
-		 ICE_FXD_FLTR_QW0_EVICT_ENA_M;
-	qword |= ((u64)ctx->toq << ICE_FXD_FLTR_QW0_TO_Q_S) &
-		 ICE_FXD_FLTR_QW0_TO_Q_M;
-	qword |= ((u64)ctx->toq_prio << ICE_FXD_FLTR_QW0_TO_Q_PRI_S) &
-		 ICE_FXD_FLTR_QW0_TO_Q_PRI_M;
-	qword |= ((u64)ctx->dpu_recipe << ICE_FXD_FLTR_QW0_DPU_RECIPE_S) &
-		 ICE_FXD_FLTR_QW0_DPU_RECIPE_M;
-	qword |= ((u64)ctx->drop << ICE_FXD_FLTR_QW0_DROP_S) &
-		 ICE_FXD_FLTR_QW0_DROP_M;
-	qword |= ((u64)ctx->flex_prio << ICE_FXD_FLTR_QW0_FLEX_PRI_S) &
-		 ICE_FXD_FLTR_QW0_FLEX_PRI_M;
-	qword |= ((u64)ctx->flex_mdid << ICE_FXD_FLTR_QW0_FLEX_MDID_S) &
-		 ICE_FXD_FLTR_QW0_FLEX_MDID_M;
-	qword |= ((u64)ctx->flex_val << ICE_FXD_FLTR_QW0_FLEX_VAL_S) &
-		 ICE_FXD_FLTR_QW0_FLEX_VAL_M;
+	qword = FIELD_PREP(ICE_FXD_FLTR_QW0_QINDEX_M, ctx->qindex);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_COMP_Q_M, ctx->comp_q);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_COMP_REPORT_M, ctx->comp_report);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_FD_SPACE_M, ctx->fd_space);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_STAT_CNT_M, ctx->cnt_index);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_STAT_ENA_M, ctx->cnt_ena);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_EVICT_ENA_M, ctx->evict_ena);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_TO_Q_M, ctx->toq);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_TO_Q_PRI_M, ctx->toq_prio);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_DPU_RECIPE_M, ctx->dpu_recipe);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_DROP_M, ctx->drop);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_FLEX_PRI_M, ctx->flex_prio);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_FLEX_MDID_M, ctx->flex_mdid);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW0_FLEX_VAL_M, ctx->flex_val);
 	fdir_desc->qidx_compq_space_stat = cpu_to_le64(qword);
 
 	/* prep QW1 of FD filter programming desc */
-	qword = ((u64)ctx->dtype << ICE_FXD_FLTR_QW1_DTYPE_S) &
-		ICE_FXD_FLTR_QW1_DTYPE_M;
-	qword |= ((u64)ctx->pcmd << ICE_FXD_FLTR_QW1_PCMD_S) &
-		 ICE_FXD_FLTR_QW1_PCMD_M;
-	qword |= ((u64)ctx->desc_prof_prio << ICE_FXD_FLTR_QW1_PROF_PRI_S) &
-		 ICE_FXD_FLTR_QW1_PROF_PRI_M;
-	qword |= ((u64)ctx->desc_prof << ICE_FXD_FLTR_QW1_PROF_S) &
-		 ICE_FXD_FLTR_QW1_PROF_M;
-	qword |= ((u64)ctx->fd_vsi << ICE_FXD_FLTR_QW1_FD_VSI_S) &
-		 ICE_FXD_FLTR_QW1_FD_VSI_M;
-	qword |= ((u64)ctx->swap << ICE_FXD_FLTR_QW1_SWAP_S) &
-		 ICE_FXD_FLTR_QW1_SWAP_M;
-	qword |= ((u64)ctx->fdid_prio << ICE_FXD_FLTR_QW1_FDID_PRI_S) &
-		 ICE_FXD_FLTR_QW1_FDID_PRI_M;
-	qword |= ((u64)ctx->fdid_mdid << ICE_FXD_FLTR_QW1_FDID_MDID_S) &
-		 ICE_FXD_FLTR_QW1_FDID_MDID_M;
-	qword |= ((u64)ctx->fdid << ICE_FXD_FLTR_QW1_FDID_S) &
-		 ICE_FXD_FLTR_QW1_FDID_M;
+	qword = FIELD_PREP(ICE_FXD_FLTR_QW1_DTYPE_M, ctx->dtype);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW1_PCMD_M, ctx->pcmd);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW1_PROF_PRI_M, ctx->desc_prof_prio);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW1_PROF_M, ctx->desc_prof);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW1_FD_VSI_M, ctx->fd_vsi);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW1_SWAP_M, ctx->swap);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW1_FDID_PRI_M, ctx->fdid_prio);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW1_FDID_MDID_M, ctx->fdid_mdid);
+	qword |= FIELD_PREP(ICE_FXD_FLTR_QW1_FDID_M, ctx->fdid);
 	fdir_desc->dtype_cmd_vsi_fdid = cpu_to_le64(qword);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index 5ce413965930..b0ce58829584 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -1409,13 +1409,13 @@ ice_write_prof_mask_reg(struct ice_hw *hw, enum ice_block blk, u16 mask_idx,
 	switch (blk) {
 	case ICE_BLK_RSS:
 		offset = GLQF_HMASK(mask_idx);
-		val = (idx << GLQF_HMASK_MSK_INDEX_S) & GLQF_HMASK_MSK_INDEX_M;
-		val |= (mask << GLQF_HMASK_MASK_S) & GLQF_HMASK_MASK_M;
+		val = FIELD_PREP(GLQF_HMASK_MSK_INDEX_M, idx);
+		val |= FIELD_PREP(GLQF_HMASK_MASK_M, mask);
 		break;
 	case ICE_BLK_FD:
 		offset = GLQF_FDMASK(mask_idx);
-		val = (idx << GLQF_FDMASK_MSK_INDEX_S) & GLQF_FDMASK_MSK_INDEX_M;
-		val |= (mask << GLQF_FDMASK_MASK_S) & GLQF_FDMASK_MASK_M;
+		val = FIELD_PREP(GLQF_FDMASK_MSK_INDEX_M, idx);
+		val |= FIELD_PREP(GLQF_FDMASK_MASK_M, mask);
 		break;
 	default:
 		ice_debug(hw, ICE_DBG_PKG, "No profile masks for block %d\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index fb8b925aaf8b..f0c890d612ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -2035,7 +2035,7 @@ ice_add_rss_list(struct ice_hw *hw, u16 vsi_handle, struct ice_flow_prof *prof)
  */
 #define ICE_FLOW_GEN_PROFID(hash, hdr, segs_cnt) \
 	((u64)(((u64)(hash) & ICE_FLOW_PROF_HASH_M) | \
-	       (((u64)(hdr) << ICE_FLOW_PROF_HDR_S) & ICE_FLOW_PROF_HDR_M) | \
+	       FIELD_PREP(ICE_FLOW_PROF_HDR_M, hdr) | \
 	       ((u8)((segs_cnt) - 1) ? ICE_FLOW_PROF_ENCAP_M : 0)))
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d826b5afa143..394f915290f6 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -986,13 +986,11 @@ static void ice_set_dflt_vsi_ctx(struct ice_hw *hw, struct ice_vsi_ctx *ctxt)
 		ctxt->info.inner_vlan_flags |=
 			ICE_AQ_VSI_INNER_VLAN_EMODE_NOTHING;
 		ctxt->info.outer_vlan_flags =
-			(ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ALL <<
-			 ICE_AQ_VSI_OUTER_VLAN_TX_MODE_S) &
-			ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M;
+			FIELD_PREP(ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M,
+				   ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ALL);
 		ctxt->info.outer_vlan_flags |=
-			(ICE_AQ_VSI_OUTER_TAG_VLAN_8100 <<
-			 ICE_AQ_VSI_OUTER_TAG_TYPE_S) &
-			ICE_AQ_VSI_OUTER_TAG_TYPE_M;
+			FIELD_PREP(ICE_AQ_VSI_OUTER_TAG_TYPE_M,
+				   ICE_AQ_VSI_OUTER_TAG_VLAN_8100);
 		ctxt->info.outer_vlan_flags |=
 			FIELD_PREP(ICE_AQ_VSI_OUTER_VLAN_EMODE_M,
 				   ICE_AQ_VSI_OUTER_VLAN_EMODE_NOTHING);
@@ -1071,10 +1069,8 @@ static int ice_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 		vsi->tc_cfg.tc_info[i].qcount_tx = num_txq_per_tc;
 		vsi->tc_cfg.tc_info[i].netdev_tc = netdev_tc++;
 
-		qmap = ((offset << ICE_AQ_VSI_TC_Q_OFFSET_S) &
-			ICE_AQ_VSI_TC_Q_OFFSET_M) |
-			((pow << ICE_AQ_VSI_TC_Q_NUM_S) &
-			 ICE_AQ_VSI_TC_Q_NUM_M);
+		qmap = FIELD_PREP(ICE_AQ_VSI_TC_Q_OFFSET_M, offset);
+		qmap |= FIELD_PREP(ICE_AQ_VSI_TC_Q_NUM_M, pow);
 		offset += num_rxq_per_tc;
 		tx_count += num_txq_per_tc;
 		ctxt->info.tc_mapping[i] = cpu_to_le16(qmap);
@@ -1157,18 +1153,14 @@ static void ice_set_fd_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 	ctxt->info.max_fd_fltr_shared =
 			cpu_to_le16(vsi->num_bfltr);
 	/* default queue index within the VSI of the default FD */
-	val = ((dflt_q << ICE_AQ_VSI_FD_DEF_Q_S) &
-	       ICE_AQ_VSI_FD_DEF_Q_M);
+	val = FIELD_PREP(ICE_AQ_VSI_FD_DEF_Q_M, dflt_q);
 	/* target queue or queue group to the FD filter */
-	val |= ((dflt_q_group << ICE_AQ_VSI_FD_DEF_GRP_S) &
-		ICE_AQ_VSI_FD_DEF_GRP_M);
+	val |= FIELD_PREP(ICE_AQ_VSI_FD_DEF_GRP_M, dflt_q_group);
 	ctxt->info.fd_def_q = cpu_to_le16(val);
 	/* queue index on which FD filter completion is reported */
-	val = ((report_q << ICE_AQ_VSI_FD_REPORT_Q_S) &
-	       ICE_AQ_VSI_FD_REPORT_Q_M);
+	val = FIELD_PREP(ICE_AQ_VSI_FD_REPORT_Q_M, report_q);
 	/* priority of the default qindex action */
-	val |= ((dflt_q_prio << ICE_AQ_VSI_FD_DEF_PRIORITY_S) &
-		ICE_AQ_VSI_FD_DEF_PRIORITY_M);
+	val |= FIELD_PREP(ICE_AQ_VSI_FD_DEF_PRIORITY_M, dflt_q_prio);
 	ctxt->info.fd_report_opt = cpu_to_le16(val);
 }
 
@@ -1204,9 +1196,9 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 		return;
 	}
 
-	ctxt->info.q_opt_rss = ((lut_type << ICE_AQ_VSI_Q_OPT_RSS_LUT_S) &
-				ICE_AQ_VSI_Q_OPT_RSS_LUT_M) |
-				(hash_type & ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
+	ctxt->info.q_opt_rss = FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M,
+					  lut_type);
+	ctxt->info.q_opt_rss |= (hash_type & ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
 }
 
 static void
@@ -1220,10 +1212,8 @@ ice_chnl_vsi_setup_q_map(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt)
 	qcount = min_t(int, vsi->num_rxq, pf->num_lan_msix);
 
 	pow = order_base_2(qcount);
-	qmap = ((offset << ICE_AQ_VSI_TC_Q_OFFSET_S) &
-		 ICE_AQ_VSI_TC_Q_OFFSET_M) |
-		 ((pow << ICE_AQ_VSI_TC_Q_NUM_S) &
-		   ICE_AQ_VSI_TC_Q_NUM_M);
+	qmap = FIELD_PREP(ICE_AQ_VSI_TC_Q_OFFSET_M, offset);
+	qmap |= FIELD_PREP(ICE_AQ_VSI_TC_Q_NUM_M, pow);
 
 	ctxt->info.tc_mapping[0] = cpu_to_le16(qmap);
 	ctxt->info.mapping_flags |= cpu_to_le16(ICE_AQ_VSI_Q_MAP_CONTIG);
@@ -1813,11 +1803,8 @@ ice_write_qrxflxp_cntxt(struct ice_hw *hw, u16 pf_q, u32 rxdid, u32 prio,
 		    QRXFLXP_CNTXT_RXDID_PRIO_M |
 		    QRXFLXP_CNTXT_TS_M);
 
-	regval |= (rxdid << QRXFLXP_CNTXT_RXDID_IDX_S) &
-		QRXFLXP_CNTXT_RXDID_IDX_M;
-
-	regval |= (prio << QRXFLXP_CNTXT_RXDID_PRIO_S) &
-		QRXFLXP_CNTXT_RXDID_PRIO_M;
+	regval |= FIELD_PREP(QRXFLXP_CNTXT_RXDID_IDX_M, rxdid);
+	regval |= FIELD_PREP(QRXFLXP_CNTXT_RXDID_PRIO_M, prio);
 
 	if (ena_ts)
 		/* Enable TimeSync on this queue */
@@ -3341,9 +3328,8 @@ ice_vsi_setup_q_map_mqprio(struct ice_vsi *vsi, struct ice_vsi_ctx *ctxt,
 	vsi->tc_cfg.ena_tc = ena_tc ? ena_tc : 1;
 
 	pow = order_base_2(tc0_qcount);
-	qmap = ((tc0_offset << ICE_AQ_VSI_TC_Q_OFFSET_S) &
-		ICE_AQ_VSI_TC_Q_OFFSET_M) |
-		((pow << ICE_AQ_VSI_TC_Q_NUM_S) & ICE_AQ_VSI_TC_Q_NUM_M);
+	qmap = FIELD_PREP(ICE_AQ_VSI_TC_Q_OFFSET_M, tc0_offset);
+	qmap |= FIELD_PREP(ICE_AQ_VSI_TC_Q_NUM_M, pow);
 
 	ice_for_each_traffic_class(i) {
 		if (!(vsi->tc_cfg.ena_tc & BIT(i))) {
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 03fc9c7cd21a..42458554d2a7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1359,8 +1359,8 @@ static int ice_ptp_tx_ena_intr(struct ice_pf *pf, bool ena, u32 threshold)
 		if (ena) {
 			val |= Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
 			val &= ~Q_REG_TX_MEM_GBL_CFG_INTR_THR_M;
-			val |= ((threshold << Q_REG_TX_MEM_GBL_CFG_INTR_THR_S) &
-				Q_REG_TX_MEM_GBL_CFG_INTR_THR_M);
+			val |= FIELD_PREP(Q_REG_TX_MEM_GBL_CFG_INTR_THR_M,
+					  threshold);
 		} else {
 			val &= ~Q_REG_TX_MEM_GBL_CFG_INTR_ENA_M;
 		}
@@ -1505,8 +1505,7 @@ ice_ptp_cfg_extts(struct ice_pf *pf, bool ena, unsigned int chan, u32 gpio_pin,
 		 * + num_in_channels * tmr_idx
 		 */
 		func = 1 + chan + (tmr_idx * 3);
-		gpio_reg = ((func << GLGEN_GPIO_CTL_PIN_FUNC_S) &
-			    GLGEN_GPIO_CTL_PIN_FUNC_M);
+		gpio_reg = FIELD_PREP(GLGEN_GPIO_CTL_PIN_FUNC_M, func);
 		pf->ptp.ext_ts_chan |= (1 << chan);
 	} else {
 		/* clear the values we set to reset defaults */
@@ -1616,7 +1615,7 @@ static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
 	/* 4. write GPIO CTL reg */
 	func = 8 + chan + (tmr_idx * 4);
 	val = GLGEN_GPIO_CTL_PIN_DIR_M |
-	      ((func << GLGEN_GPIO_CTL_PIN_FUNC_S) & GLGEN_GPIO_CTL_PIN_FUNC_M);
+	      FIELD_PREP(GLGEN_GPIO_CTL_PIN_FUNC_M, func);
 	wr32(hw, GLGEN_GPIO_CTL(gpio_pin), val);
 
 	/* Store the value if requested */
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 6d33dd647c78..54d602388c9c 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -106,10 +106,8 @@ static void ice_dis_vf_mappings(struct ice_vf *vf)
 	for (v = first; v <= last; v++) {
 		u32 reg;
 
-		reg = (((1 << GLINT_VECT2FUNC_IS_PF_S) &
-			GLINT_VECT2FUNC_IS_PF_M) |
-		       ((hw->pf_id << GLINT_VECT2FUNC_PF_NUM_S) &
-			GLINT_VECT2FUNC_PF_NUM_M));
+		reg = FIELD_PREP(GLINT_VECT2FUNC_IS_PF_M, 1) |
+		      FIELD_PREP(GLINT_VECT2FUNC_PF_NUM_M, hw->pf_id);
 		wr32(hw, GLINT_VECT2FUNC(v), reg);
 	}
 
@@ -275,24 +273,20 @@ static void ice_ena_vf_msix_mappings(struct ice_vf *vf)
 		(device_based_first_msix + vf->num_msix) - 1;
 	device_based_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
 
-	reg = (((device_based_first_msix << VPINT_ALLOC_FIRST_S) &
-		VPINT_ALLOC_FIRST_M) |
-	       ((device_based_last_msix << VPINT_ALLOC_LAST_S) &
-		VPINT_ALLOC_LAST_M) | VPINT_ALLOC_VALID_M);
+	reg = FIELD_PREP(VPINT_ALLOC_FIRST_M, device_based_first_msix) |
+	      FIELD_PREP(VPINT_ALLOC_LAST_M, device_based_last_msix) |
+	      VPINT_ALLOC_VALID_M;
 	wr32(hw, VPINT_ALLOC(vf->vf_id), reg);
 
-	reg = (((device_based_first_msix << VPINT_ALLOC_PCI_FIRST_S)
-		 & VPINT_ALLOC_PCI_FIRST_M) |
-	       ((device_based_last_msix << VPINT_ALLOC_PCI_LAST_S) &
-		VPINT_ALLOC_PCI_LAST_M) | VPINT_ALLOC_PCI_VALID_M);
+	reg = FIELD_PREP(VPINT_ALLOC_PCI_FIRST_M, device_based_first_msix) |
+	      FIELD_PREP(VPINT_ALLOC_PCI_LAST_M, device_based_last_msix) |
+	      VPINT_ALLOC_PCI_VALID_M;
 	wr32(hw, VPINT_ALLOC_PCI(vf->vf_id), reg);
 
 	/* map the interrupts to its functions */
 	for (v = pf_based_first_msix; v <= pf_based_last_msix; v++) {
-		reg = (((device_based_vf_id << GLINT_VECT2FUNC_VF_NUM_S) &
-			GLINT_VECT2FUNC_VF_NUM_M) |
-		       ((hw->pf_id << GLINT_VECT2FUNC_PF_NUM_S) &
-			GLINT_VECT2FUNC_PF_NUM_M));
+		reg = FIELD_PREP(GLINT_VECT2FUNC_VF_NUM_M, device_based_vf_id) |
+		      FIELD_PREP(GLINT_VECT2FUNC_PF_NUM_M, hw->pf_id);
 		wr32(hw, GLINT_VECT2FUNC(v), reg);
 	}
 
@@ -325,10 +319,8 @@ static void ice_ena_vf_q_mappings(struct ice_vf *vf, u16 max_txq, u16 max_rxq)
 		 * VFNUMQ value should be set to (number of queues - 1). A value
 		 * of 0 means 1 queue and a value of 255 means 256 queues
 		 */
-		reg = (((vsi->txq_map[0] << VPLAN_TX_QBASE_VFFIRSTQ_S) &
-			VPLAN_TX_QBASE_VFFIRSTQ_M) |
-		       (((max_txq - 1) << VPLAN_TX_QBASE_VFNUMQ_S) &
-			VPLAN_TX_QBASE_VFNUMQ_M));
+		reg = FIELD_PREP(VPLAN_TX_QBASE_VFFIRSTQ_M, vsi->txq_map[0]) |
+		      FIELD_PREP(VPLAN_TX_QBASE_VFNUMQ_M, max_txq - 1);
 		wr32(hw, VPLAN_TX_QBASE(vf->vf_id), reg);
 	} else {
 		dev_err(dev, "Scattered mode for VF Tx queues is not yet implemented\n");
@@ -343,10 +335,8 @@ static void ice_ena_vf_q_mappings(struct ice_vf *vf, u16 max_txq, u16 max_rxq)
 		 * VFNUMQ value should be set to (number of queues - 1). A value
 		 * of 0 means 1 queue and a value of 255 means 256 queues
 		 */
-		reg = (((vsi->rxq_map[0] << VPLAN_RX_QBASE_VFFIRSTQ_S) &
-			VPLAN_RX_QBASE_VFFIRSTQ_M) |
-		       (((max_rxq - 1) << VPLAN_RX_QBASE_VFNUMQ_S) &
-			VPLAN_RX_QBASE_VFNUMQ_M));
+		reg = FIELD_PREP(VPLAN_RX_QBASE_VFFIRSTQ_M, vsi->rxq_map[0]) |
+		      FIELD_PREP(VPLAN_RX_QBASE_VFNUMQ_M, max_rxq - 1);
 		wr32(hw, VPLAN_RX_QBASE(vf->vf_id), reg);
 	} else {
 		dev_err(dev, "Scattered mode for VF Rx queues is not yet implemented\n");
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index ee19f3aa3d19..5db1fddb0b47 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -2492,25 +2492,24 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 
 	switch (f_info->fltr_act) {
 	case ICE_FWD_TO_VSI:
-		act |= (f_info->fwd_id.hw_vsi_id << ICE_SINGLE_ACT_VSI_ID_S) &
-			ICE_SINGLE_ACT_VSI_ID_M;
+		act |= FIELD_PREP(ICE_SINGLE_ACT_VSI_ID_M,
+				  f_info->fwd_id.hw_vsi_id);
 		if (f_info->lkup_type != ICE_SW_LKUP_VLAN)
 			act |= ICE_SINGLE_ACT_VSI_FORWARDING |
 				ICE_SINGLE_ACT_VALID_BIT;
 		break;
 	case ICE_FWD_TO_VSI_LIST:
 		act |= ICE_SINGLE_ACT_VSI_LIST;
-		act |= (f_info->fwd_id.vsi_list_id <<
-			ICE_SINGLE_ACT_VSI_LIST_ID_S) &
-			ICE_SINGLE_ACT_VSI_LIST_ID_M;
+		act |= FIELD_PREP(ICE_SINGLE_ACT_VSI_LIST_ID_M,
+				  f_info->fwd_id.vsi_list_id);
 		if (f_info->lkup_type != ICE_SW_LKUP_VLAN)
 			act |= ICE_SINGLE_ACT_VSI_FORWARDING |
 				ICE_SINGLE_ACT_VALID_BIT;
 		break;
 	case ICE_FWD_TO_Q:
 		act |= ICE_SINGLE_ACT_TO_Q;
-		act |= (f_info->fwd_id.q_id << ICE_SINGLE_ACT_Q_INDEX_S) &
-			ICE_SINGLE_ACT_Q_INDEX_M;
+		act |= FIELD_PREP(ICE_SINGLE_ACT_Q_INDEX_M,
+				  f_info->fwd_id.q_id);
 		break;
 	case ICE_DROP_PACKET:
 		act |= ICE_SINGLE_ACT_VSI_FORWARDING | ICE_SINGLE_ACT_DROP |
@@ -2520,10 +2519,9 @@ ice_fill_sw_rule(struct ice_hw *hw, struct ice_fltr_info *f_info,
 		q_rgn = f_info->qgrp_size > 0 ?
 			(u8)ilog2(f_info->qgrp_size) : 0;
 		act |= ICE_SINGLE_ACT_TO_Q;
-		act |= (f_info->fwd_id.q_id << ICE_SINGLE_ACT_Q_INDEX_S) &
-			ICE_SINGLE_ACT_Q_INDEX_M;
-		act |= (q_rgn << ICE_SINGLE_ACT_Q_REGION_S) &
-			ICE_SINGLE_ACT_Q_REGION_M;
+		act |= FIELD_PREP(ICE_SINGLE_ACT_Q_INDEX_M,
+				  f_info->fwd_id.q_id);
+		act |= FIELD_PREP(ICE_SINGLE_ACT_Q_REGION_M, q_rgn);
 		break;
 	default:
 		return;
@@ -2649,7 +2647,7 @@ ice_add_marker_act(struct ice_hw *hw, struct ice_fltr_mgmt_list_entry *m_ent,
 		m_ent->fltr_info.fwd_id.hw_vsi_id;
 
 	act = ICE_LG_ACT_VSI_FORWARDING | ICE_LG_ACT_VALID_BIT;
-	act |= (id << ICE_LG_ACT_VSI_LIST_ID_S) & ICE_LG_ACT_VSI_LIST_ID_M;
+	act |= FIELD_PREP(ICE_LG_ACT_VSI_LIST_ID_M, id);
 	if (m_ent->vsi_count > 1)
 		act |= ICE_LG_ACT_VSI_LIST;
 	lg_act->act[0] = cpu_to_le32(act);
@@ -2657,16 +2655,15 @@ ice_add_marker_act(struct ice_hw *hw, struct ice_fltr_mgmt_list_entry *m_ent,
 	/* Second action descriptor type */
 	act = ICE_LG_ACT_GENERIC;
 
-	act |= (1 << ICE_LG_ACT_GENERIC_VALUE_S) & ICE_LG_ACT_GENERIC_VALUE_M;
+	act |= FIELD_PREP(ICE_LG_ACT_GENERIC_VALUE_M, 1);
 	lg_act->act[1] = cpu_to_le32(act);
 
-	act = (ICE_LG_ACT_GENERIC_OFF_RX_DESC_PROF_IDX <<
-	       ICE_LG_ACT_GENERIC_OFFSET_S) & ICE_LG_ACT_GENERIC_OFFSET_M;
+	act = FIELD_PREP(ICE_LG_ACT_GENERIC_OFFSET_M,
+			 ICE_LG_ACT_GENERIC_OFF_RX_DESC_PROF_IDX);
 
 	/* Third action Marker value */
 	act |= ICE_LG_ACT_GENERIC;
-	act |= (sw_marker << ICE_LG_ACT_GENERIC_VALUE_S) &
-		ICE_LG_ACT_GENERIC_VALUE_M;
+	act |= FIELD_PREP(ICE_LG_ACT_GENERIC_VALUE_M, sw_marker);
 
 	lg_act->act[2] = cpu_to_le32(act);
 
@@ -2676,8 +2673,7 @@ ice_add_marker_act(struct ice_hw *hw, struct ice_fltr_mgmt_list_entry *m_ent,
 
 	/* Update the action to point to the large action ID */
 	rx_tx->act = cpu_to_le32(ICE_SINGLE_ACT_PTR |
-				 ((l_id << ICE_SINGLE_ACT_PTR_VAL_S) &
-				  ICE_SINGLE_ACT_PTR_VAL_M));
+				 FIELD_PREP(ICE_SINGLE_ACT_PTR_VAL_M, l_id));
 
 	/* Use the filter rule ID of the previously created rule with single
 	 * act. Once the update happens, hardware will treat this as large
@@ -4426,8 +4422,8 @@ ice_alloc_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 	int status;
 
 	buf->num_elems = cpu_to_le16(num_items);
-	buf->res_type = cpu_to_le16(((type << ICE_AQC_RES_TYPE_S) &
-				      ICE_AQC_RES_TYPE_M) | alloc_shared);
+	buf->res_type = cpu_to_le16(FIELD_PREP(ICE_AQC_RES_TYPE_M, type) |
+				    alloc_shared);
 
 	status = ice_aq_alloc_free_res(hw, buf, buf_len, ice_aqc_opc_alloc_res);
 	if (status)
@@ -4454,8 +4450,8 @@ ice_free_res_cntr(struct ice_hw *hw, u8 type, u8 alloc_shared, u16 num_items,
 	int status;
 
 	buf->num_elems = cpu_to_le16(num_items);
-	buf->res_type = cpu_to_le16(((type << ICE_AQC_RES_TYPE_S) &
-				      ICE_AQC_RES_TYPE_M) | alloc_shared);
+	buf->res_type = cpu_to_le16(FIELD_PREP(ICE_AQC_RES_TYPE_M, type) |
+				    alloc_shared);
 	buf->elem[0].e.sw_resp = cpu_to_le16(counter_id);
 
 	status = ice_aq_alloc_free_res(hw, buf, buf_len, ice_aqc_opc_free_res);
@@ -5024,8 +5020,8 @@ ice_add_sw_recipe(struct ice_hw *hw, struct ice_sw_recipe *rm,
 			entry->chain_idx = chain_idx;
 			content->result_indx =
 				ICE_AQ_RECIPE_RESULT_EN |
-				((chain_idx << ICE_AQ_RECIPE_RESULT_DATA_S) &
-				 ICE_AQ_RECIPE_RESULT_DATA_M);
+				FIELD_PREP(ICE_AQ_RECIPE_RESULT_DATA_M,
+					   chain_idx);
 			clear_bit(chain_idx, result_idx_bm);
 			chain_idx = find_first_bit(result_idx_bm,
 						   ICE_MAX_FV_WORDS);
@@ -6125,23 +6121,22 @@ ice_add_adv_rule(struct ice_hw *hw, struct ice_adv_lkup_elem *lkups,
 
 	switch (rinfo->sw_act.fltr_act) {
 	case ICE_FWD_TO_VSI:
-		act |= (rinfo->sw_act.fwd_id.hw_vsi_id <<
-			ICE_SINGLE_ACT_VSI_ID_S) & ICE_SINGLE_ACT_VSI_ID_M;
+		act |= FIELD_PREP(ICE_SINGLE_ACT_VSI_ID_M,
+				  rinfo->sw_act.fwd_id.hw_vsi_id);
 		act |= ICE_SINGLE_ACT_VSI_FORWARDING | ICE_SINGLE_ACT_VALID_BIT;
 		break;
 	case ICE_FWD_TO_Q:
 		act |= ICE_SINGLE_ACT_TO_Q;
-		act |= (rinfo->sw_act.fwd_id.q_id << ICE_SINGLE_ACT_Q_INDEX_S) &
-		       ICE_SINGLE_ACT_Q_INDEX_M;
+		act |= FIELD_PREP(ICE_SINGLE_ACT_Q_INDEX_M,
+				  rinfo->sw_act.fwd_id.q_id);
 		break;
 	case ICE_FWD_TO_QGRP:
 		q_rgn = rinfo->sw_act.qgrp_size > 0 ?
 			(u8)ilog2(rinfo->sw_act.qgrp_size) : 0;
 		act |= ICE_SINGLE_ACT_TO_Q;
-		act |= (rinfo->sw_act.fwd_id.q_id << ICE_SINGLE_ACT_Q_INDEX_S) &
-		       ICE_SINGLE_ACT_Q_INDEX_M;
-		act |= (q_rgn << ICE_SINGLE_ACT_Q_REGION_S) &
-		       ICE_SINGLE_ACT_Q_REGION_M;
+		act |= FIELD_PREP(ICE_SINGLE_ACT_Q_INDEX_M,
+				  rinfo->sw_act.fwd_id.q_id);
+		act |= FIELD_PREP(ICE_SINGLE_ACT_Q_REGION_M, q_rgn);
 		break;
 	case ICE_DROP_PACKET:
 		act |= ICE_SINGLE_ACT_VSI_FORWARDING | ICE_SINGLE_ACT_DROP |
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 9e97ea863068..79d986273a9f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1494,9 +1494,9 @@ static void ice_set_wb_on_itr(struct ice_q_vector *q_vector)
 	 * be static in non-adaptive mode (user configured)
 	 */
 	wr32(&vsi->back->hw, GLINT_DYN_CTL(q_vector->reg_idx),
-	     ((ICE_ITR_NONE << GLINT_DYN_CTL_ITR_INDX_S) &
-	      GLINT_DYN_CTL_ITR_INDX_M) | GLINT_DYN_CTL_INTENA_MSK_M |
-	     GLINT_DYN_CTL_WB_ON_ITR_M);
+	     FIELD_PREP(GLINT_DYN_CTL_ITR_INDX_M, ICE_ITR_NONE) |
+	     FIELD_PREP(GLINT_DYN_CTL_INTENA_MSK_M, 1) |
+	     FIELD_PREP(GLINT_DYN_CTL_WB_ON_ITR_M, 1));
 
 	q_vector->wb_on_itr = true;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 5261ba802c36..8bec83965e50 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -832,11 +832,9 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 			goto error_param;
 		}
 
-		ctx->info.q_opt_rss = ((lut_type <<
-					ICE_AQ_VSI_Q_OPT_RSS_LUT_S) &
-				       ICE_AQ_VSI_Q_OPT_RSS_LUT_M) |
-				       (hash_type &
-					ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
+		ctx->info.q_opt_rss = FIELD_PREP(ICE_AQ_VSI_Q_OPT_RSS_LUT_M,
+						 lut_type) |
+				      (hash_type & ICE_AQ_VSI_Q_OPT_RSS_HASH_M);
 
 		/* Preserve existing queueing option setting */
 		ctx->info.q_opt_rss |= (vsi->info.q_opt_rss &
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 24b23b7ef04a..e62104f895a1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -21,7 +21,7 @@
  */
 #define ICE_FLOW_PROF_FD(vsi, flow, tun_offs) \
 	((u64)(((((flow) + (tun_offs)) & ICE_FLOW_PROF_TYPE_M)) | \
-	      (((u64)(vsi) << ICE_FLOW_PROF_VSI_S) & ICE_FLOW_PROF_VSI_M)))
+	      FIELD_PREP(ICE_FLOW_PROF_VSI_M, vsi)))
 
 #define GTPU_TEID_OFFSET 4
 #define GTPU_EH_QFI_OFFSET 1
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
index 76266e709a39..737f72694ac7 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -483,8 +483,7 @@ int ice_vsi_ena_outer_stripping(struct ice_vsi *vsi, u16 tpid)
 	ctxt->info.outer_vlan_flags |=
 		((ICE_AQ_VSI_OUTER_VLAN_EMODE_SHOW_BOTH <<
 		  ICE_AQ_VSI_OUTER_VLAN_EMODE_S) |
-		 ((tag_type << ICE_AQ_VSI_OUTER_TAG_TYPE_S) &
-		  ICE_AQ_VSI_OUTER_TAG_TYPE_M));
+		 FIELD_PREP(ICE_AQ_VSI_OUTER_TAG_TYPE_M, tag_type));
 
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err)
@@ -589,11 +588,9 @@ int ice_vsi_ena_outer_insertion(struct ice_vsi *vsi, u16 tpid)
 		  ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M |
 		  ICE_AQ_VSI_OUTER_TAG_TYPE_M);
 	ctxt->info.outer_vlan_flags |=
-		((ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ALL <<
-		  ICE_AQ_VSI_OUTER_VLAN_TX_MODE_S) &
-		 ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M) |
-		((tag_type << ICE_AQ_VSI_OUTER_TAG_TYPE_S) &
-		 ICE_AQ_VSI_OUTER_TAG_TYPE_M);
+		FIELD_PREP(ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M,
+			   ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ALL) |
+		FIELD_PREP(ICE_AQ_VSI_OUTER_TAG_TYPE_M, tag_type);
 
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err)
@@ -642,9 +639,8 @@ int ice_vsi_dis_outer_insertion(struct ice_vsi *vsi)
 		  ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M);
 	ctxt->info.outer_vlan_flags |=
 		ICE_AQ_VSI_OUTER_VLAN_BLOCK_TX_DESC |
-		((ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ALL <<
-		  ICE_AQ_VSI_OUTER_VLAN_TX_MODE_S) &
-		 ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M);
+		FIELD_PREP(ICE_AQ_VSI_OUTER_VLAN_TX_MODE_M,
+			   ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ALL);
 
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err)
@@ -702,8 +698,7 @@ __ice_vsi_set_outer_port_vlan(struct ice_vsi *vsi, u16 vlan_info, u16 tpid)
 	ctxt->info.outer_vlan_flags =
 		(ICE_AQ_VSI_OUTER_VLAN_EMODE_SHOW <<
 		 ICE_AQ_VSI_OUTER_VLAN_EMODE_S) |
-		((tag_type << ICE_AQ_VSI_OUTER_TAG_TYPE_S) &
-		 ICE_AQ_VSI_OUTER_TAG_TYPE_M) |
+		FIELD_PREP(ICE_AQ_VSI_OUTER_TAG_TYPE_M, tag_type) |
 		ICE_AQ_VSI_OUTER_VLAN_BLOCK_TX_DESC |
 		(ICE_AQ_VSI_OUTER_VLAN_TX_MODE_ACCEPTUNTAGGED <<
 		 ICE_AQ_VSI_OUTER_VLAN_TX_MODE_S) |
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

