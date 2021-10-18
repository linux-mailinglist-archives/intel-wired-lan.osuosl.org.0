Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D796C431C89
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Oct 2021 15:41:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F933405F9;
	Mon, 18 Oct 2021 13:41:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MnkGHQFL8YGT; Mon, 18 Oct 2021 13:41:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DAB8405D0;
	Mon, 18 Oct 2021 13:41:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 180FD1BF3E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 05:45:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 12A316071B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 05:45:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AOJIqu8-ahtY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Oct 2021 05:45:18 +0000 (UTC)
X-Greylist: delayed 00:07:09 by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CEED60792
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Oct 2021 05:45:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="291645064"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="291645064"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2021 22:38:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="661234884"
Received: from unknown (HELO intel-73.bj.intel.com) ([10.238.154.73])
 by orsmga005.jf.intel.com with ESMTP; 17 Oct 2021 22:38:06 -0700
From: yanjun.zhu@linux.dev
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, yanjun.zhu@linux.dev
Date: Mon, 18 Oct 2021 09:17:13 -0400
Message-Id: <20211018131713.3478-1-yanjun.zhu@linux.dev>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Oct 2021 13:41:44 +0000
Subject: [Intel-wired-lan] [PATCH 1/1] ice: compact the file ice_nvm.c
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

From: Zhu Yanjun <yanjun.zhu@linux.dev>

The function ice_aq_nvm_update_empr is not used, so remove it.

Signed-off-by: Zhu Yanjun <yanjun.zhu@linux.dev>
---
 drivers/net/ethernet/intel/ice/ice_nvm.c | 16 ----------------
 drivers/net/ethernet/intel/ice/ice_nvm.h |  1 -
 2 files changed, 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
index fee37a5844cf..bad374bd7ab3 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.c
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
@@ -1106,22 +1106,6 @@ enum ice_status ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags)
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
 }
 
-/**
- * ice_aq_nvm_update_empr
- * @hw: pointer to the HW struct
- *
- * Update empr (0x0709). This command allows SW to
- * request an EMPR to activate new FW.
- */
-enum ice_status ice_aq_nvm_update_empr(struct ice_hw *hw)
-{
-	struct ice_aq_desc desc;
-
-	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_nvm_update_empr);
-
-	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
-}
-
 /* ice_nvm_set_pkg_data
  * @hw: pointer to the HW struct
  * @del_pkg_data_flag: If is set then the current pkg_data store by FW
diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
index c6f05f43d593..925225905491 100644
--- a/drivers/net/ethernet/intel/ice/ice_nvm.h
+++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
@@ -39,7 +39,6 @@ enum ice_status
 ice_aq_erase_nvm(struct ice_hw *hw, u16 module_typeid, struct ice_sq_cd *cd);
 enum ice_status ice_nvm_validate_checksum(struct ice_hw *hw);
 enum ice_status ice_nvm_write_activate(struct ice_hw *hw, u8 cmd_flags);
-enum ice_status ice_aq_nvm_update_empr(struct ice_hw *hw);
 enum ice_status
 ice_nvm_set_pkg_data(struct ice_hw *hw, bool del_pkg_data_flag, u8 *data,
 		     u16 length, struct ice_sq_cd *cd);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
