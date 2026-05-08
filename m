Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEQ9DVbe/WmqkAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FD44F6AFB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 15:00:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6130A41068;
	Fri,  8 May 2026 12:59:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eiLpXhRHAT1M; Fri,  8 May 2026 12:59:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 908D44100A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778245195;
	bh=/ksOojcXei/TfXFipAqDYeI+OI2GxXRjLV3fr5Yuc44=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p2Vi8A2dX4zaKkMY6fRVyGuhv+tc45PqexFTuCyl2ffa12xTV4671kvNKg5MrW/MB
	 kN5Z+vJFUyzrVHhi2BIyFlyjxMDppnUMuT+iFEx3hJWGhm6n1+F5urwPqqTOT7u/7S
	 ngGGRbdNXclFuAescajDIco33DDtFpaZLSFCBLcLHE28GdUekJRZT09AKVXsXu4Vg8
	 TwTHupHlsrZ5iHxA+nZ5mTfFTEjsrI8lIec0Ac3vS+avzLIq0SsU2h4f49ZK1H7y/a
	 +51mR/y+NIDZDWsC7FW3edDIgrL6hFok+QJHuGuvqlZJUsyN2Q7uMxXJ+0HGgvqcE2
	 /Sj1WGeJW+xmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 908D44100A;
	Fri,  8 May 2026 12:59:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 251E2317
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0ADFA40F2F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9O-1z6wxxtph for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 12:59:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 01EA540FAC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01EA540FAC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01EA540FAC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 12:59:51 +0000 (UTC)
X-CSE-ConnectionGUID: bJvLj2AVTEi37aygXWpwDA==
X-CSE-MsgGUID: m5yP7j6pScqdLgb2/sRzhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79199908"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79199908"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:59:52 -0700
X-CSE-ConnectionGUID: mKpDa3eOSfGXvqL8lWXsbQ==
X-CSE-MsgGUID: k7a48ddlTS+z24AiWJ4EGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241730122"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2026 05:59:46 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 353482FC42;
 Fri,  8 May 2026 13:59:44 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 bruce.richardson@intel.com,
 Vladimir Medvedkin <vladimir.medvedkin@intel.com>,
 padraig.j.connolly@intel.com, ananth.s@intel.com,
 timothy.miskell@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Fri,  8 May 2026 14:41:59 +0200
Message-Id: <20260508124208.11622-7-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778245193; x=1809781193;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FWfCl7UBwzOtiab25hIzZzlKGPLqepRD1UjJN8GGfV0=;
 b=OK/pJlcSHLGNTBlssPi20gVmJTQWaSs4g0JrqZyBJOa+2HuHUQ326SSo
 rob9uN6ywhhf4UXsWqXLxDNc5AXlEbpPRY+wGrguzsEGQLCay72mGF9vF
 0QWziZDXb4EJYX8tDHOiU62BPIY6MpJgCjA099x9TPAiCZ6J5pWIyFHTv
 Zkdpp4Fa8kzQh/9zlKakybzqbYCP7sJYccXANXjR+D4ZXBYkt9MKnrPrb
 j7dHLZLSI33MSBdeoZIkvTTGX08TVGgc69h4OHyaSjU2qY0NEipKUw6gC
 s+OhbsdwK/GgoxWcteDIoG0BxGhJRafnz9wFGBDgJGD+KPVWGW6TuIIjF
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OK/pJlcS
Subject: [Intel-wired-lan] [PATCH iwl-next v1 06/15] ice: rename
 ICE_MAX_RSS_QS_PER_VF to ICE_MAX_QS_PER_VF_VCV1
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
X-Rspamd-Queue-Id: 58FD44F6AFB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-0.991];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Rename ICE_MAX_RSS_QS_PER_VF to ICE_MAX_QS_PER_VF_VCV1, in preparation for
the next patch that will extend the max to 256, using old value of 16 for
the "v1" variant of virtchnl opcodes.

Suggested-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.h     |  2 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h  |  9 +++---
 drivers/net/ethernet/intel/ice/ice_lib.c     |  2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c   |  4 +--
 drivers/net/ethernet/intel/ice/ice_vf_lib.c  | 12 ++++----
 drivers/net/ethernet/intel/ice/virt/queues.c | 30 ++++++++++----------
 6 files changed, 30 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index f77ebcd61042..4bfffecbdc97 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -52,7 +52,7 @@ struct ice_lag {
 	u8 bond_lport_sec; /* lport values for secondary PF */
 
 	/* q_home keeps track of which interface the q is currently on */
-	u8 q_home[ICE_MAX_SRIOV_VFS][ICE_MAX_RSS_QS_PER_VF];
+	u8 q_home[ICE_MAX_SRIOV_VFS][ICE_MAX_QS_PER_VF_VCV1];
 
 	/* placeholder VSI for hanging VF queues from on secondary interface */
 	struct ice_vsi *sec_vf[ICE_MAX_SRIOV_VFS];
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index cdfc2a558732..36dbe5412336 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -19,7 +19,8 @@
 #define ICE_MAX_SRIOV_VFS		256
 
 /* VF resource constraints */
-#define ICE_MAX_RSS_QS_PER_VF	16
+/* for "old" virtchnl opcodes that accept up to 16 queues */
+#define ICE_MAX_QS_PER_VF_VCV1	16
 
 struct ice_pf;
 struct ice_vf;
@@ -161,8 +162,8 @@ struct ice_vf {
 	u8 dev_lan_addr[ETH_ALEN];
 	u8 hw_lan_addr[ETH_ALEN];
 	struct ice_time_mac legacy_last_added_umac;
-	DECLARE_BITMAP(txq_ena, ICE_MAX_RSS_QS_PER_VF);
-	DECLARE_BITMAP(rxq_ena, ICE_MAX_RSS_QS_PER_VF);
+	DECLARE_BITMAP(txq_ena, ICE_MAX_QS_PER_VF_VCV1);
+	DECLARE_BITMAP(rxq_ena, ICE_MAX_QS_PER_VF_VCV1);
 	struct ice_vlan port_vlan_info;	/* Port VLAN ID, QoS, and TPID */
 	struct virtchnl_vlan_caps vlan_v2_caps;
 	struct ice_mbx_vf_info mbx_info;
@@ -205,7 +206,7 @@ struct ice_vf {
 	u16 lldp_recipe_id;
 	u16 lldp_rule_id;
 
-	struct ice_vf_qs_bw qs_bw[ICE_MAX_RSS_QS_PER_VF];
+	struct ice_vf_qs_bw qs_bw[ICE_MAX_QS_PER_VF_VCV1];
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 2de62cde14ab..09e1dcab2179 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -925,7 +925,7 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
 		 * For VSI_LUT, LUT size should be set to 64 bytes.
 		 */
 		vsi->rss_table_size = ICE_LUT_VSI_SIZE;
-		vsi->rss_size = ICE_MAX_RSS_QS_PER_VF;
+		vsi->rss_size = ICE_MAX_QS_PER_VF_VCV1;
 		vsi->rss_lut_type = ICE_LUT_VSI;
 		break;
 	case ICE_VSI_LB:
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 8686c382404f..0482454f453b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -398,15 +398,15 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 	}
 
 	num_txq = min_t(u16, num_msix_per_vf - ICE_NONQ_VECS_VF,
-			ICE_MAX_RSS_QS_PER_VF);
+			ICE_MAX_QS_PER_VF_VCV1);
 	avail_qs = ice_get_avail_txq_count(pf) / num_vfs;
 	if (!avail_qs)
 		num_txq = 0;
 	else if (num_txq > avail_qs)
 		num_txq = rounddown_pow_of_two(avail_qs);
 
 	num_rxq = min_t(u16, num_msix_per_vf - ICE_NONQ_VECS_VF,
-			ICE_MAX_RSS_QS_PER_VF);
+			ICE_MAX_QS_PER_VF_VCV1);
 	avail_qs = ice_get_avail_rxq_count(pf) / num_vfs;
 	if (!avail_qs)
 		num_rxq = 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index f1f437b1af1b..8e88ab8547ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -535,8 +535,8 @@ static void ice_vf_rebuild_host_cfg(struct ice_vf *vf)
 static void ice_set_vf_state_qs_dis(struct ice_vf *vf)
 {
 	/* Clear Rx/Tx enabled queues flag */
-	bitmap_zero(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
-	bitmap_zero(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF);
+	bitmap_zero(vf->txq_ena, ICE_MAX_QS_PER_VF_VCV1);
+	bitmap_zero(vf->rxq_ena, ICE_MAX_QS_PER_VF_VCV1);
 	clear_bit(ICE_VF_STATE_QS_ENA, vf->vf_states);
 }
 
@@ -1217,13 +1217,13 @@ bool ice_is_vf_trusted(struct ice_vf *vf)
  * ice_vf_has_no_qs_ena - check if the VF has any Rx or Tx queues enabled
  * @vf: the VF to check
  *
- * Returns true if the VF has no Rx and no Tx queues enabled and returns false
- * otherwise
+ * Return: true if the VF has no Rx and no Tx queues enabled and returns false
+ * otherwise.
  */
 bool ice_vf_has_no_qs_ena(struct ice_vf *vf)
 {
-	return bitmap_empty(vf->rxq_ena, ICE_MAX_RSS_QS_PER_VF) &&
-		bitmap_empty(vf->txq_ena, ICE_MAX_RSS_QS_PER_VF);
+	return bitmap_empty(vf->rxq_ena, ICE_MAX_QS_PER_VF_VCV1) &&
+	       bitmap_empty(vf->txq_ena, ICE_MAX_QS_PER_VF_VCV1);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/virt/queues.c b/drivers/net/ethernet/intel/ice/virt/queues.c
index 28adc24197b8..7b165ee11a90 100644
--- a/drivers/net/ethernet/intel/ice/virt/queues.c
+++ b/drivers/net/ethernet/intel/ice/virt/queues.c
@@ -171,8 +171,8 @@ static int ice_vf_cfg_q_quanta_profile(struct ice_vf *vf, u16 quanta_size,
 static bool ice_vc_validate_vqs_bitmaps(struct virtchnl_queue_select *vqs)
 {
 	if ((!vqs->rx_queues && !vqs->tx_queues) ||
-	    vqs->rx_queues >= BIT(ICE_MAX_RSS_QS_PER_VF) ||
-	    vqs->tx_queues >= BIT(ICE_MAX_RSS_QS_PER_VF))
+	    vqs->rx_queues >= BIT(ICE_MAX_QS_PER_VF_VCV1) ||
+	    vqs->tx_queues >= BIT(ICE_MAX_QS_PER_VF_VCV1))
 		return false;
 
 	return true;
@@ -317,7 +317,7 @@ int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 	 * programmed using ice_vsi_cfg_txqs
 	 */
 	q_map = vqs->rx_queues;
-	for_each_set_bit(vf_q_id, &q_map, ICE_MAX_RSS_QS_PER_VF) {
+	for_each_set_bit(vf_q_id, &q_map, ICE_MAX_QS_PER_VF_VCV1) {
 		if (!ice_vc_isvalid_q_id(vsi, vf_q_id)) {
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 			goto error_param;
@@ -330,7 +330,7 @@ int ice_vc_ena_qs_msg(struct ice_vf *vf, u8 *msg)
 	}
 
 	q_map = vqs->tx_queues;
-	for_each_set_bit(vf_q_id, &q_map, ICE_MAX_RSS_QS_PER_VF) {
+	for_each_set_bit(vf_q_id, &q_map, ICE_MAX_QS_PER_VF_VCV1) {
 		if (!ice_vc_isvalid_q_id(vsi, vf_q_id)) {
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 			goto error_param;
@@ -461,7 +461,7 @@ int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 	if (vqs->tx_queues) {
 		q_map = vqs->tx_queues;
 
-		for_each_set_bit(vf_q_id, &q_map, ICE_MAX_RSS_QS_PER_VF) {
+		for_each_set_bit(vf_q_id, &q_map, ICE_MAX_QS_PER_VF_VCV1) {
 			if (!ice_vc_isvalid_q_id(vsi, vf_q_id)) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
@@ -476,7 +476,7 @@ int ice_vc_dis_qs_msg(struct ice_vf *vf, u8 *msg)
 
 	q_map = vqs->rx_queues;
 	if (q_map) {
-		for_each_set_bit(vf_q_id, &q_map, ICE_MAX_RSS_QS_PER_VF) {
+		for_each_set_bit(vf_q_id, &q_map, ICE_MAX_QS_PER_VF_VCV1) {
 			if (!ice_vc_isvalid_q_id(vsi, vf_q_id)) {
 				v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 				goto error_param;
@@ -519,7 +519,7 @@ ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi *vsi,
 	q_vector->num_ring_tx = 0;
 
 	qmap = map->rxq_map;
-	for_each_set_bit(vsi_q_id_idx, &qmap, ICE_MAX_RSS_QS_PER_VF) {
+	for_each_set_bit(vsi_q_id_idx, &qmap, ICE_MAX_QS_PER_VF_VCV1) {
 		vsi_q_id = vsi_q_id_idx;
 
 		if (!ice_vc_isvalid_q_id(vsi, vsi_q_id))
@@ -534,7 +534,7 @@ ice_cfg_interrupt(struct ice_vf *vf, struct ice_vsi *vsi,
 	}
 
 	qmap = map->txq_map;
-	for_each_set_bit(vsi_q_id_idx, &qmap, ICE_MAX_RSS_QS_PER_VF) {
+	for_each_set_bit(vsi_q_id_idx, &qmap, ICE_MAX_QS_PER_VF_VCV1) {
 		vsi_q_id = vsi_q_id_idx;
 
 		if (!ice_vc_isvalid_q_id(vsi, vsi_q_id))
@@ -658,7 +658,7 @@ int ice_vc_cfg_q_bw(struct ice_vf *vf, u8 *msg)
 		goto err;
 	}
 
-	if (qbw->num_queues > ICE_MAX_RSS_QS_PER_VF ||
+	if (qbw->num_queues > ICE_MAX_QS_PER_VF_VCV1 ||
 	    qbw->num_queues > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
 		dev_err(ice_pf_to_dev(vf->pf), "VF-%d trying to configure more than allocated number of queues: %d\n",
 			vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
@@ -750,7 +750,7 @@ int ice_vc_cfg_q_quanta(struct ice_vf *vf, u8 *msg)
 		goto err;
 	}
 
-	if (end_qid > ICE_MAX_RSS_QS_PER_VF ||
+	if (end_qid > ICE_MAX_QS_PER_VF_VCV1 ||
 	    end_qid > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
 		dev_err(ice_pf_to_dev(vf->pf), "VF-%d trying to configure more than allocated number of queues: %d\n",
 			vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
@@ -818,7 +818,7 @@ int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	if (!vsi)
 		goto error_param;
 
-	if (qci->num_queue_pairs > ICE_MAX_RSS_QS_PER_VF ||
+	if (qci->num_queue_pairs > ICE_MAX_QS_PER_VF_VCV1 ||
 	    qci->num_queue_pairs > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
 		dev_err(ice_pf_to_dev(pf), "VF-%d requesting more than supported number of queues: %d\n",
 			vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
@@ -996,16 +996,16 @@ int ice_vc_request_qs_msg(struct ice_vf *vf, u8 *msg)
 	if (!req_queues) {
 		dev_err(dev, "VF %d tried to request 0 queues. Ignoring.\n",
 			vf->vf_id);
-	} else if (req_queues > ICE_MAX_RSS_QS_PER_VF) {
+	} else if (req_queues > ICE_MAX_QS_PER_VF_VCV1) {
 		dev_err(dev, "VF %d tried to request more than %d queues.\n",
-			vf->vf_id, ICE_MAX_RSS_QS_PER_VF);
-		vfres->num_queue_pairs = ICE_MAX_RSS_QS_PER_VF;
+			vf->vf_id, ICE_MAX_QS_PER_VF_VCV1);
+		vfres->num_queue_pairs = ICE_MAX_QS_PER_VF_VCV1;
 	} else if (req_queues > cur_queues &&
 		   req_queues - cur_queues > tx_rx_queue_left) {
 		dev_warn(dev, "VF %d requested %u more queues, but only %u left.\n",
 			 vf->vf_id, req_queues - cur_queues, tx_rx_queue_left);
 		vfres->num_queue_pairs = min_t(u16, max_allowed_vf_queues,
-					       ICE_MAX_RSS_QS_PER_VF);
+					       ICE_MAX_QS_PER_VF_VCV1);
 	} else {
 		/* request is successful, then reset VF */
 		vf->num_req_qs = req_queues;
-- 
2.39.3

