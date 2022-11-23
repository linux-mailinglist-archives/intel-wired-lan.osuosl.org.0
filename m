Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5746563664F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 17:58:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E575280B4C;
	Wed, 23 Nov 2022 16:58:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E575280B4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669222709;
	bh=ILckS/rp72QUt/BmnWIa+9IIlRuRkC/h/0Os5dEiovQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RP98d3AWbe9C4J6c/6sP2m7PmzdQeejsm1CUvffYu6quo0apxqQ4QlRL/gBT4aWDJ
	 /5aU+DnYaIXf+xssr4Jr0MlH8qx1utbsly6b2AqXctbOsNYatDMNVBpZTMcSVohnON
	 iZnxy2NjIPhxZ3QFmd0fBGvFZoBvpuSfwCvMXXyncpbTgo88WEl9Z3lpEgeptwoMiR
	 vehR8Y0OukgA+KOtPXXqOVNA+IiI33XLNBr6m+Knc5OwHKP9O0dAdywlOPPBLzmmgY
	 zmZtPYNax8MmGeV2bp4pWYzTHNxZGQV//BKRCe7owIte70VuvjGbrkJg5them5Eu4w
	 kbSS1seYshLtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4U8ntNeig_zn; Wed, 23 Nov 2022 16:58:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0C7581E92;
	Wed, 23 Nov 2022 16:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0C7581E92
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E124C1BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 16:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C90F760BC3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 16:58:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C90F760BC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ogXbDnydU-Eg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Nov 2022 16:58:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AD4260777
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AD4260777
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 16:58:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="376255624"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="376255624"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 08:58:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="730843744"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="730843744"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.241.12])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 08:57:40 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 23 Nov 2022 08:56:40 -0800
Message-Id: <20221123165640.61314-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669222703; x=1700758703;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kG0J2zk5Zb7i3Gg74XjreJktwoXm7liQ1x2vrK+4HDs=;
 b=IbmjtwmDY6VRtRE7kEL/AbX/dQi7tgzuO6BsC64PaOClsUpL95WqWuQ6
 mSp7mzyWz179GEwek/m/jO+qvwePBJiAkWBpsjK/vpCVH0AN3DdSeJ7QJ
 +J+9iMWSAgvrBbOu18OEbRj8XIyjh+mtmxkQjif+POOFfBegsEd9C4Fla
 HIJQoqGp8AoQkj4KmWtmSOwRqJ7YNl84T2Xb7Y64tISG6HrBTNZEll7BA
 KUmu13+8X9ARzUD8vJoSNk7g1r/gfLvDa+IZRVarLNxRYSyfzSfbylMi3
 H5kwgk4pORQmaqoAh4kXJwH4AloNXQTqtJFie5TH8QwXklJ4pKkZpXwnq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IbmjtwmD
Subject: [Intel-wired-lan] [PATCH net-next] ice: Reduce scope of variables
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

There are some places where the scope of a variable can
be reduced, so do that.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 9 ++++++---
 drivers/net/ethernet/intel/ice/ice_sched.c     | 6 ++++--
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index aa2c8ec5b7f4..ababcb8029e4 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -2497,10 +2497,11 @@ ice_upd_dvm_boost_entry(struct ice_hw *hw, struct ice_dvm_entry *entry)
  */
 int ice_set_dvm_boost_entries(struct ice_hw *hw)
 {
-	int status;
 	u16 i;
 
 	for (i = 0; i < hw->dvm_upd.count; i++) {
+		int status;
+
 		status = ice_upd_dvm_boost_entry(hw, &hw->dvm_upd.tbl[i]);
 		if (status)
 			return status;
@@ -5302,12 +5303,13 @@ ice_rem_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig,
 	u16 idx = vsig & ICE_VSIG_IDX_M;
 	struct ice_vsig_vsi *vsi_cur;
 	struct ice_vsig_prof *d, *t;
-	int status;
 
 	/* remove TCAM entries */
 	list_for_each_entry_safe(d, t,
 				 &hw->blk[blk].xlt2.vsig_tbl[idx].prop_lst,
 				 list) {
+		int status;
+
 		status = ice_rem_prof_id(hw, blk, d);
 		if (status)
 			return status;
@@ -5358,12 +5360,13 @@ ice_rem_prof_id_vsig(struct ice_hw *hw, enum ice_block blk, u16 vsig, u64 hdl,
 {
 	u16 idx = vsig & ICE_VSIG_IDX_M;
 	struct ice_vsig_prof *p, *t;
-	int status;
 
 	list_for_each_entry_safe(p, t,
 				 &hw->blk[blk].xlt2.vsig_tbl[idx].prop_lst,
 				 list)
 		if (p->profile_cookie == hdl) {
+			int status;
+
 			if (ice_vsig_prof_id_count(hw, blk, vsig) == 1)
 				/* this is the last profile, remove the VSIG */
 				return ice_rem_vsig(hw, blk, vsig, chg);
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index f303e5b286bf..606f157db99e 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -1657,12 +1657,13 @@ ice_sched_add_vsi_child_nodes(struct ice_port_info *pi, u16 vsi_handle,
 	u32 first_node_teid;
 	u16 num_added = 0;
 	u8 i, qgl, vsil;
-	int status;
 
 	qgl = ice_sched_get_qgrp_layer(hw);
 	vsil = ice_sched_get_vsi_layer(hw);
 	parent = ice_sched_get_vsi_node(pi, tc_node, vsi_handle);
 	for (i = vsil + 1; i <= qgl; i++) {
+		int status;
+
 		if (!parent)
 			return -EIO;
 
@@ -1758,13 +1759,14 @@ ice_sched_add_vsi_support_nodes(struct ice_port_info *pi, u16 vsi_handle,
 	u32 first_node_teid;
 	u16 num_added = 0;
 	u8 i, vsil;
-	int status;
 
 	if (!pi)
 		return -EINVAL;
 
 	vsil = ice_sched_get_vsi_layer(pi->hw);
 	for (i = pi->hw->sw_entry_point_layer; i <= vsil; i++) {
+		int status;
+
 		status = ice_sched_add_nodes_to_layer(pi, tc_node, parent,
 						      i, num_nodes[i],
 						      &first_node_teid,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
