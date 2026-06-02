Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JNVDK8gHmrmhQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 737C06267FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 02:15:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BDF18144E;
	Tue,  2 Jun 2026 00:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9bas0RuAe87w; Tue,  2 Jun 2026 00:15:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49DE581454
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780359339;
	bh=OIbU26znQX06Gff9S1viIn4KS3xlqJNl/FJmddX8S6k=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jxG1O+yIpwpywUColHmH8n1VOQo3ZWJPYZZ+i/slCh7Psca/upNKXtSfmRz+80/6n
	 wyg1fT+7p2jCopqeP3yurY4ZnU1GLFMNOHgfclg6XxcUgibt9MD7SRIvM53NFO2yCd
	 mPd8AdhRV3jGAZBC2LpC25gl9dRKe81eZTO6iT9Hckd46s0CcrhhEKYJHNT+tWGk+l
	 zU6kx7LrpmicufMitBbn+/gZlk5EOBOyAsVCxPZWzf+EYuCxZkiUFmXW5xH2OLlKFE
	 7XM9L/wSjJgPyvs1H6N8tYKJHIiB9ifGu0cgnEsiTTF9iEfkS3h1OFhQizuMuXX4H5
	 K853kzA4eZHOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49DE581454;
	Tue,  2 Jun 2026 00:15:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2AAB0F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51A9940C17
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ijgRKpoXROma for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 14D5D40C1A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14D5D40C1A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14D5D40C1A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 00:15:32 +0000 (UTC)
X-CSE-ConnectionGUID: MF0mw0faTeyu9IVLMdHqrA==
X-CSE-MsgGUID: +6Lwoi0dR+iKu4A10P2DyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="84755428"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="84755428"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:31 -0700
X-CSE-ConnectionGUID: aTXhE7LHQ2K0l+BzpvMttQ==
X-CSE-MsgGUID: vKRJigqBR1e/2okXMlgFNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="267598725"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.109])
 ([10.166.28.109])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 17:15:31 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 01 Jun 2026 17:14:21 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-4-36d6ecbe5ede@intel.com>
References: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
In-Reply-To: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 netdev@vger.kernel.org, Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.16-dev-3fed5
X-Developer-Signature: v=1; a=openpgp-sha256; l=16957;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=d9XQyQ35K9p8eaSr47dp1IkPLS+hcVJFJAKjPB1O65M=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhiw5hQWmVxweZX+VnMv7mvfKQ/XtJind3VdLNnNtXj9T1
 ivl8iKRjlIWBjEuBlkxRRYFh5CV140nhGm9cZaDmcPKBDKEgYtTACYiJM3wT3ehxOHMU/XGGccO
 THrwISqxtelWoILvWtfo7jPaL/1+v2FkmC8j9Lcm++jD5FCeddJci568/Obi/+yI5PS+uysmthU
 v4AIA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780359332; x=1811895332;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=d9XQyQ35K9p8eaSr47dp1IkPLS+hcVJFJAKjPB1O65M=;
 b=ceZM0zDrgz2n+hxhFlo2adj1m44PgH1kxy/f22nkx17segvvHtOoLTrB
 T03tzTaWbp0j2vAEsluddMt0pQ0797qKds1ZMEmvWW627RaKSmYIddtNo
 /XLsIy63cf4hLRfn4dvWXkIRyGKtyNGmE5c/PI4RlZJKjxABir7LsuUjB
 pI+rgy0I1S4NOncyQUhbjqxg/j7KTsksZ7LJEtHIbbyweAmiVV5S7R+/9
 2Y4Zanbrxw+WBxUgTgYC10Zw6HmGF7LW9ftYEtJ8V6ebtFyR9CT9/vGc6
 D9Aa1L+MSmjqHYAKnrnzPubjAT5v9Y0meOvl9YsR3uqV1rJRNoE7SvRhh
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ceZM0zDr
Subject: [Intel-wired-lan] [PATCH iwl-next 4/6] ice: remove ice_agg_node
 wrapper structure
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
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,intel.com:mid,intel.com:email];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 737C06267FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The ice_set_agg_vsi() function has bespoke logic for identifying a suitable
aggregator node to use for a VSI. The main goal of the function is to
ensure that various types of VSIs do not share aggregator nodes. It uses
fixed size arrays of struct ice_agg_node in the PF structure to keep track
of which aggregator nodes are currently used.

The scheduler code already keeps track of almost all of this information
via the ice_sched_agg_info structures. It doesn't make sense to store
similar information in two places. Indeed, this leaves open the
possibility that the two have conflicting data.

The recent change to refactor the aggregator info to an xarray allows
lookup via index. This enables reworking the logic in ice_set_agg_vsi() and
removal of the ice_agg_node wrapper structure.

Introduce ice_cfg_vsi_agg() in ice_sched.c. This function will locate a
suitable aggregator node between the provided minimum and maximum ID. If no
node exists, it will allocate a new one. It will then configure the node
and move the VSI into the node immediately.

We do not free a newly allocated node if the device fails to configure the
scheduler. The node will continue to exist within the aggregator node
xarray list, and be reused in the future when another VSI is configured.

This is similar to the logic used before, but now integrated better into
the scheduler code. It also occurs all in a single critical section of the
scheduler lock, rather than being split between multiple lock/unlock
rounds.

Remove the ice_agg_node arrays and structure, and all of its related code
including the bespoke logic in ice_set_agg_vsi() as well as the associated
cleanup in ice_vsi_decfg() and ice_pf_dis_all_vsi(). The logic in
ice_pf_dis_all_vsi() is questionable anyways, since it reset the num_vsis
count without clearing the valid flag or the agg_node pointers in the VSI
structures. With the refactor, the VSI count for each aggregator node now
always matches with what the scheduler actually has configured.

Only the VF logic actually uses the previously stored aggregator node data.
To avoid use-after-free issues, don't store a pointer to the aggregator
node. Instead, store just the ID of the associated node. Update
ice_vf_rebuild_aggregator_node_cfg() to use ice_cfg_vsi_agg() instead of
using ice_move_vsi_to_agg(). This ensures that the node will be created if
it was ever removed for any reason. Store the agg_id in the VSI structure
using a signed 64-bit value to allow storing -1 in the case where no
aggregator node was configured.

This refactor drops the arrays in the ice_pf structure, reducing its size
by 1152 bytes, or ~5% of the structures size.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h        |  23 ++----
 drivers/net/ethernet/intel/ice/ice_sched.h  |   5 ++
 drivers/net/ethernet/intel/ice/ice_lib.c    | 114 +++++-----------------------
 drivers/net/ethernet/intel/ice/ice_main.c   |   7 --
 drivers/net/ethernet/intel/ice/ice_sched.c  | 102 +++++++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_vf_lib.c |  22 +++---
 6 files changed, 140 insertions(+), 133 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index f9a43daf04fe..e5ccbf931502 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -448,10 +448,10 @@ struct ice_vsi {
 	u8 old_numtc;
 	u16 old_ena_tc;
 
-	/* setup back reference, to which aggregator node this VSI
-	 * corresponds to
+	/* ID of the aggregator node this VSI was configured with at setup, or
+	 * negative if it was not configured with an aggregator node.
 	 */
-	struct ice_agg_node *agg_node;
+	s64 agg_id;
 
 	struct_group_tagged(ice_vsi_cfg_params, params,
 		struct ice_port_info *port_info; /* back pointer to port_info */
@@ -541,12 +541,10 @@ struct ice_eswitch {
 	bool is_running;
 };
 
-struct ice_agg_node {
-	u32 agg_id;
-#define ICE_MAX_VSIS_IN_AGG_NODE	64
-	u32 num_vsis;
-	u8 valid;
-};
+#define ICE_PF_AGG_NODE_ID_START	1
+#define ICE_PF_AGG_NODE_ID_END		32
+#define ICE_VF_AGG_NODE_ID_START	65
+#define ICE_VF_AGG_NODE_ID_END		96
 
 struct ice_pf_msix {
 	u32 cur;
@@ -660,13 +658,6 @@ struct ice_pf {
 	struct xarray dyn_ports;
 	struct xarray sf_nums;
 
-#define ICE_INVALID_AGG_NODE_ID		0
-#define ICE_PF_AGG_NODE_ID_START	1
-#define ICE_MAX_PF_AGG_NODES		32
-	struct ice_agg_node pf_agg_node[ICE_MAX_PF_AGG_NODES];
-#define ICE_VF_AGG_NODE_ID_START	65
-#define ICE_MAX_VF_AGG_NODES		32
-	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
 	struct ice_dplls dplls;
 	struct device *hwmon_dev;
 	struct ice_health health_reporters;
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.h b/drivers/net/ethernet/intel/ice/ice_sched.h
index 992aafc4369d..b9ea9174f3d9 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.h
+++ b/drivers/net/ethernet/intel/ice/ice_sched.h
@@ -65,6 +65,8 @@ struct ice_sched_agg_vsi_info {
 	DECLARE_BITMAP(replay_tc_bitmap, ICE_MAX_TRAFFIC_CLASS);
 };
 
+#define ICE_MAX_VSIS_IN_AGG_NODE	64
+
 struct ice_sched_agg_info {
 	struct list_head agg_vsi_list;
 	DECLARE_BITMAP(tc_bitmap, ICE_MAX_TRAFFIC_CLASS);
@@ -134,6 +136,9 @@ int ice_rm_vsi_lan_cfg(struct ice_port_info *pi, u16 vsi_handle);
 int ice_rm_vsi_rdma_cfg(struct ice_port_info *pi, u16 vsi_handle);
 
 /* Tx scheduler rate limiter functions */
+int ice_cfg_vsi_agg(struct ice_port_info *pi, u16 vsi_handle,
+		    u32 min_id, u32 max_id, u8 tc_bitmap,
+		    u32 *configured_id);
 int
 ice_cfg_agg(struct ice_port_info *pi, u32 agg_id,
 	    enum ice_agg_type agg_type, u8 tc_bitmap);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index bf2ceaa49dec..f285e63cd641 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2172,44 +2172,28 @@ void ice_cfg_sw_rx_lldp(struct ice_pf *pf, bool enable)
 static void ice_set_agg_vsi(struct ice_vsi *vsi)
 {
 	struct device *dev = ice_pf_to_dev(vsi->back);
-	struct ice_agg_node *agg_node_iter = NULL;
-	u32 agg_id = ICE_INVALID_AGG_NODE_ID;
-	struct ice_agg_node *agg_node = NULL;
-	int node_offset, max_agg_nodes = 0;
-	struct ice_port_info *port_info;
-	struct ice_pf *pf = vsi->back;
-	u32 agg_node_id_start = 0;
-	int status;
+	u32 min_id, max_id, agg_id;
+	int err;
+
+	vsi->agg_id = -1;
 
 	/* create (as needed) scheduler aggregator node and move VSI into
 	 * corresponding aggregator node
 	 * - PF aggregator node to contains VSIs of type _PF and _CTRL
 	 * - VF aggregator nodes will contain VF VSI
 	 */
-	port_info = pf->hw.port_info;
-	if (!port_info)
-		return;
-
 	switch (vsi->type) {
 	case ICE_VSI_CTRL:
 	case ICE_VSI_CHNL:
 	case ICE_VSI_LB:
 	case ICE_VSI_PF:
 	case ICE_VSI_SF:
-		max_agg_nodes = ICE_MAX_PF_AGG_NODES;
-		agg_node_id_start = ICE_PF_AGG_NODE_ID_START;
-		agg_node_iter = &pf->pf_agg_node[0];
+		min_id = ICE_PF_AGG_NODE_ID_START;
+		max_id = ICE_PF_AGG_NODE_ID_END;
 		break;
 	case ICE_VSI_VF:
-		/* user can create 'n' VFs on a given PF, but since max children
-		 * per aggregator node can be only 64. Following code handles
-		 * aggregator(s) for VF VSIs, either selects a agg_node which
-		 * was already created provided num_vsis < 64, otherwise
-		 * select next available node, which will be created
-		 */
-		max_agg_nodes = ICE_MAX_VF_AGG_NODES;
-		agg_node_id_start = ICE_VF_AGG_NODE_ID_START;
-		agg_node_iter = &pf->vf_agg_node[0];
+		min_id = ICE_VF_AGG_NODE_ID_START;
+		max_id = ICE_VF_AGG_NODE_ID_END;
 		break;
 	default:
 		/* other VSI type, handle later if needed */
@@ -2218,70 +2202,17 @@ static void ice_set_agg_vsi(struct ice_vsi *vsi)
 		return;
 	}
 
-	/* find the appropriate aggregator node */
-	for (node_offset = 0; node_offset < max_agg_nodes; node_offset++) {
-		/* see if we can find space in previously created
-		 * node if num_vsis < 64, otherwise skip
-		 */
-		if (agg_node_iter->num_vsis &&
-		    agg_node_iter->num_vsis == ICE_MAX_VSIS_IN_AGG_NODE) {
-			agg_node_iter++;
-			continue;
-		}
-
-		if (agg_node_iter->valid &&
-		    agg_node_iter->agg_id != ICE_INVALID_AGG_NODE_ID) {
-			agg_id = agg_node_iter->agg_id;
-			agg_node = agg_node_iter;
-			break;
-		}
-
-		/* find unclaimed agg_id */
-		if (agg_node_iter->agg_id == ICE_INVALID_AGG_NODE_ID) {
-			agg_id = node_offset + agg_node_id_start;
-			agg_node = agg_node_iter;
-			break;
-		}
-		/* move to next agg_node */
-		agg_node_iter++;
-	}
-
-	if (!agg_node)
-		return;
-
-	/* if selected aggregator node was not created, create it */
-	if (!agg_node->valid) {
-		status = ice_cfg_agg(port_info, agg_id, ICE_AGG_TYPE_AGG,
-				     (u8)vsi->tc_cfg.ena_tc);
-		if (status) {
-			dev_err(dev, "unable to create aggregator node with agg_id %u\n",
-				agg_id);
-			return;
-		}
-		/* aggregator node is created, store the needed info */
-		agg_node->valid = true;
-		agg_node->agg_id = agg_id;
-	}
-
-	/* move VSI to corresponding aggregator node */
-	status = ice_move_vsi_to_agg(port_info, agg_id, vsi->idx,
-				     (u8)vsi->tc_cfg.ena_tc);
-	if (status) {
-		dev_err(dev, "unable to move VSI idx %u into aggregator %u node",
-			vsi->idx, agg_id);
+	err = ice_cfg_vsi_agg(vsi->back->hw.port_info, vsi->idx, min_id,
+			      max_id, (u8)vsi->tc_cfg.ena_tc, &agg_id);
+	if (err) {
+		dev_err(dev, "Unable to associate VSI with an aggregator node, %pe\n",
+			ERR_PTR(err));
 		return;
 	}
 
-	/* keep active children count for aggregator node */
-	agg_node->num_vsis++;
-
-	/* cache the 'agg_id' in VSI, so that after reset - VSI will be moved
-	 * to aggregator node
-	 */
-	vsi->agg_node = agg_node;
-	dev_dbg(dev, "successfully moved VSI idx %u tc_bitmap 0x%x) into aggregator node %d which has num_vsis %u\n",
-		vsi->idx, vsi->tc_cfg.ena_tc, vsi->agg_node->agg_id,
-		vsi->agg_node->num_vsis);
+	vsi->agg_id = agg_id;
+	dev_dbg(dev, "successfully moved VSI idx %u tc_bitmap 0x%x into aggregator node %u\n",
+		vsi->idx, vsi->tc_cfg.ena_tc, agg_id);
 }
 
 static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
@@ -2538,16 +2469,6 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 	ice_vsi_free_q_vectors(vsi);
 	ice_vsi_put_qs(vsi);
 	ice_vsi_free_arrays(vsi);
-
-	/* SR-IOV determines needed MSIX resources all at once instead of per
-	 * VSI since when VFs are spawned we know how many VFs there are and how
-	 * many interrupts each VF needs. SR-IOV MSIX resources are also
-	 * cleared in the same manner.
-	 */
-
-	if (vsi->type == ICE_VSI_VF &&
-	    vsi->agg_node && vsi->agg_node->valid)
-		vsi->agg_node->num_vsis--;
 }
 
 /**
@@ -2600,8 +2521,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_vsi_cfg_params *params)
 		ice_vsi_cfg_sw_lldp(vsi, true, true);
 	}
 
-	if (!vsi->agg_node)
-		ice_set_agg_vsi(vsi);
+	ice_set_agg_vsi(vsi);
 
 	return vsi;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index c79125dca56b..21b4904aa541 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -512,18 +512,11 @@ static void ice_sync_fltr_subtask(struct ice_pf *pf)
  */
 static void ice_pf_dis_all_vsi(struct ice_pf *pf, bool locked)
 {
-	int node;
 	int v;
 
 	ice_for_each_vsi(pf, v)
 		if (pf->vsi[v])
 			ice_dis_vsi(pf->vsi[v], locked);
-
-	for (node = 0; node < ICE_MAX_PF_AGG_NODES; node++)
-		pf->pf_agg_node[node].num_vsis = 0;
-
-	for (node = 0; node < ICE_MAX_VF_AGG_NODES; node++)
-		pf->vf_agg_node[node].num_vsis = 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 88392ebf4454..a7f31e84ee14 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -3099,6 +3099,108 @@ ice_move_vsi_to_agg(struct ice_port_info *pi, u32 agg_id, u16 vsi_handle,
 	return status;
 }
 
+/**
+ * ice_find_available_agg - Find or create aggregator node
+ * @hw: pointer to the HW structure
+ * @min_id: minimum aggregator node ID to use
+ * @max_id: maximum aggregator node ID to use
+ * @agg_type: The aggregator node type
+ *
+ * Check the existing xarray of aggregator nodes. Find the first one between
+ * min_id and max_id which has fewer than ICE_MAX_VSIS_IN_AGG_NODE (64) VSIs
+ * in use. If there is no aggregator node that fits this criteria, create
+ * a new one between that range.
+ *
+ * Context: Must be called while holding the scheduler lock.
+ *
+ * Return: A pointer to the aggregator info structure, or an ERR_PTR on
+ * failure.
+ */
+static struct ice_sched_agg_info *
+ice_find_available_agg(struct ice_hw *hw, u32 min_id, u32 max_id,
+		       enum ice_agg_type agg_type)
+{
+	struct ice_sched_agg_info *agg_info;
+	unsigned long agg_id;
+
+	xa_for_each_range(&hw->agg_list, agg_id, agg_info, min_id, max_id) {
+		if (agg_info->agg_type != agg_type)
+			continue;
+
+		if (agg_info->num_vsis < ICE_MAX_VSIS_IN_AGG_NODE)
+			return agg_info;
+	}
+
+	/* No aggregator node exists with space */
+	return ice_alloc_agg_info(hw, min_id, max_id, agg_type);
+}
+
+/**
+ * ice_cfg_vsi_agg - Configure a VSI to an aggregator node
+ * @pi: port information structure
+ * @vsi_handle: software VSI handle
+ * @min_id: the minimum aggregator node ID to associate with
+ * @max_id: the maximum aggregator node ID to associate with
+ * @tc_bitmap: TC bitmap of enabled TC(s)
+ * @configured_id: If non-NULL, contains the configured ID on return
+ *
+ * Locate a suitable aggregator node for this VSI, creating a new one if
+ * necessary. Configure the aggregator node if necessary, and move the VSI
+ * into it.
+ *
+ * Context: Acquires the scheduler lock.
+ *
+ * Return: zero on success, or a negative errno on failure.
+ */
+int ice_cfg_vsi_agg(struct ice_port_info *pi, u16 vsi_handle,
+		    u32 min_id, u32 max_id, u8 tc_bitmap,
+		    u32 *configured_id)
+{
+	struct ice_sched_agg_info *agg_info;
+	unsigned long bitmap = tc_bitmap;
+	struct ice_hw *hw = pi->hw;
+	int status;
+
+	mutex_lock(&pi->sched_lock);
+
+	/* Locate an aggregator node to use */
+	agg_info = ice_find_available_agg(hw, min_id, max_id, ICE_AGG_TYPE_AGG);
+	if (IS_ERR(agg_info)) {
+		status = PTR_ERR(agg_info);
+		goto out_unlock;
+	}
+
+	/* Configure the aggregator node */
+	status = ice_sched_cfg_agg(pi, agg_info->agg_id, ICE_AGG_TYPE_AGG,
+				   &bitmap);
+	if (status)
+		goto out_unlock;
+
+	/* Save the TC bitmap for this aggregator node */
+	status = ice_save_agg_tc_bitmap(pi, agg_info->agg_id, &bitmap);
+	if (status)
+		goto out_unlock;
+
+	/* Associate the VSI with this aggregator node */
+	status = ice_sched_assoc_vsi_to_agg(pi, agg_info->agg_id, vsi_handle,
+					    &bitmap);
+	if (status)
+		goto out_unlock;
+
+	/* Save the VSI handle to the aggregator TC bitmap */
+	status = ice_save_agg_vsi_tc_bitmap(pi, agg_info->agg_id, vsi_handle,
+					    &bitmap);
+	if (status)
+		goto out_unlock;
+
+	if (configured_id)
+		*configured_id = agg_info->agg_id;
+
+out_unlock:
+	mutex_unlock(&pi->sched_lock);
+	return status;
+}
+
 /**
  * ice_set_clear_cir_bw - set or clear CIR BW
  * @bw_t_info: bandwidth type information structure
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 47a30b255007..6b5c9be3a198 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -467,24 +467,20 @@ static void ice_vf_rebuild_aggregator_node_cfg(struct ice_vsi *vsi)
 	struct device *dev;
 	int status;
 
-	if (!vsi->agg_node)
-		return;
-
 	dev = ice_pf_to_dev(pf);
-	if (vsi->agg_node->num_vsis == ICE_MAX_VSIS_IN_AGG_NODE) {
-		dev_dbg(dev,
-			"agg_id %u already has reached max_num_vsis %u\n",
-			vsi->agg_node->agg_id, vsi->agg_node->num_vsis);
+
+	if (vsi->agg_id < 0 || vsi->agg_id > U32_MAX) {
+		dev_dbg(dev, "VSI idx %u does not have a valid aggregator node ID stored\n",
+			vsi->idx);
 		return;
 	}
 
-	status = ice_move_vsi_to_agg(pf->hw.port_info, vsi->agg_node->agg_id,
-				     vsi->idx, vsi->tc_cfg.ena_tc);
+	status = ice_cfg_vsi_agg(pf->hw.port_info, vsi->idx,
+				 (u32)vsi->agg_id, (u32)vsi->agg_id,
+				 (u8)vsi->tc_cfg.ena_tc, NULL);
 	if (status)
-		dev_dbg(dev, "unable to move VSI idx %u into aggregator %u node",
-			vsi->idx, vsi->agg_node->agg_id);
-	else
-		vsi->agg_node->num_vsis++;
+		dev_dbg(dev, "unable to move VSI idx %u into aggregator node %lld\n",
+			vsi->idx, vsi->agg_id);
 }
 
 /**

-- 
2.54.0.1064.gd145956f57df

