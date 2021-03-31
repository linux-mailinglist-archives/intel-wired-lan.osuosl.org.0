Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BE335090E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:27:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18F40849C3;
	Wed, 31 Mar 2021 21:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PKX4wz3LaB3P; Wed, 31 Mar 2021 21:27:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10BAE8496D;
	Wed, 31 Mar 2021 21:27:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5105D1BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 874FF40EE5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1fYHzaL98JtD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B25B40EDE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
IronPort-SDR: twAhGy47ze67Q9P6khAp6H/pzUznCMSB7TR+Ts1oeQIS0qUE+4A9Z3Y6albe1QQGH+NRaHutSq
 OuqT7E6Azn2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192117310"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="192117310"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:52 -0700
IronPort-SDR: +5ttMY9ju2lNVCZDeCIXPqGwMou9UKAK4w9Wpyge1IYlgezosvAogashuRiV45Vt8U4jgkbXPE
 1bW62iUl5frQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="445819642"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2021 14:26:51 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 14:17:03 -0700
Message-Id: <20210331211708.55205-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S58 08/13] ice: remove unused struct member
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

The only time you can ever have a rq_last_status is if
a firmware event was somehow reporting a status on the receive
queue, which are generally firmware initiated events or
mailbox messages from a VF.  Mostly this struct member was unused.

Fix this problem by still printing the value of the field in a debug
print, but don't store the value forever in a struct, potentially
creating opportunities for callers to use the wrong struct member.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.c | 6 +++---
 drivers/net/ethernet/intel/ice/ice_controlq.h | 1 -
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 0f207a42ea77..87b33bdd4960 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -1097,6 +1097,7 @@ ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		  struct ice_rq_event_info *e, u16 *pending)
 {
 	u16 ntc = cq->rq.next_to_clean;
+	enum ice_aq_err rq_last_status;
 	enum ice_status ret_code = 0;
 	struct ice_aq_desc *desc;
 	struct ice_dma_mem *bi;
@@ -1130,13 +1131,12 @@ ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	desc = ICE_CTL_Q_DESC(cq->rq, ntc);
 	desc_idx = ntc;
 
-	cq->rq_last_status = (enum ice_aq_err)le16_to_cpu(desc->retval);
+	rq_last_status = (enum ice_aq_err)le16_to_cpu(desc->retval);
 	flags = le16_to_cpu(desc->flags);
 	if (flags & ICE_AQ_FLAG_ERR) {
 		ret_code = ICE_ERR_AQ_ERROR;
 		ice_debug(hw, ICE_DBG_AQ_MSG, "Control Receive Queue Event 0x%04X received with error 0x%X\n",
-			  le16_to_cpu(desc->opcode),
-			  cq->rq_last_status);
+			  le16_to_cpu(desc->opcode), rq_last_status);
 	}
 	memcpy(&e->desc, desc, sizeof(e->desc));
 	datalen = le16_to_cpu(desc->datalen);
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index 77c2307d4fb8..fe75871e48ca 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -83,7 +83,6 @@ struct ice_rq_event_info {
 /* Control Queue information */
 struct ice_ctl_q_info {
 	enum ice_ctl_q qtype;
-	enum ice_aq_err rq_last_status;	/* last status on receive queue */
 	struct ice_ctl_q_ring rq;	/* receive queue */
 	struct ice_ctl_q_ring sq;	/* send queue */
 	u32 sq_cmd_timeout;		/* send queue cmd write back timeout */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
