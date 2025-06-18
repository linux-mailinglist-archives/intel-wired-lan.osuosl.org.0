Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52440ADF95B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jun 2025 00:25:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7B8D60BB6;
	Wed, 18 Jun 2025 22:25:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7v0HLxKLpKvc; Wed, 18 Jun 2025 22:25:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F7B260BD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750285512;
	bh=6Bx6/8xaD9TjLDYbeIRnTx/ogOKIZRi4FYBu++INF4M=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fFneHapQf92OS4c4kn5czRI2p4W+B+KGWsDFWFCGBaVn0+w1cqYTp5WdwmL6URk4A
	 dhDTBR0i3uFZOkCQu9BIlbvKdmRlzowuDgK4QiIgjjMkFEmpA8I6NQz+IqY+ass8ZQ
	 vm0maTPAFFHIj4Z9BsdseAMybVy5Tmnx/xncZqXx/e0sKvEqjh7xZYOmVijVVMy86p
	 4dwPT6RTjYN6Zrhhexm9/POk69xl4hEUe2aKHQAT62h8Ct7q3W8oS8fzbH9x2ZZInR
	 Mfek79KoAL0ZzD4GhwAa3dk7wFAm+246cunmL3cW7FcjxCXWYxG/7XsUuu/Qjva/U9
	 juo0qCiEUAo1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0F7B260BD3;
	Wed, 18 Jun 2025 22:25:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6421F151
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AC38E405A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O_nhxgy7-_TJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Jun 2025 22:25:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F07E6405AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F07E6405AC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F07E6405AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Jun 2025 22:25:06 +0000 (UTC)
X-CSE-ConnectionGUID: +gzybSI3SSOM19TflVENiQ==
X-CSE-MsgGUID: 411ykal8SDGcZk1z5je+3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52447749"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52447749"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:05 -0700
X-CSE-ConnectionGUID: PYL5fvQDTumpd28MpXVjtA==
X-CSE-MsgGUID: DoY/6CX5QCqTYK+r68ZviA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="149870018"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:25:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 18 Jun 2025 15:24:40 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-e810-live-migration-jk-migration-prep-v1-5-72a37485453e@intel.com>
References: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
In-Reply-To: <20250618-e810-live-migration-jk-migration-prep-v1-0-72a37485453e@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org, 
 Madhu Chittim <madhu.chittim@intel.com>, Yahui Cao <yahui.cao@intel.com>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750285507; x=1781821507;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=rhq8dzIz8pax8Wh2vmobZ3l9cl/j650dJwwNvVc6lLA=;
 b=SS7imEW4AGTBpF2su2DNqz+I0x9aF4O0C31y/GEqclgNx2HCbuUdbioO
 6L2QoYCmjvE4NRG4KLahTartSmwPricnca3bLwgm6Mlqg4zQUO+LvxI6q
 vlUOOTzHIIFALn32Z6aBePKI1rZIhHhaiSvrGbh2g/h4e6l48tm1S3132
 Gqh4DieM3shT4+/lliFzCi0n1uBvjHvq9cxSnp87ojiLIPQID8eFRIihv
 fMg3gOVh2rAxfpQBBy6AepD2NhXHEpBHu7IaeVV0xYNcJntX0YUInZr/w
 mbUvOwR8igbnG/+lbCcL0Tp8S1shIBUR44WkChhjx1tpwSGQP8jse+pve
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SS7imEW4
Subject: [Intel-wired-lan] [PATCH iwl-next 5/8] ice: expose VF functions
 used by live migration
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

The live migration process will require configuring the target VF with the
data provided from the source host. A few helper functions in ice_sriov.c
and ice_virtchnl.c will be needed for this process, but are currently
static.

Expose these functions in their respective headers so that the live
migration module can use them during the migration process.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.h    |  7 +++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h | 19 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 13 ++++++-------
 3 files changed, 32 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 96549ca5c52c5b0483266096a49e278d2206a01d..d1a998a4bef64c4d573abc8c3489e12d7d7a4471 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -64,6 +64,7 @@ bool
 ice_vc_validate_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto);
 u32 ice_sriov_get_vf_total_msix(struct pci_dev *pdev);
 int ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count);
+int ice_vf_vsi_dis_single_txq(struct ice_vf *vf, struct ice_vsi *vsi, u16 q_id);
 #else /* CONFIG_PCI_IOV */
 static inline void ice_process_vflr_event(struct ice_pf *pf) { }
 static inline void ice_free_vfs(struct ice_pf *pf) { }
@@ -164,5 +165,11 @@ ice_sriov_set_msix_vec_count(struct pci_dev *vf_dev, int msix_vec_count)
 {
 	return -EOPNOTSUPP;
 }
+
+static inline int ice_vf_vsi_dis_single_txq(struct ice_vf *vf,
+					    struct ice_vsi *vsi, u16 q_id)
+{
+	return -EOPNOTSUPP;
+}
 #endif /* CONFIG_PCI_IOV */
 #endif /* _ICE_SRIOV_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index b3eece8c67804a808e51875a975be2176b1cab37..71bb456e2d71a5fe73e0372ac3cf5ed67ee197b2 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -92,12 +92,31 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id);
 void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
 			   struct ice_mbx_data *mbxdata);
+void ice_vf_ena_rxq_interrupt(struct ice_vsi *vsi, u32 q_idx);
+void ice_vf_ena_txq_interrupt(struct ice_vsi *vsi, u32 q_idx);
+int ice_vf_ena_vlan_promisc(struct ice_vf *vf, struct ice_vsi *vsi,
+			    struct ice_vlan *vlan);
+bool ice_is_vlan_promisc_allowed(struct ice_vf *vf);
 #else /* CONFIG_PCI_IOV */
 static inline void ice_virtchnl_set_dflt_ops(struct ice_vf *vf) { }
 static inline void ice_virtchnl_set_repr_ops(struct ice_vf *vf) { }
 static inline void ice_vc_notify_vf_link_state(struct ice_vf *vf) { }
 static inline void ice_vc_notify_link_state(struct ice_pf *pf) { }
 static inline void ice_vc_notify_reset(struct ice_pf *pf) { }
+static inline void ice_vf_ena_rxq_interrupt(struct ice_vsi *vsi, u32 q_idx) { }
+static inline void ice_vf_ena_txq_interrupt(struct ice_vsi *vsi, u32 q_idx) { }
+
+static inline int ice_vf_ena_vlan_promisc(struct ice_vf *vf,
+					  struct ice_vsi *vsi,
+					  struct ice_vlan *vlan)
+{
+	return -EOPNOTSUPP;
+}
+
+static inline bool ice_is_vlan_promisc_allowed(struct ice_vf *vf)
+{
+	return false;
+}
 
 static inline int
 ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 691ebb143e75863d25d6c0fbd1f0f330b363f919..25796727307978a89815e94caf6fa75030426658 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1427,7 +1427,7 @@ static bool ice_vc_validate_vqs_bitmaps(struct virtchnl_queue_select *vqs)
  * @vsi: VSI of the VF to configure
  * @q_idx: VF queue index used to determine the queue in the PF's space
  */
-static void ice_vf_ena_txq_interrupt(struct ice_vsi *vsi, u32 q_idx)
+void ice_vf_ena_txq_interrupt(struct ice_vsi *vsi, u32 q_idx)
 {
 	struct ice_hw *hw = &vsi->back->hw;
 	u32 pfq = vsi->txq_map[q_idx];
@@ -1450,7 +1450,7 @@ static void ice_vf_ena_txq_interrupt(struct ice_vsi *vsi, u32 q_idx)
  * @vsi: VSI of the VF to configure
  * @q_idx: VF queue index used to determine the queue in the PF's space
  */
-static void ice_vf_ena_rxq_interrupt(struct ice_vsi *vsi, u32 q_idx)
+void ice_vf_ena_rxq_interrupt(struct ice_vsi *vsi, u32 q_idx)
 {
 	struct ice_hw *hw = &vsi->back->hw;
 	u32 pfq = vsi->rxq_map[q_idx];
@@ -1566,8 +1566,7 @@ static int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
  * disabled then clear q_id bit in the enabled queues bitmap and return
  * success. Otherwise return error.
  */
-static int
-ice_vf_vsi_dis_single_txq(struct ice_vf *vf, struct ice_vsi *vsi, u16 q_id)
+int ice_vf_vsi_dis_single_txq(struct ice_vf *vf, struct ice_vsi *vsi, u16 q_id)
 {
 	struct ice_txq_meta txq_meta = { 0 };
 	struct ice_tx_ring *ring;
@@ -2606,7 +2605,7 @@ static bool ice_vf_vlan_offload_ena(u32 caps)
  * ice_is_vlan_promisc_allowed - check if VLAN promiscuous config is allowed
  * @vf: VF used to determine if VLAN promiscuous config is allowed
  */
-static bool ice_is_vlan_promisc_allowed(struct ice_vf *vf)
+bool ice_is_vlan_promisc_allowed(struct ice_vf *vf)
 {
 	if ((test_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states) ||
 	     test_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states)) &&
@@ -2625,8 +2624,8 @@ static bool ice_is_vlan_promisc_allowed(struct ice_vf *vf)
  * This function should only be called if VLAN promiscuous mode is allowed,
  * which can be determined via ice_is_vlan_promisc_allowed().
  */
-static int ice_vf_ena_vlan_promisc(struct ice_vf *vf, struct ice_vsi *vsi,
-				   struct ice_vlan *vlan)
+int ice_vf_ena_vlan_promisc(struct ice_vf *vf, struct ice_vsi *vsi,
+			    struct ice_vlan *vlan)
 {
 	u8 promisc_m = 0;
 	int status;

-- 
2.48.1.397.gec9d649cc640

