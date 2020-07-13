Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF5A21E1BC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 22:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAA8B8A10B;
	Mon, 13 Jul 2020 20:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LUTlE7XAn8eN; Mon, 13 Jul 2020 20:57:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4732F8A0F6;
	Mon, 13 Jul 2020 20:57:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 43FFE1BF973
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3FEDD876C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DH-bqABraB1W for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8D0C7876F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:10 +0000 (UTC)
IronPort-SDR: pzQS1Wwu7CXiliMgJvZ8FfH5G3VkaIE+4FaxiiEyQb8+Ag1kW8EPbAsLcKG/gSo0+TZ7nNiuO5
 fJEqjFE0/+kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213545913"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="213545913"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 13:57:08 -0700
IronPort-SDR: zB7e6yEShiuDwS9aJnXn8CfnceJlgGfT0Q5tM2YHuyx/M/4d52q0Vl1b98Qk2m/FyLyGD4T5to
 gzfK/BWFOSWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="285526689"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2020 13:57:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jul 2020 13:53:11 -0700
Message-Id: <20200713205318.32425-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S50 08/15] ice: Adjust scheduler default
 BW weight
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

By default the queues are configured in legacy mode. The default
BW settings for legacy/advanced modes are different. The existing
code was using the advanced mode default value of 1 which was
incorrect. This caused the unbalanced BW sharing among siblings.
The recommneded default value is applied.

Signed-off-by: Tarun Singh <tarun.k.singh@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 13 ++++++++++++-
 drivers/net/ethernet/intel/ice/ice_type.h   |  2 +-
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 99b12446c7b0..d1d827a69271 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3888,7 +3888,18 @@ ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
 	 * Without setting the generic section as valid in valid_sections, the
 	 * Admin queue command will fail with error code ICE_AQ_RC_EINVAL.
 	 */
-	buf->txqs[0].info.valid_sections = ICE_AQC_ELEM_VALID_GENERIC;
+	buf->txqs[0].info.valid_sections =
+		ICE_AQC_ELEM_VALID_GENERIC | ICE_AQC_ELEM_VALID_CIR |
+		ICE_AQC_ELEM_VALID_EIR;
+	buf->txqs[0].info.generic = 0;
+	buf->txqs[0].info.cir_bw.bw_profile_idx =
+		cpu_to_le16(ICE_SCHED_DFLT_RL_PROF_ID);
+	buf->txqs[0].info.cir_bw.bw_alloc =
+		cpu_to_le16(ICE_SCHED_DFLT_BW_WT);
+	buf->txqs[0].info.eir_bw.bw_profile_idx =
+		cpu_to_le16(ICE_SCHED_DFLT_RL_PROF_ID);
+	buf->txqs[0].info.eir_bw.bw_alloc =
+		cpu_to_le16(ICE_SCHED_DFLT_BW_WT);
 
 	/* add the LAN queue */
 	status = ice_aq_add_lan_txq(hw, num_qgrps, buf, buf_size, cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index bf31ccf01100..1fe8b0cbf064 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -418,7 +418,7 @@ enum ice_rl_type {
 #define ICE_SCHED_DFLT_BW		0xFFFFFFFF	/* unlimited */
 #define ICE_SCHED_DFLT_RL_PROF_ID	0
 #define ICE_SCHED_NO_SHARED_RL_PROF_ID	0xFFFF
-#define ICE_SCHED_DFLT_BW_WT		1
+#define ICE_SCHED_DFLT_BW_WT		4
 #define ICE_SCHED_INVAL_PROF_ID		0xFFFF
 #define ICE_SCHED_DFLT_BURST_SIZE	(15 * 1024)	/* in bytes (15k) */
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
