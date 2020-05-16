Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C64341D5D78
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:57:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80A2589A30;
	Sat, 16 May 2020 00:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TYtni2ANUFGK; Sat, 16 May 2020 00:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52E7B89489;
	Sat, 16 May 2020 00:57:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 238B61BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 20A8989738
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7U9zXjAkn8Uz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:57:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C970588717
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:41 +0000 (UTC)
IronPort-SDR: hYENSPa9Po+w60NA/qR3eU4jJKU+cmNXiFKdichnu9ZMs7T+seIhF8PLxVRIke7v2qja75GEB7
 iskXjbBir2HA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:57:41 -0700
IronPort-SDR: iDPk9hQh3OP2i81nSmCK2DbwQ0rf79EXbm6jc2OgkCm/bcF+DpwhjiRcA4N3r17q1ap1RlKgkn
 DCjU0sD8/dRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="464922710"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga005.fm.intel.com with ESMTP; 15 May 2020 17:57:41 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:55:05 -0700
Message-Id: <20200516005506.5113-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S46 8/9] ice: fix aRFS after flow director
 delete
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

From: Henry Tieman <henry.w.tieman@intel.com>

The logic was missing for adding back perfect flows after flow director
filter delete. The code now adds perfect flows into the HW tables after
filter delete.

Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
---
 .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 27 ++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
index 22cc4167b974..b92017b8ae4a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool_fdir.c
@@ -1363,6 +1363,31 @@ void ice_vsi_manage_fdir(struct ice_vsi *vsi, bool ena)
 	mutex_unlock(&hw->fdir_fltr_lock);
 }
 
+/**
+ * ice_fdir_do_rem_flow - delete flow and possibly add perfect flow
+ * @pf: PF structure
+ * @flow_type: FDir flow type to release
+ */
+static void
+ice_fdir_do_rem_flow(struct ice_pf *pf, enum ice_fltr_ptype flow_type)
+{
+	struct ice_hw *hw = &pf->hw;
+	bool need_perfect = false;
+
+	if (flow_type == ICE_FLTR_PTYPE_NONF_IPV4_TCP ||
+	    flow_type == ICE_FLTR_PTYPE_NONF_IPV4_UDP ||
+	    flow_type == ICE_FLTR_PTYPE_NONF_IPV6_TCP ||
+	    flow_type == ICE_FLTR_PTYPE_NONF_IPV6_UDP)
+		need_perfect = true;
+
+	if (need_perfect && test_bit(flow_type, hw->fdir_perfect_fltr))
+		return;
+
+	ice_fdir_rem_flow(hw, ICE_BLK_FD, flow_type);
+	if (need_perfect)
+		ice_create_init_fdir_rule(pf, flow_type);
+}
+
 /**
  * ice_fdir_update_list_entry - add or delete a filter from the filter list
  * @pf: PF structure
@@ -1393,7 +1418,7 @@ ice_fdir_update_list_entry(struct ice_pf *pf, struct ice_fdir_fltr *input,
 			/* we just deleted the last filter of flow_type so we
 			 * should also delete the HW filter info.
 			 */
-			ice_fdir_rem_flow(hw, ICE_BLK_FD, old_fltr->flow_type);
+			ice_fdir_do_rem_flow(pf, old_fltr->flow_type);
 		list_del(&old_fltr->fltr_node);
 		devm_kfree(ice_hw_to_dev(hw), old_fltr);
 	}
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
