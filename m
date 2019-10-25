Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D61E56D9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Oct 2019 01:05:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FC798846E;
	Fri, 25 Oct 2019 23:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 33b6AxonWcym; Fri, 25 Oct 2019 23:05:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6894488466;
	Fri, 25 Oct 2019 23:05:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22C391BF333
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 23:05:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1E22C86B93
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 23:05:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IrJbGMIXl08Z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Oct 2019 23:05:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8F44A86B8D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Oct 2019 23:05:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:05:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="210868750"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga002.jf.intel.com with ESMTP; 25 Oct 2019 16:05:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 25 Oct 2019 07:34:41 -0700
Message-Id: <20191025143441.50151-15-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025143441.50151-1-anthony.l.nguyen@intel.com>
References: <20191025143441.50151-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S32 15/15] ice: print opcode when printing
 controlq errors
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

From: Jacob Keller <jacob.e.keller@intel.com>

To help aid in debugging, display the command opcode in debug messages
that print an error code. This makes it easier to see what command
failed if only ICE_DBG_AQ_MSG is enabled.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_controlq.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index 947728aada46..dd946866d7b8 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -1017,7 +1017,8 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 		retval = le16_to_cpu(desc->retval);
 		if (retval) {
 			ice_debug(hw, ICE_DBG_AQ_MSG,
-				  "Control Send Queue command completed with error 0x%x\n",
+				  "Control Send Queue command 0x%04X completed with error 0x%X\n",
+				  le16_to_cpu(desc->opcode),
 				  retval);
 
 			/* strip off FW internal code */
@@ -1121,7 +1122,8 @@ ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	if (flags & ICE_AQ_FLAG_ERR) {
 		ret_code = ICE_ERR_AQ_ERROR;
 		ice_debug(hw, ICE_DBG_AQ_MSG,
-			  "Control Receive Queue Event received with error 0x%x\n",
+			  "Control Receive Queue Event 0x%04X received with error 0x%X\n",
+			  le16_to_cpu(desc->opcode),
 			  cq->rq_last_status);
 	}
 	memcpy(&e->desc, desc, sizeof(e->desc));
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
