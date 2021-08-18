Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E363F12FC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Aug 2021 07:57:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CF2180E75;
	Thu, 19 Aug 2021 05:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OpaHCWrDtsSG; Thu, 19 Aug 2021 05:57:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8768F80E7A;
	Thu, 19 Aug 2021 05:57:06 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D132C1BF94B
 for <intel-wired-lan@osuosl.org>; Thu, 19 Aug 2021 05:57:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE74F4013F
 for <intel-wired-lan@osuosl.org>; Thu, 19 Aug 2021 05:57:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6ccuulhuNg_t for <intel-wired-lan@osuosl.org>;
 Thu, 19 Aug 2021 05:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E56DA400BB
 for <intel-wired-lan@osuosl.org>; Thu, 19 Aug 2021 05:57:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="213368114"
X-IronPort-AV: E=Sophos;i="5.84,333,1620716400"; d="scan'208";a="213368114"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 22:57:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,333,1620716400"; d="scan'208";a="681521744"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga005.fm.intel.com with ESMTP; 18 Aug 2021 22:56:59 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 18 Aug 2021 18:21:24 -0400
Message-Id: <20210818222124.15467-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: remove msleep from reading
 PR stats
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

Calling msleep in context of reading PR statistics in case
of having maximum number on VFs on machine leads to strange
call trace in rcu_note_context_switch.

msleep function is called in ice_check_vf_ready_for_cfg.

As waiting for reset isn't needed in case of getting stats,
change this function to ice_is_vf_disabled to check if VF is
running or not.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
This commit should be squashed with "ice: Fix crash in switchdev mode
during VFR"

 drivers/net/ethernet/intel/ice/ice_repr.c        | 2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h | 7 +++++++
 3 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 8fd90ac661b1..c49eeea7cb67 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -52,7 +52,7 @@ ice_repr_get_stats64(struct net_device *netdev, struct rtnl_link_stats64 *stats)
 	struct ice_eth_stats *eth_stats;
 	struct ice_vsi *vsi;
 
-	if (ice_check_vf_ready_for_cfg(np->repr->vf))
+	if (ice_is_vf_disabled(np->repr->vf))
 		return;
 	vsi = np->repr->src_vsi;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 0ed7f1ec6172..0bb8b64d1c1c 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1533,7 +1533,7 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
  *
  * Returns true if the PF or VF is disabled, false otherwise.
  */
-static bool ice_is_vf_disabled(struct ice_vf *vf)
+bool ice_is_vf_disabled(struct ice_vf *vf)
 {
 	struct ice_pf *pf = vf->pf;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 9c2cad78231f..9de19cc97f48 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -183,6 +183,8 @@ int ice_set_vf_link_state(struct net_device *netdev, int vf_id, int link_state);
 
 int ice_check_vf_ready_for_cfg(struct ice_vf *vf);
 
+bool ice_is_vf_disabled(struct ice_vf *vf);
+
 int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena);
 
 int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector);
@@ -216,6 +218,11 @@ static inline int ice_check_vf_ready_for_cfg(struct ice_vf *vf)
 {
 	return -EOPNOTSUPP;
 }
+
+static inline bool ice_is_vf_disabled(struct ice_vf *vf)
+{
+	return true;
+}
 static inline void ice_vc_set_dflt_vf_ops(struct ice_vc_vf_ops *ops) { }
 static inline void ice_set_vf_state_qs_dis(struct ice_vf *vf) { }
 static inline
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
