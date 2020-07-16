Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E063D2223FE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 15:35:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F5D388EF6;
	Thu, 16 Jul 2020 13:35:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WlEkRxqxX8Tz; Thu, 16 Jul 2020 13:35:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A3CC088EF5;
	Thu, 16 Jul 2020 13:35:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F389A1BF3EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EF80A8A680
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f68KUiccFvn9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 13:35:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 394C48A689
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 13:35:55 +0000 (UTC)
IronPort-SDR: Uh4NZK8Phr2tbEugtry5bXA3y1JCJ7M4i7f1yfarPHdL1gyp9zWKb4axughPWh3vvkeKwVDeje
 6G6+NUL0mDrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="147366340"
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="147366340"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 06:35:55 -0700
IronPort-SDR: xAEVfQkls1z81TUxez5Sg1t9rOdYWhclq47Pu1CidfobP5Egu5JHcc1ycnrsCGYY31z9zC3SU4
 QUTlzAJBgkFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,359,1589266800"; d="scan'208";a="460474440"
Received: from dpdk51.sh.intel.com ([10.67.111.82])
 by orsmga005.jf.intel.com with ESMTP; 16 Jul 2020 06:35:54 -0700
From: Qi Zhang <qi.z.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Jul 2020 21:39:34 +0800
Message-Id: <20200716133938.46921-13-qi.z.zhang@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20200716133938.46921-1-qi.z.zhang@intel.com>
References: <20200716133938.46921-1-qi.z.zhang@intel.com>
Subject: [Intel-wired-lan] [PATCH S48 v6 12/16] ice: Add new actions support
 for VF FDIR
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
Cc: qi.z.zhang@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

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
index a6fce237fe84..cb455803ecf6 100644
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
index b88740a6663b..c27faeea5200 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -578,7 +578,9 @@ enum virtchnl_action {
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
2.13.6

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
