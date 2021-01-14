Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCC12F5FDA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 12:29:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E046D873AD;
	Thu, 14 Jan 2021 11:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n7pk98d+Mtut; Thu, 14 Jan 2021 11:29:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E5C2873AF;
	Thu, 14 Jan 2021 11:29:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 46C041BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 11:29:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 42ABD8699B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 11:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M485g2Pzkmxc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 11:29:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D89A386979
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 11:29:24 +0000 (UTC)
IronPort-SDR: IMnkrYw7GK/gRI4ccx489HyaIJD8FcBnY0b9SGOH1j1N+UYqVhPFNV50S2BJvbfV3v1XKGhxCn
 a1NVPfkOI+9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="166022161"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="166022161"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 03:29:24 -0800
IronPort-SDR: kZJsg7aAvS1JwEhFW3mFWUBgWC5s3dt7dX7ZJe+ik9pK36r/aUIuYE64ep/5DGbcYKyi41wVb2
 +UnpEKYI4Cdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="424919569"
Received: from npg-dpdk-haiyue-3.sh.intel.com ([10.67.118.237])
 by orsmga001.jf.intel.com with ESMTP; 14 Jan 2021 03:29:23 -0800
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 14 Jan 2021 19:13:01 +0800
Message-Id: <20210114111310.97121-12-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210114111310.97121-1-haiyue.wang@intel.com>
References: <20210114111310.97121-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v1 11/20] ice: Add new actions support for
 VF FDIR
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
Cc: cunming.liang@intel.com, Yahui Cao <yahui.cao@intel.com>,
 qi.z.zhang@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qi Zhang <qi.z.zhang@intel.com>

Add two new actions support for VF FDIR:

A passthrough action does not specify the destination queue, but
just allow the packet go to next pipeline stage, a typical use
cases is combined with a software mark (FDID) action.

Allow specify a 2^n continuous queues as the destination of a FDIR rule.
Packet distribution is based on current RSS configure.

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_fdir.c          | 12 +++++++++++-
 drivers/net/ethernet/intel/ice/ice_fdir.h          |  4 ++++
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 10 ++++++++++
 include/linux/avf/virtchnl.h                       |  2 ++
 4 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.c b/drivers/net/ethernet/intel/ice/ice_fdir.c
index 8f3e61c6bfd6..5f8d7a9ca068 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.c
@@ -374,7 +374,14 @@ ice_fdir_get_prgm_desc(struct ice_hw *hw, struct ice_fdir_fltr *input,
 	if (input->dest_ctl == ICE_FLTR_PRGM_DESC_DEST_DROP_PKT) {
 		fdir_fltr_ctx.drop = ICE_FXD_FLTR_QW0_DROP_YES;
 		fdir_fltr_ctx.qindex = 0;
+	} else if (input->dest_ctl ==
+		   ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_OTHER) {
+		fdir_fltr_ctx.drop = ICE_FXD_FLTR_QW0_DROP_NO;
+		fdir_fltr_ctx.qindex = 0;
 	} else {
+		if (input->dest_ctl ==
+		    ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QGROUP)
+			fdir_fltr_ctx.toq = input->q_region;
 		fdir_fltr_ctx.drop = ICE_FXD_FLTR_QW0_DROP_NO;
 		fdir_fltr_ctx.qindex = input->q_index;
 	}
@@ -382,7 +389,10 @@ ice_fdir_get_prgm_desc(struct ice_hw *hw, struct ice_fdir_fltr *input,
 	fdir_fltr_ctx.cnt_index = input->cnt_index;
 	fdir_fltr_ctx.fd_vsi = ice_get_hw_vsi_num(hw, input->dest_vsi);
 	fdir_fltr_ctx.evict_ena = ICE_FXD_FLTR_QW0_EVICT_ENA_FALSE;
-	fdir_fltr_ctx.toq_prio = 3;
+	if (input->dest_ctl == ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_OTHER)
+		fdir_fltr_ctx.toq_prio = 0;
+	else
+		fdir_fltr_ctx.toq_prio = 3;
 	fdir_fltr_ctx.pcmd = add ? ICE_FXD_FLTR_QW1_PCMD_ADD :
 		ICE_FXD_FLTR_QW1_PCMD_REMOVE;
 	fdir_fltr_ctx.swap = ICE_FXD_FLTR_QW1_SWAP_NOT_SET;
diff --git a/drivers/net/ethernet/intel/ice/ice_fdir.h b/drivers/net/ethernet/intel/ice/ice_fdir.h
index 93f3f0d9d37b..adf237925b3c 100644
--- a/drivers/net/ethernet/intel/ice/ice_fdir.h
+++ b/drivers/net/ethernet/intel/ice/ice_fdir.h
@@ -42,6 +42,8 @@
 enum ice_fltr_prgm_desc_dest {
 	ICE_FLTR_PRGM_DESC_DEST_DROP_PKT,
 	ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QINDEX,
+	ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QGROUP,
+	ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_OTHER,
 };
 
 enum ice_fltr_prgm_desc_fd_status {
@@ -133,6 +135,8 @@ struct ice_fdir_fltr {
 
 	/* flex byte filter data */
 	__be16 flex_word;
+	/* queue region size (=2^q_region) */
+	u8 q_region;
 	u16 flex_offset;
 	u16 flex_fltr;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index de6ec56223e8..f06820af6153 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -904,6 +904,10 @@ ice_vc_fdir_parse_action(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 		struct virtchnl_filter_action *action = &as->actions[i];
 
 		switch (action->type) {
+		case VIRTCHNL_ACTION_PASSTHRU:
+			dest_num++;
+			input->dest_ctl = ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_OTHER;
+			break;
 		case VIRTCHNL_ACTION_DROP:
 			dest_num++;
 			input->dest_ctl = ICE_FLTR_PRGM_DESC_DEST_DROP_PKT;
@@ -913,6 +917,12 @@ ice_vc_fdir_parse_action(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
 			input->dest_ctl = ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QINDEX;
 			input->q_index = action->act_conf.queue.index;
 			break;
+		case VIRTCHNL_ACTION_Q_REGION:
+			dest_num++;
+			input->dest_ctl = ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QGROUP;
+			input->q_index = action->act_conf.queue.index;
+			input->q_region = action->act_conf.queue.region;
+			break;
 		case VIRTCHNL_ACTION_MARK:
 			mark_num++;
 			input->fltr_id = action->act_conf.mark_id;
diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index 5f84e10cef89..cc4ef0f29878 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -593,7 +593,9 @@ enum virtchnl_action {
 	/* action types */
 	VIRTCHNL_ACTION_DROP = 0,
 	VIRTCHNL_ACTION_TC_REDIRECT,
+	VIRTCHNL_ACTION_PASSTHRU,
 	VIRTCHNL_ACTION_QUEUE,
+	VIRTCHNL_ACTION_Q_REGION,
 	VIRTCHNL_ACTION_MARK,
 	VIRTCHNL_ACTION_COUNT,
 };
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
