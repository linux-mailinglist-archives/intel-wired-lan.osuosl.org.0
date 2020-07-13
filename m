Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882B521E1BA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 22:57:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 102AE888F6;
	Mon, 13 Jul 2020 20:57:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BtLpAjp56B1R; Mon, 13 Jul 2020 20:57:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A5C0891AF;
	Mon, 13 Jul 2020 20:57:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA7901BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E6FB687752
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id atRpk5BXX4h8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6314D876AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
IronPort-SDR: RJMRKH1lOnpOHqfu6/fPAfZSZeVhyF461w7mkOzQVuaG8G+yUQwvTXN1t5vqthiVBv3NMFTACM
 R3eEumWDntEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213545911"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="213545911"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 13:57:08 -0700
IronPort-SDR: STXHK5mZgOJNQ+IQtpgdqJs70Ibd+L1kvdYztw/TFj5gEaOChusTIymsMTCtb9rMsKqG0Utl+b
 DcoW9dQXBK0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="285526688"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2020 13:57:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jul 2020 13:53:10 -0700
Message-Id: <20200713205318.32425-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S50 07/15] ice: Add RL profile bit mask
 check
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

From: Tarun Singh <tarun.k.singh@intel.com>

Mask bits before accessing the profile type field.

Signed-off-by: Tarun Singh <tarun.k.singh@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 1c29cfa1cf33..ac5b05bb978f 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -2153,8 +2153,8 @@ ice_sched_add_rl_profile(struct ice_port_info *pi,
 	hw = pi->hw;
 	list_for_each_entry(rl_prof_elem, &pi->rl_prof_list[layer_num],
 			    list_entry)
-		if (rl_prof_elem->profile.flags == profile_type &&
-		    rl_prof_elem->bw == bw)
+		if ((rl_prof_elem->profile.flags & ICE_AQC_RL_PROFILE_TYPE_M) ==
+		    profile_type && rl_prof_elem->bw == bw)
 			/* Return existing profile ID info */
 			return rl_prof_elem;
 
@@ -2384,7 +2384,8 @@ ice_sched_rm_rl_profile(struct ice_port_info *pi, u8 layer_num, u8 profile_type,
 	/* Check the existing list for RL profile */
 	list_for_each_entry(rl_prof_elem, &pi->rl_prof_list[layer_num],
 			    list_entry)
-		if (rl_prof_elem->profile.flags == profile_type &&
+		if ((rl_prof_elem->profile.flags & ICE_AQC_RL_PROFILE_TYPE_M) ==
+		    profile_type &&
 		    le16_to_cpu(rl_prof_elem->profile.profile_id) ==
 		    profile_id) {
 			if (rl_prof_elem->prof_id_ref)
@@ -2546,8 +2547,8 @@ ice_sched_set_node_bw(struct ice_port_info *pi, struct ice_sched_node *node,
 		return 0;
 
 	return ice_sched_rm_rl_profile(pi, layer_num,
-				       rl_prof_info->profile.flags,
-				       old_id);
+				       rl_prof_info->profile.flags &
+				       ICE_AQC_RL_PROFILE_TYPE_M, old_id);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
