Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFD7489989
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jan 2022 14:12:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4187C40603;
	Mon, 10 Jan 2022 13:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zy7ra5iL3w71; Mon, 10 Jan 2022 13:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B2B4405F5;
	Mon, 10 Jan 2022 13:12:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5FC51BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89548405F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id keYodSMSwWSs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jan 2022 13:11:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E92B7405F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641820314; x=1673356314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1+Pc/yvMxWbIRSqKOiJ58AYDjtimVHdjfTb3FdSHo2c=;
 b=OP+myZYBNvdFyBx4M0IvF3pkil+4T1UXyrPTin86TX8OWw92PQ/fCHt4
 g1m5RpfqFL/vuL1w88xvgZD8gno122AipKjcpYhQovS0/Q9tmJJJpAIxV
 WUOZCwEMlE7bd25bPpwS6kzxF06TTeJk5X6lzMRVHTvBpDGCh3/CUDlIN
 hsxxoFWTRiyYYuSsk2ecmVmWL2rsrSgJBqmnlye2YRZr5tLUUF1oiIB+u
 4Y8m8Ye3vfQYqJzhha+4vW890MiGQ73GfCoPAQnhSYm/Tn+j3UJzmnb26
 UXZ/DCwzYgI/Y25218miBHg9Cc0AuYpj0pX0qklBFwzet0goYcTHV+KIP w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="240771023"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="240771023"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 05:11:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="575811998"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2022 05:11:53 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jan 2022 13:11:42 +0000
Message-Id: <20220110131142.8481-5-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220110131142.8481-1-jedrzej.jagielski@intel.com>
References: <20220110131142.8481-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 4/4] i40e: Add sending
 commands in atomic context
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
Cc: Witold Fijalkowski <witoldx.fijalkowski@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change functions:
- i40e_aq_add_macvlan
- i40e_aq_remove_macvlan
- i40e_aq_delete_element
- i40e_aq_add_vsi
- i40e_aq_update_vsi_params
to explicitly use i40e_asq_send_command_atomic(..., true)
instead of i40e_asq_send_command, as they use mutexes and do some
work in an atomic context.
Without this change setting vlan via netdev will fail with
call trace cased by bug "BUG: scheduling while atomic".

Signed-off-by: Witold Fijalkowski <witoldx.fijalkowski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 21 +++++++++++--------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index a15b09b39979..214400623dd9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1899,8 +1899,9 @@ i40e_status i40e_aq_add_vsi(struct i40e_hw *hw,
 
 	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
 
-	status = i40e_asq_send_command(hw, &desc, &vsi_ctx->info,
-				    sizeof(vsi_ctx->info), cmd_details);
+	status = i40e_asq_send_command_atomic(hw, &desc, &vsi_ctx->info,
+					      sizeof(vsi_ctx->info),
+					      cmd_details, true);
 
 	if (status)
 		goto aq_add_vsi_exit;
@@ -2287,8 +2288,9 @@ i40e_status i40e_aq_update_vsi_params(struct i40e_hw *hw,
 
 	desc.flags |= cpu_to_le16((u16)(I40E_AQ_FLAG_BUF | I40E_AQ_FLAG_RD));
 
-	status = i40e_asq_send_command(hw, &desc, &vsi_ctx->info,
-				    sizeof(vsi_ctx->info), cmd_details);
+	status = i40e_asq_send_command_atomic(hw, &desc, &vsi_ctx->info,
+					      sizeof(vsi_ctx->info),
+					      cmd_details, true);
 
 	vsi_ctx->vsis_allocated = le16_to_cpu(resp->vsi_used);
 	vsi_ctx->vsis_unallocated = le16_to_cpu(resp->vsi_free);
@@ -2695,8 +2697,8 @@ i40e_aq_add_macvlan(struct i40e_hw *hw, u16 seid,
 
 	buf_size = i40e_prepare_add_macvlan(mv_list, &desc, count, seid);
 
-	status = i40e_asq_send_command(hw, &desc, mv_list, buf_size,
-				       cmd_details);
+	status = i40e_asq_send_command_atomic(hw, &desc, mv_list, buf_size,
+					      cmd_details, true);
 
 	return status;
 }
@@ -2773,8 +2775,8 @@ i40e_status i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 seid,
 	if (buf_size > I40E_AQ_LARGE_BUF)
 		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
 
-	status = i40e_asq_send_command(hw, &desc, mv_list, buf_size,
-				       cmd_details);
+	status = i40e_asq_send_command_atomic(hw, &desc, mv_list, buf_size,
+					      cmd_details, true);
 
 	return status;
 }
@@ -3975,7 +3977,8 @@ i40e_status i40e_aq_delete_element(struct i40e_hw *hw, u16 seid,
 
 	cmd->seid = cpu_to_le16(seid);
 
-	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
+	status = i40e_asq_send_command_atomic(hw, &desc, NULL, 0,
+					      cmd_details, true);
 
 	return status;
 }
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
