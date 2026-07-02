Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xIZwEelLRmoiOAsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0906F6BB5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 13:30:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=qrVBaDvg;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4356960EC9;
	Thu,  2 Jul 2026 11:30:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o4pLC-Oetsrp; Thu,  2 Jul 2026 11:30:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AA5460EAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782991844;
	bh=pJUZNjVYwBCO00e5wT05ftDXsJdzqP5hItaMWH/gIMo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qrVBaDvgdUAVWZgewaTekVd2Yrw7SFqg3T3A+rFIiBAcmavZt1ZTFhYaUdlcv8nPf
	 ksfU4y2c8C3q9pb4+K+kYswqJ3phjPT1U06jVWshPWuT8WD9xvQT9Klg9su5UFMEC3
	 n+h5cA3ru6ruX7kzSNBfYMVpCdiQ5LPwysc1gpyBp/v1+5rt1hhvsOdOlTGigdH1Y2
	 WbT0oUEvJ3PrAbAlo0Zu+TzwtQIUedyIowDAP0rH6nUjyAuoK+JfgaUkuA/K3Efq6Y
	 kCTudCiJMJASWl80h4Lnkk87i5g3Br59NdUAdQHhbDb9pIiJxc0urtTarIJYNsiEIy
	 F8NodlLWwEwsQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AA5460EAA;
	Thu,  2 Jul 2026 11:30:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 62A18316
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4844E82349
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RonMwJkh82XK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 11:30:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C63D182343
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C63D182343
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C63D182343
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 11:30:40 +0000 (UTC)
X-CSE-ConnectionGUID: 2829dhQpQvCVSner/5qQHQ==
X-CSE-MsgGUID: 9gPOdD5/SwafDOrx8qgpJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83611727"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83611727"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 04:30:40 -0700
X-CSE-ConnectionGUID: sTsF0SjNRzOYwQnl64M1lQ==
X-CSE-MsgGUID: 0M/Gj+GhTWazqGu4JTY0EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="251788394"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa010.jf.intel.com with ESMTP; 02 Jul 2026 04:30:37 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2FB2F28760;
 Thu,  2 Jul 2026 12:30:35 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com, ananth.s@intel.com,
 alexander.duyck@gmail.com, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu,  2 Jul 2026 12:29:55 +0200
Message-ID: <20260702103007.97020-2-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260702103007.97020-1-marcin.szycik@linux.intel.com>
References: <20260702103007.97020-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782991841; x=1814527841;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n7ELnVWSQ7+CShOZrsl3EJp5zcEUn4gElWz89+kwYuM=;
 b=evigPlWlkPk5Gw8xi81sY+HnqyUnD0aD1jhn7Ev1JniVNTo9kqHiWZNq
 boATkNue3uP7uFjcOGOqozBa4G/NcCUJMd0FNyhP+FiuIWBak9d2ooC3a
 L7I5CpLTRTYgrLVzGfLxUDAHTsuXdLe04+RqBNrKFpT3mJIkLTYUhtve6
 HpMlm+Wq1c8GMPzC1TN58JOX5AZOlTpwLYVrTtPCWYQdBfQx6+nwLtEMO
 S3NMoRv9bcKguP+msjqreK1olxEV2gEI/DZBqVVWjJIg3geS7inxnS2Sm
 QGPaY5Elz525Ap4Dc96qyI3P/OxcLpe2Q9Sq3WF/7ADpHS/D2WEuyIhbm
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=evigPlWl
Subject: [Intel-wired-lan] [PATCH iwl-next v5 01/12] ice: rename shared Flow
 Director functions and structs
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com,linux.intel.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C0906F6BB5

From: Tony Nguyen <anthony.l.nguyen@intel.com>

Rename shared Flow Director functions and structs. These entities are
currently used to add Flow Director filters, however, they will be
expanded to also add ACL filters. Rename the functions and struct,
replacing 'fdir' to 'ntuple', to reflect that they are being used for
ntuple filters and are not solely used for Flow Director.

Rename the file to also reflect this change.

Co-developed-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Co-developed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v5:
* Also rename fdir_active_fltr to ntuple_active_fltr_cnt, as it will
  track the sum of fdir and ACL filters in future patches
* Also rename ice_fdir_update_cntrs() to ice_ntuple_update_cntrs(),
  move it to ice_ethtool_ntuple.c, and make it static. In future patches
  it will handle both fdir and ACL
* ice_ntuple_update_cntrs(): join variable initialization and declaration
v2:
* Also rename struct ice_fdir_fltr and file
---
 drivers/net/ethernet/intel/ice/Makefile       |  2 +-
 drivers/net/ethernet/intel/ice/ice.h          |  6 +-
 drivers/net/ethernet/intel/ice/ice_arfs.h     |  2 +-
 drivers/net/ethernet/intel/ice/ice_fdir.h     | 14 ++-
 drivers/net/ethernet/intel/ice/ice_type.h     |  4 +-
 drivers/net/ethernet/intel/ice/ice_arfs.c     |  8 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  9 +-
 ...ce_ethtool_fdir.c => ice_ethtool_ntuple.c} | 85 ++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_fdir.c     | 38 ++-------
 drivers/net/ethernet/intel/ice/virt/fdir.c    | 28 +++---
 10 files changed, 98 insertions(+), 98 deletions(-)
 rename drivers/net/ethernet/intel/ice/{ice_ethtool_fdir.c => ice_ethtool_ntuple.c} (95%)

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 95fd0c49800f..a952bacb7ec7 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -24,7 +24,7 @@ ice-y := ice_main.o	\
 	 ice_vsi_vlan_ops.o \
 	 ice_vsi_vlan_lib.o \
 	 ice_fdir.o	\
-	 ice_ethtool_fdir.o \
+	 ice_ethtool_ntuple.o \
 	 ice_vlan_mode.o \
 	 ice_flex_pipe.o \
 	 ice_flow.o	\
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 4dc453b16013..738bd9d0c2c6 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -1010,11 +1010,11 @@ void ice_deinit_rdma(struct ice_pf *pf);
 bool ice_is_wol_supported(struct ice_hw *hw);
 void ice_fdir_del_all_fltrs(struct ice_vsi *vsi);
 int
-ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
+ice_fdir_write_fltr(struct ice_pf *pf, struct ice_ntuple_fltr *input, bool add,
 		    bool is_tun);
 void ice_vsi_manage_fdir(struct ice_vsi *vsi, bool ena);
-int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
-int ice_del_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
+int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
+int ice_del_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd);
 int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd);
 int
 ice_get_fdir_fltr_ids(struct ice_hw *hw, struct ethtool_rxnfc *cmd,
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.h b/drivers/net/ethernet/intel/ice/ice_arfs.h
index 9706293128c3..7393254b7e0a 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.h
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.h
@@ -13,7 +13,7 @@ enum ice_arfs_fltr_state {
 };
 
 struct ice_arfs_entry {
-	struct ice_fdir_fltr fltr_info;
+	struct ice_ntuple_fltr fltr_info;
 	struct hlist_node list_entry;
 	u64 time_activated;	/* only valid for UDP flows */
 	u32 flow_id;
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 820023c0271f..54f51ae31b40 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -160,7 +160,7 @@ struct ice_fdir_extra {
 	__be16 vlan_tag;	/* VLAN tag info */
 };
 
-struct ice_fdir_fltr {
+struct ice_ntuple_fltr {
 	struct list_head fltr_node;
 	enum ice_fltr_ptype flow_type;
 
@@ -216,18 +216,16 @@ int ice_free_fd_res_cntr(struct ice_hw *hw, u16 cntr_id);
 int ice_alloc_fd_guar_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr);
 int ice_alloc_fd_shrd_item(struct ice_hw *hw, u16 *cntr_id, u16 num_fltr);
 void
-ice_fdir_get_prgm_desc(struct ice_hw *hw, struct ice_fdir_fltr *input,
+ice_fdir_get_prgm_desc(struct ice_hw *hw, struct ice_ntuple_fltr *input,
 		       struct ice_fltr_desc *fdesc, bool add);
 int
-ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
+ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_ntuple_fltr *input,
 			  u8 *pkt, bool frag, bool tun);
 int ice_get_fdir_cnt_all(struct ice_hw *hw);
 int ice_fdir_num_avail_fltr(struct ice_hw *hw, struct ice_vsi *vsi);
-bool ice_fdir_is_dup_fltr(struct ice_hw *hw, struct ice_fdir_fltr *input);
+bool ice_fdir_is_dup_fltr(struct ice_hw *hw, struct ice_ntuple_fltr *input);
 bool ice_fdir_has_frag(enum ice_fltr_ptype flow);
-struct ice_fdir_fltr *
+struct ice_ntuple_fltr *
 ice_fdir_find_fltr_by_idx(struct ice_hw *hw, u32 fltr_idx);
-void
-ice_fdir_update_cntrs(struct ice_hw *hw, enum ice_fltr_ptype flow, bool add);
-void ice_fdir_list_add_fltr(struct ice_hw *hw, struct ice_fdir_fltr *input);
+void ice_fdir_list_add_fltr(struct ice_hw *hw, struct ice_ntuple_fltr *input);
 #endif /* _ICE_FDIR_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index c7a663afc613..f59354a7737c 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1034,8 +1034,8 @@ struct ice_hw {
 	struct mutex fl_profs_locks[ICE_BLK_COUNT];	/* lock fltr profiles */
 	struct list_head fl_profs[ICE_BLK_COUNT];
 
-	/* Flow Director filter info */
-	int fdir_active_fltr;
+	/* ntuple filter info */
+	int ntuple_active_fltr_cnt;
 
 	struct mutex fdir_fltr_lock;	/* protect Flow Director */
 	struct list_head fdir_list_head;
diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.c b/drivers/net/ethernet/intel/ice/ice_arfs.c
index 53b6e2b09eb9..e0335f5e18fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.c
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.c
@@ -302,7 +302,7 @@ ice_arfs_build_entry(struct ice_vsi *vsi, const struct flow_keys *fk,
 		     u16 rxq_idx, u32 flow_id)
 {
 	struct ice_arfs_entry *arfs_entry;
-	struct ice_fdir_fltr *fltr_info;
+	struct ice_ntuple_fltr *fltr_info;
 	u8 ip_proto;
 
 	arfs_entry = devm_kzalloc(ice_pf_to_dev(vsi->back),
@@ -392,8 +392,8 @@ ice_arfs_is_perfect_flow_set(struct ice_hw *hw, __be16 l3_proto, u8 l4_proto)
  * * false	- fltr_info and fk refer to different flows.
  */
 static bool
-ice_arfs_cmp(const struct ice_fdir_fltr *fltr_info, const struct flow_keys *fk,
-	     __be16 n_proto, u8 ip_proto)
+ice_arfs_cmp(const struct ice_ntuple_fltr *fltr_info,
+	     const struct flow_keys *fk, __be16 n_proto, u8 ip_proto)
 {
 	/* Determine if the filter is for IPv4 or IPv6 based on flow_type,
 	 * which is one of ICE_FLTR_PTYPE_NONF_IPV{4,6}_{TCP,UDP}.
@@ -485,7 +485,7 @@ ice_rx_flow_steer(struct net_device *netdev, const struct sk_buff *skb,
 	spin_lock_bh(&vsi->arfs_lock);
 	hlist_for_each_entry(arfs_entry, &vsi->arfs_fltr_list[idx],
 			     list_entry) {
-		struct ice_fdir_fltr *fltr_info;
+		struct ice_ntuple_fltr *fltr_info;
 
 		/* keep searching for the already existing arfs_entry flow */
 		if (arfs_entry->flow_id != flow_id)
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index c87299e83873..ed2df3f6ba1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3133,9 +3133,9 @@ static int ice_set_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd)
 
 	switch (cmd->cmd) {
 	case ETHTOOL_SRXCLSRLINS:
-		return ice_add_fdir_ethtool(vsi, cmd);
+		return ice_add_ntuple_ethtool(vsi, cmd);
 	case ETHTOOL_SRXCLSRLDEL:
-		return ice_del_fdir_ethtool(vsi, cmd);
+		return ice_del_ntuple_ethtool(vsi, cmd);
 	default:
 		break;
 	}
@@ -3177,7 +3177,7 @@ ice_get_rxnfc(struct net_device *netdev, struct ethtool_rxnfc *cmd,
 
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXCLSRLCNT:
-		cmd->rule_cnt = hw->fdir_active_fltr;
+		cmd->rule_cnt = hw->ntuple_active_fltr_cnt;
 		/* report total rule count */
 		cmd->data = ice_get_fdir_cnt_all(hw);
 		ret = 0;
@@ -3953,7 +3953,8 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 		return -EOPNOTSUPP;
 	}
 
-	if (test_bit(ICE_FLAG_FD_ENA, pf->flags) && pf->hw.fdir_active_fltr) {
+	if (test_bit(ICE_FLAG_FD_ENA, pf->flags) &&
+	    pf->hw.ntuple_active_fltr_cnt) {
 		netdev_err(dev, "Cannot set channels when Flow Director filters are active\n");
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
similarity index 95%
rename from drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
rename to drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
index 82ae237894de..cc60b2c36518 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_ntuple.c
@@ -107,7 +107,7 @@ static bool ice_is_mask_valid(u64 mask, u64 field)
 int ice_get_ethtool_fdir_entry(struct ice_hw *hw, struct ethtool_rxnfc *cmd)
 {
 	struct ethtool_rx_flow_spec *fsp;
-	struct ice_fdir_fltr *rule;
+	struct ice_ntuple_fltr *rule;
 	int ret = 0;
 	u16 idx;
 
@@ -227,7 +227,7 @@ int
 ice_get_fdir_fltr_ids(struct ice_hw *hw, struct ethtool_rxnfc *cmd,
 		      u32 *rule_locs)
 {
-	struct ice_fdir_fltr *f_rule;
+	struct ice_ntuple_fltr *f_rule;
 	unsigned int cnt = 0;
 	int val = 0;
 
@@ -1462,10 +1462,10 @@ static void ice_update_per_q_fltr(struct ice_vsi *vsi, u32 q_index, bool inc)
  * @add: true adds filter and false removed filter
  * @is_tun: true adds inner filter on tunnel and false outer headers
  *
- * returns 0 on success and negative value on error
+ * Return: 0 on success and negative value on error
  */
 int
-ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
+ice_fdir_write_fltr(struct ice_pf *pf, struct ice_ntuple_fltr *input, bool add,
 		    bool is_tun)
 {
 	struct device *dev = ice_pf_to_dev(pf);
@@ -1532,10 +1532,10 @@ ice_fdir_write_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input, bool add,
  * @input: filter structure
  * @add: true adds filter and false removed filter
  *
- * returns 0 on success and negative value on error
+ * Return: 0 on success and negative value on error
  */
 static int
-ice_fdir_write_all_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input,
+ice_fdir_write_all_fltr(struct ice_pf *pf, struct ice_ntuple_fltr *input,
 			bool add)
 {
 	u16 port_num;
@@ -1560,7 +1560,7 @@ ice_fdir_write_all_fltr(struct ice_pf *pf, struct ice_fdir_fltr *input,
  */
 void ice_fdir_replay_fltrs(struct ice_pf *pf)
 {
-	struct ice_fdir_fltr *f_rule;
+	struct ice_ntuple_fltr *f_rule;
 	struct ice_hw *hw = &pf->hw;
 
 	list_for_each_entry(f_rule, &hw->fdir_list_head, fltr_node) {
@@ -1597,6 +1597,25 @@ int ice_fdir_create_dflt_rules(struct ice_pf *pf)
 	return err;
 }
 
+/**
+ * ice_ntuple_update_cntrs - increment or decrement filter counter
+ * @hw: pointer to hardware structure
+ * @flow: filter flow type
+ * @add: true to increment, false to decrement
+ */
+static void ice_ntuple_update_cntrs(struct ice_hw *hw,
+				    enum ice_fltr_ptype flow, bool add)
+{
+	int incr = add ? 1 : -1;
+
+	hw->ntuple_active_fltr_cnt += incr;
+
+	if (flow == ICE_FLTR_PTYPE_NONF_NONE || flow >= ICE_FLTR_PTYPE_MAX)
+		ice_debug(hw, ICE_DBG_SW, "Unknown filter type %d\n", flow);
+	else
+		hw->fdir_fltr_cnt[flow] += incr;
+}
+
 /**
  * ice_fdir_del_all_fltrs - Delete all flow director filters
  * @vsi: the VSI being changed
@@ -1605,13 +1624,13 @@ int ice_fdir_create_dflt_rules(struct ice_pf *pf)
  */
 void ice_fdir_del_all_fltrs(struct ice_vsi *vsi)
 {
-	struct ice_fdir_fltr *f_rule, *tmp;
+	struct ice_ntuple_fltr *f_rule, *tmp;
 	struct ice_pf *pf = vsi->back;
 	struct ice_hw *hw = &pf->hw;
 
 	list_for_each_entry_safe(f_rule, tmp, &hw->fdir_list_head, fltr_node) {
 		ice_fdir_write_all_fltr(pf, f_rule, false);
-		ice_fdir_update_cntrs(hw, f_rule->flow_type, false);
+		ice_ntuple_update_cntrs(hw, f_rule->flow_type, false);
 		list_del(&f_rule->fltr_node);
 		devm_kfree(ice_pf_to_dev(pf), f_rule);
 	}
@@ -1676,18 +1695,18 @@ ice_fdir_do_rem_flow(struct ice_pf *pf, enum ice_fltr_ptype flow_type)
 }
 
 /**
- * ice_fdir_update_list_entry - add or delete a filter from the filter list
+ * ice_ntuple_update_list_entry - add or delete a filter from the filter list
  * @pf: PF structure
  * @input: filter structure
  * @fltr_idx: ethtool index of filter to modify
  *
- * returns 0 on success and negative on errors
+ * Return: 0 on success and negative on errors
  */
 static int
-ice_fdir_update_list_entry(struct ice_pf *pf, struct ice_fdir_fltr *input,
-			   int fltr_idx)
+ice_ntuple_update_list_entry(struct ice_pf *pf, struct ice_ntuple_fltr *input,
+			     int fltr_idx)
 {
-	struct ice_fdir_fltr *old_fltr;
+	struct ice_ntuple_fltr *old_fltr;
 	struct ice_hw *hw = &pf->hw;
 	struct ice_vsi *vsi;
 	int err = -ENOENT;
@@ -1705,7 +1724,7 @@ ice_fdir_update_list_entry(struct ice_pf *pf, struct ice_fdir_fltr *input,
 		err = ice_fdir_write_all_fltr(pf, old_fltr, false);
 		if (err)
 			return err;
-		ice_fdir_update_cntrs(hw, old_fltr->flow_type, false);
+		ice_ntuple_update_cntrs(hw, old_fltr->flow_type, false);
 		/* update sb-filters count, specific to ring->channel */
 		ice_update_per_q_fltr(vsi, old_fltr->orig_q_index, false);
 		if (!input && !hw->fdir_fltr_cnt[old_fltr->flow_type])
@@ -1721,18 +1740,18 @@ ice_fdir_update_list_entry(struct ice_pf *pf, struct ice_fdir_fltr *input,
 	ice_fdir_list_add_fltr(hw, input);
 	/* update sb-filters count, specific to ring->channel */
 	ice_update_per_q_fltr(vsi, input->orig_q_index, true);
-	ice_fdir_update_cntrs(hw, input->flow_type, true);
+	ice_ntuple_update_cntrs(hw, input->flow_type, true);
 	return 0;
 }
 
 /**
- * ice_del_fdir_ethtool - delete Flow Director filter
+ * ice_del_ntuple_ethtool - delete Flow Director or ACL filter
  * @vsi: pointer to target VSI
- * @cmd: command to add or delete Flow Director filter
+ * @cmd: command to add or delete the filter
  *
- * Returns 0 on success and negative values for failure
+ * Return: 0 on success and negative values for failure
  */
-int ice_del_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
+int ice_del_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 {
 	struct ethtool_rx_flow_spec *fsp =
 		(struct ethtool_rx_flow_spec *)&cmd->fs;
@@ -1753,7 +1772,7 @@ int ice_del_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 		return -EBUSY;
 
 	mutex_lock(&hw->fdir_fltr_lock);
-	val = ice_fdir_update_list_entry(pf, NULL, fsp->location);
+	val = ice_ntuple_update_list_entry(pf, NULL, fsp->location);
 	mutex_unlock(&hw->fdir_fltr_lock);
 
 	return val;
@@ -1793,14 +1812,16 @@ ice_update_ring_dest_vsi(struct ice_vsi *vsi, u16 *dest_vsi, u32 *ring)
 }
 
 /**
- * ice_set_fdir_input_set - Set the input set for Flow Director
+ * ice_ntuple_set_input_set - Set the input set for Flow Director
  * @vsi: pointer to target VSI
  * @fsp: pointer to ethtool Rx flow specification
  * @input: filter structure
+ *
+ * Return: 0 on success, negative on failure
  */
 static int
-ice_set_fdir_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
-		       struct ice_fdir_fltr *input)
+ice_ntuple_set_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
+			 struct ice_ntuple_fltr *input)
 {
 	s16 q_index = ICE_FDIR_NO_QUEUE_IDX;
 	u16 orig_q_index = 0;
@@ -1943,17 +1964,17 @@ ice_set_fdir_input_set(struct ice_vsi *vsi, struct ethtool_rx_flow_spec *fsp,
 }
 
 /**
- * ice_add_fdir_ethtool - Add/Remove Flow Director filter
+ * ice_add_ntuple_ethtool - Add/Remove Flow Director or ACL filter
  * @vsi: pointer to target VSI
- * @cmd: command to add or delete Flow Director filter
+ * @cmd: command to add or delete the filter
  *
- * Returns 0 on success and negative values for failure
+ * Return: 0 on success and negative values for failure
  */
-int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
+int ice_add_ntuple_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 {
 	struct ice_rx_flow_userdef userdata;
 	struct ethtool_rx_flow_spec *fsp;
-	struct ice_fdir_fltr *input;
+	struct ice_ntuple_fltr *input;
 	struct device *dev;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
@@ -2009,7 +2030,7 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	if (!input)
 		return -ENOMEM;
 
-	ret = ice_set_fdir_input_set(vsi, fsp, input);
+	ret = ice_ntuple_set_input_set(vsi, fsp, input);
 	if (ret)
 		goto free_input;
 
@@ -2030,7 +2051,7 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	input->comp_report = ICE_FXD_FLTR_QW0_COMP_REPORT_SW_FAIL;
 
 	/* input struct is added to the HW filter list */
-	ret = ice_fdir_update_list_entry(pf, input, fsp->location);
+	ret = ice_ntuple_update_list_entry(pf, input, fsp->location);
 	if (ret)
 		goto release_lock;
 
@@ -2041,7 +2062,7 @@ int ice_add_fdir_ethtool(struct ice_vsi *vsi, struct ethtool_rxnfc *cmd)
 	goto release_lock;
 
 remove_sw_rule:
-	ice_fdir_update_cntrs(hw, input->flow_type, false);
+	ice_ntuple_update_cntrs(hw, input->flow_type, false);
 	/* update sb-filters count, specific to ring->channel */
 	ice_update_per_q_fltr(vsi, input->orig_q_index, false);
 	list_del(&input->fltr_node);
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index b29fbdec9442..1bc91cb41769 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -648,7 +648,7 @@ ice_set_fd_desc_val(struct ice_fd_fltr_desc_ctx *ctx,
  * @add: if add is true, this is an add operation, false implies delete
  */
 void
-ice_fdir_get_prgm_desc(struct ice_hw *hw, struct ice_fdir_fltr *input,
+ice_fdir_get_prgm_desc(struct ice_hw *hw, struct ice_ntuple_fltr *input,
 		       struct ice_fltr_desc *fdesc, bool add)
 {
 	struct ice_fd_fltr_desc_ctx fdir_fltr_ctx = { 0 };
@@ -855,7 +855,7 @@ static void ice_pkt_insert_mac_addr(u8 *pkt, u8 *addr)
  * @tun: true implies generate a tunnel packet
  */
 int
-ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_fdir_fltr *input,
+ice_fdir_get_gen_prgm_pkt(struct ice_hw *hw, struct ice_ntuple_fltr *input,
 			  u8 *pkt, bool frag, bool tun)
 {
 	enum ice_fltr_ptype flow;
@@ -1138,10 +1138,10 @@ bool ice_fdir_has_frag(enum ice_fltr_ptype flow)
  *
  * Returns pointer to filter if found or null
  */
-struct ice_fdir_fltr *
+struct ice_ntuple_fltr *
 ice_fdir_find_fltr_by_idx(struct ice_hw *hw, u32 fltr_idx)
 {
-	struct ice_fdir_fltr *rule;
+	struct ice_ntuple_fltr *rule;
 
 	list_for_each_entry(rule, &hw->fdir_list_head, fltr_node) {
 		/* rule ID found in the list */
@@ -1158,9 +1158,9 @@ ice_fdir_find_fltr_by_idx(struct ice_hw *hw, u32 fltr_idx)
  * @hw: hardware structure
  * @fltr: filter node to add to structure
  */
-void ice_fdir_list_add_fltr(struct ice_hw *hw, struct ice_fdir_fltr *fltr)
+void ice_fdir_list_add_fltr(struct ice_hw *hw, struct ice_ntuple_fltr *fltr)
 {
-	struct ice_fdir_fltr *rule, *parent = NULL;
+	struct ice_ntuple_fltr *rule, *parent = NULL;
 
 	list_for_each_entry(rule, &hw->fdir_list_head, fltr_node) {
 		/* rule ID found or pass its spot in the list */
@@ -1175,26 +1175,6 @@ void ice_fdir_list_add_fltr(struct ice_hw *hw, struct ice_fdir_fltr *fltr)
 		list_add(&fltr->fltr_node, &hw->fdir_list_head);
 }
 
-/**
- * ice_fdir_update_cntrs - increment / decrement filter counter
- * @hw: pointer to hardware structure
- * @flow: filter flow type
- * @add: true implies filters added
- */
-void
-ice_fdir_update_cntrs(struct ice_hw *hw, enum ice_fltr_ptype flow, bool add)
-{
-	int incr;
-
-	incr = add ? 1 : -1;
-	hw->fdir_active_fltr += incr;
-
-	if (flow == ICE_FLTR_PTYPE_NONF_NONE || flow >= ICE_FLTR_PTYPE_MAX)
-		ice_debug(hw, ICE_DBG_SW, "Unknown filter type %d\n", flow);
-	else
-		hw->fdir_fltr_cnt[flow] += incr;
-}
-
 /**
  * ice_cmp_ipv6_addr - compare 2 IP v6 addresses
  * @a: IP v6 address
@@ -1215,7 +1195,7 @@ static int ice_cmp_ipv6_addr(__be32 *a, __be32 *b)
  * Returns true if the filters match
  */
 static bool
-ice_fdir_comp_rules(struct ice_fdir_fltr *a,  struct ice_fdir_fltr *b)
+ice_fdir_comp_rules(struct ice_ntuple_fltr *a,  struct ice_ntuple_fltr *b)
 {
 	enum ice_fltr_ptype flow_type = a->flow_type;
 
@@ -1275,9 +1255,9 @@ ice_fdir_comp_rules(struct ice_fdir_fltr *a,  struct ice_fdir_fltr *b)
  *
  * Returns true if the filter is found in the list
  */
-bool ice_fdir_is_dup_fltr(struct ice_hw *hw, struct ice_fdir_fltr *input)
+bool ice_fdir_is_dup_fltr(struct ice_hw *hw, struct ice_ntuple_fltr *input)
 {
-	struct ice_fdir_fltr *rule;
+	struct ice_ntuple_fltr *rule;
 	bool ret = false;
 
 	list_for_each_entry(rule, &hw->fdir_list_head, fltr_node) {
diff --git a/drivers/net/ethernet/intel/ice/virt/fdir.c b/drivers/net/ethernet/intel/ice/virt/fdir.c
index 74967edf27ad..f9d91212e0e0 100644
--- a/drivers/net/ethernet/intel/ice/virt/fdir.c
+++ b/drivers/net/ethernet/intel/ice/virt/fdir.c
@@ -38,7 +38,7 @@ enum ice_fdir_tunnel_type {
 };
 
 struct virtchnl_fdir_fltr_conf {
-	struct ice_fdir_fltr input;
+	struct ice_ntuple_fltr input;
 	enum ice_fdir_tunnel_type ttype;
 	u64 inset_flag;
 	u32 flow_id;
@@ -567,12 +567,12 @@ static bool
 ice_vc_fdir_has_prof_conflict(struct ice_vf *vf,
 			      struct virtchnl_fdir_fltr_conf *conf)
 {
-	struct ice_fdir_fltr *desc;
+	struct ice_ntuple_fltr *desc;
 
 	list_for_each_entry(desc, &vf->fdir.fdir_rule_list, fltr_node) {
 		struct virtchnl_fdir_fltr_conf *existing_conf;
 		enum ice_fltr_ptype flow_type_a, flow_type_b;
-		struct ice_fdir_fltr *a, *b;
+		struct ice_ntuple_fltr *a, *b;
 
 		existing_conf = to_fltr_conf_from_desc(desc);
 		a = &existing_conf->input;
@@ -748,7 +748,7 @@ static int
 ice_vc_fdir_config_input_set(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 			     struct virtchnl_fdir_fltr_conf *conf, int tun)
 {
-	struct ice_fdir_fltr *input = &conf->input;
+	struct ice_ntuple_fltr *input = &conf->input;
 	struct device *dev = ice_pf_to_dev(vf->pf);
 	struct ice_flow_seg_info *seg;
 	enum ice_fltr_ptype flow;
@@ -924,8 +924,8 @@ ice_vc_fdir_parse_pattern(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 	struct virtchnl_proto_hdrs *proto = &fltr->rule_cfg.proto_hdrs;
 	enum virtchnl_proto_hdr_type l3 = VIRTCHNL_PROTO_HDR_NONE;
 	enum virtchnl_proto_hdr_type l4 = VIRTCHNL_PROTO_HDR_NONE;
+	struct ice_ntuple_fltr *input = &conf->input;
 	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_fdir_fltr *input = &conf->input;
 	int i;
 
 	if (proto->count > VIRTCHNL_MAX_NUM_PROTO_HDRS) {
@@ -1150,8 +1150,8 @@ ice_vc_fdir_parse_action(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 			 struct virtchnl_fdir_fltr_conf *conf)
 {
 	struct virtchnl_filter_action_set *as = &fltr->rule_cfg.action_set;
+	struct ice_ntuple_fltr *input = &conf->input;
 	struct device *dev = ice_pf_to_dev(vf->pf);
-	struct ice_fdir_fltr *input = &conf->input;
 	u32 dest_num = 0;
 	u32 mark_num = 0;
 	int i;
@@ -1249,8 +1249,8 @@ static bool
 ice_vc_fdir_comp_rules(struct virtchnl_fdir_fltr_conf *conf_a,
 		       struct virtchnl_fdir_fltr_conf *conf_b)
 {
-	struct ice_fdir_fltr *a = &conf_a->input;
-	struct ice_fdir_fltr *b = &conf_b->input;
+	struct ice_ntuple_fltr *a = &conf_a->input;
+	struct ice_ntuple_fltr *b = &conf_b->input;
 
 	if (conf_a->ttype != conf_b->ttype)
 		return false;
@@ -1288,7 +1288,7 @@ ice_vc_fdir_comp_rules(struct virtchnl_fdir_fltr_conf *conf_a,
 static bool
 ice_vc_fdir_is_dup_fltr(struct ice_vf *vf, struct virtchnl_fdir_fltr_conf *conf)
 {
-	struct ice_fdir_fltr *desc;
+	struct ice_ntuple_fltr *desc;
 	bool ret;
 
 	list_for_each_entry(desc, &vf->fdir.fdir_rule_list, fltr_node) {
@@ -1317,7 +1317,7 @@ static int
 ice_vc_fdir_insert_entry(struct ice_vf *vf,
 			 struct virtchnl_fdir_fltr_conf *conf, u32 *id)
 {
-	struct ice_fdir_fltr *input = &conf->input;
+	struct ice_ntuple_fltr *input = &conf->input;
 	int i;
 
 	/* alloc ID corresponding with conf */
@@ -1341,7 +1341,7 @@ static void
 ice_vc_fdir_remove_entry(struct ice_vf *vf,
 			 struct virtchnl_fdir_fltr_conf *conf, u32 id)
 {
-	struct ice_fdir_fltr *input = &conf->input;
+	struct ice_ntuple_fltr *input = &conf->input;
 
 	idr_remove(&vf->fdir.fdir_rule_idr, id);
 	list_del(&input->fltr_node);
@@ -1367,7 +1367,7 @@ ice_vc_fdir_lookup_entry(struct ice_vf *vf, u32 id)
 static void ice_vc_fdir_flush_entry(struct ice_vf *vf)
 {
 	struct virtchnl_fdir_fltr_conf *conf;
-	struct ice_fdir_fltr *desc, *temp;
+	struct ice_ntuple_fltr *desc, *temp;
 
 	list_for_each_entry_safe(desc, temp,
 				 &vf->fdir.fdir_rule_list, fltr_node) {
@@ -1390,7 +1390,7 @@ static int ice_vc_fdir_write_fltr(struct ice_vf *vf,
 				  struct virtchnl_fdir_fltr_conf *conf,
 				  bool add, bool is_tun)
 {
-	struct ice_fdir_fltr *input = &conf->input;
+	struct ice_ntuple_fltr *input = &conf->input;
 	struct ice_vsi *vsi, *ctrl_vsi;
 	struct ice_fltr_desc desc;
 	struct device *dev;
@@ -2315,7 +2315,7 @@ int ice_vc_del_fdir_fltr(struct ice_vf *vf, u8 *msg)
 	struct virtchnl_fdir_fltr_conf *conf;
 	struct ice_vf_fdir *fdir = &vf->fdir;
 	enum virtchnl_status_code v_ret;
-	struct ice_fdir_fltr *input;
+	struct ice_ntuple_fltr *input;
 	enum ice_fltr_ptype flow;
 	struct device *dev;
 	struct ice_pf *pf;
-- 
2.49.0

