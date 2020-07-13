Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2862A21E1C6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 22:57:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A1FC920514;
	Mon, 13 Jul 2020 20:57:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6WW1IL5s7pMg; Mon, 13 Jul 2020 20:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 53A4620354;
	Mon, 13 Jul 2020 20:57:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3AF601BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 37AC0876F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HsyM-04bMy7k for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F76A8735C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
IronPort-SDR: YAdU4BJCkm/veEqrnhhlO1UYBkPRu5kRdYkAYQySJo/FAODp4+pE3vu8vmbApbnib0xoUPQ7Fx
 An6YED4U/Bbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213545920"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="213545920"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 13:57:09 -0700
IronPort-SDR: MeEQBPaC3F08ThZxJYNvDEo2h1flxRcl3fEOAsZcqq1vSmSh4lo4VHZRiB9mh0H6qmejgmHFYA
 KoM+5GvyFFuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="285526694"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2020 13:57:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jul 2020 13:53:16 -0700
Message-Id: <20200713205318.32425-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S50 13/15] ice: reduce scope of variable
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

From: Bruce Allan <bruce.w.allan@intel.com>

The scope of the macro local variable 'i' can be reduced.  Do so to avoid
static analysis tools from complaining.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 1e18021aa073..1f46a7828be8 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -312,9 +312,10 @@ ice_cfg_rq_regs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
 
 #define ICE_FREE_CQ_BUFS(hw, qi, ring)					\
 do {									\
-	int i;								\
 	/* free descriptors */						\
-	if ((qi)->ring.r.ring##_bi)					\
+	if ((qi)->ring.r.ring##_bi) {					\
+		int i;							\
+									\
 		for (i = 0; i < (qi)->num_##ring##_entries; i++)	\
 			if ((qi)->ring.r.ring##_bi[i].pa) {		\
 				dmam_free_coherent(ice_hw_to_dev(hw),	\
@@ -325,6 +326,7 @@ do {									\
 					(qi)->ring.r.ring##_bi[i].pa = 0;\
 					(qi)->ring.r.ring##_bi[i].size = 0;\
 		}							\
+	}								\
 	/* free the buffer info list */					\
 	if ((qi)->ring.cmd_buf)						\
 		devm_kfree(ice_hw_to_dev(hw), (qi)->ring.cmd_buf);	\
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
