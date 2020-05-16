Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C491D5D7E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:57:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2D83222795;
	Sat, 16 May 2020 00:57:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CZ9U1QwScaCz; Sat, 16 May 2020 00:57:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 293F12281E;
	Sat, 16 May 2020 00:57:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 350901BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2CC3C204BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDWfB77Y2M+m for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:57:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 331FA227AA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:42 +0000 (UTC)
IronPort-SDR: KAxz+Nv0kJgQ9Rm3Nl+8wxvlcf+5mQ9VXvnhBR5EECd/nSBuoNsR3sv843FdxFuOz0XFRYoPxn
 ue94pjaAoa2w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:57:41 -0700
IronPort-SDR: cb93nqnTAVFWsRegEBk3ULCwyK53s84HRpwn+5j0wA8iw2UO0c4qK4fl2XEisazT0sNWZP0Au+
 YEmp9ctMScDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="464922703"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga005.fm.intel.com with ESMTP; 15 May 2020 17:57:40 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:55:02 -0700
Message-Id: <20200516005506.5113-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S46 5/9] ice: fix function signature style
 format
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

From: Bruce Allan <bruce.w.allan@intel.com>

Where possible, cuddle multiple lines of function signatures to be
consistent throughout the code.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.c |  3 +--
 drivers/net/ethernet/intel/ice/ice_sched.c    | 12 ++++--------
 drivers/net/ethernet/intel/ice/ice_switch.c   |  9 +++------
 3 files changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 479a74efc536..1e18021aa073 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -769,8 +769,7 @@ enum ice_status ice_create_all_ctrlq(struct ice_hw *hw)
  *
  * Destroys the send and receive queue locks for a given control queue.
  */
-static void
-ice_destroy_ctrlq_locks(struct ice_ctl_q_info *cq)
+static void ice_destroy_ctrlq_locks(struct ice_ctl_q_info *cq)
 {
 	mutex_destroy(&cq->sq_lock);
 	mutex_destroy(&cq->rq_lock);
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index e2bc7cfea254..5cfb3637dc3e 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -1771,8 +1771,7 @@ ice_sched_cfg_vsi(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 maxqs,
  * This function removes single aggregator VSI info entry from
  * aggregator list.
  */
-static void
-ice_sched_rm_agg_vsi_info(struct ice_port_info *pi, u16 vsi_handle)
+static void ice_sched_rm_agg_vsi_info(struct ice_port_info *pi, u16 vsi_handle)
 {
 	struct ice_sched_agg_info *agg_info;
 	struct ice_sched_agg_info *atmp;
@@ -2006,8 +2005,7 @@ ice_sched_cfg_node_bw_alloc(struct ice_hw *hw, struct ice_sched_node *node,
  *
  * Save or clear CIR bandwidth (BW) in the passed param bw_t_info.
  */
-static void
-ice_set_clear_cir_bw(struct ice_bw_type_info *bw_t_info, u32 bw)
+static void ice_set_clear_cir_bw(struct ice_bw_type_info *bw_t_info, u32 bw)
 {
 	if (bw == ICE_SCHED_DFLT_BW) {
 		clear_bit(ICE_BW_TYPE_CIR, bw_t_info->bw_t_bitmap);
@@ -2026,8 +2024,7 @@ ice_set_clear_cir_bw(struct ice_bw_type_info *bw_t_info, u32 bw)
  *
  * Save or clear EIR bandwidth (BW) in the passed param bw_t_info.
  */
-static void
-ice_set_clear_eir_bw(struct ice_bw_type_info *bw_t_info, u32 bw)
+static void ice_set_clear_eir_bw(struct ice_bw_type_info *bw_t_info, u32 bw)
 {
 	if (bw == ICE_SCHED_DFLT_BW) {
 		clear_bit(ICE_BW_TYPE_EIR, bw_t_info->bw_t_bitmap);
@@ -2052,8 +2049,7 @@ ice_set_clear_eir_bw(struct ice_bw_type_info *bw_t_info, u32 bw)
  *
  * Save or clear shared bandwidth (BW) in the passed param bw_t_info.
  */
-static void
-ice_set_clear_shared_bw(struct ice_bw_type_info *bw_t_info, u32 bw)
+static void ice_set_clear_shared_bw(struct ice_bw_type_info *bw_t_info, u32 bw)
 {
 	if (bw == ICE_SCHED_DFLT_BW) {
 		clear_bit(ICE_BW_TYPE_SHARED, bw_t_info->bw_t_bitmap);
diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 5760f2a3a8a4..9d5b527d5e38 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -1639,8 +1639,7 @@ ice_remove_rule_internal(struct ice_hw *hw, u8 recp_id,
  * check for duplicates in this case, removing duplicates from a given
  * list should be taken care of in the caller of this function.
  */
-enum ice_status
-ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
+enum ice_status ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 {
 	struct ice_aqc_sw_rules_elem *s_rule, *r_iter;
 	struct ice_fltr_list_entry *m_list_itr;
@@ -1941,8 +1940,7 @@ ice_add_vlan_internal(struct ice_hw *hw, struct ice_fltr_list_entry *f_entry)
  * @hw: pointer to the hardware structure
  * @v_list: list of VLAN entries and forwarding information
  */
-enum ice_status
-ice_add_vlan(struct ice_hw *hw, struct list_head *v_list)
+enum ice_status ice_add_vlan(struct ice_hw *hw, struct list_head *v_list)
 {
 	struct ice_fltr_list_entry *v_list_itr;
 
@@ -2172,8 +2170,7 @@ ice_find_ucast_rule_entry(struct ice_hw *hw, u8 recp_id,
  * the entries passed into m_list were added previously. It will not attempt to
  * do a partial remove of entries that were found.
  */
-enum ice_status
-ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
+enum ice_status ice_remove_mac(struct ice_hw *hw, struct list_head *m_list)
 {
 	struct ice_fltr_list_entry *list_itr, *tmp;
 	struct mutex *rule_lock; /* Lock to protect filter rule list */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
