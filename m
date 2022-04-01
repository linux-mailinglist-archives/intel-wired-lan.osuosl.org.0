Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A354EEFA6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 16:28:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36F1C41EB4;
	Fri,  1 Apr 2022 14:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PwpvK92tmCX4; Fri,  1 Apr 2022 14:27:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D380B41EAE;
	Fri,  1 Apr 2022 14:27:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 974B41BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 14:27:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 811C741EAE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 14:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W0kpYXOZEvoP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 14:27:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31B7841EA7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 14:27:51 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 08EA661C4A;
 Fri,  1 Apr 2022 14:27:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D93D8C36AE7;
 Fri,  1 Apr 2022 14:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648823269;
 bh=QsEnBO8My2ETVS8CVQvoiz31u6hCY6YY0ugyJqmKCUs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eoOqwg9CwdGTfoshtAKgCUs4sT5p3BJbYMz/JDeJTdwPXjgopIOY/n+FLqT+SlyMd
 eLEIyNk1ZDq7FqdP3nzo32P/wGo1lvlRzuI+rOCVBuiPotCDEhlIeGiDllaFCgUu3Z
 6erRh8tNuNLKdjqouJ8Pgzck5Djqgh5UaFjXHsXVUu/3u7LBmM3ed8kPdwnYyss6ow
 tA2S1gKW6Uo2rc9jc/1ve24VgG+t/ZGATBfWRM9m4xVg5d6FSdiHVs/97oZDrG1dGs
 BZp1QaEZODjX9oXh2dHgJK9gGg87/1MxIJ56L7L7kmpCTQVfJqwivBfDqweOpy47sa
 tce+AtxRMsEPg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri,  1 Apr 2022 10:23:48 -0400
Message-Id: <20220401142536.1948161-41-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220401142536.1948161-1-sashal@kernel.org>
References: <20220401142536.1948161-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.17 041/149] i40e: Add sending
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
Cc: Sasha Levin <sashal@kernel.org>, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org,
 Witold Fijalkowski <witoldx.fijalkowski@intel.com>, netdev@vger.kernel.org,
 kuba@kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

[ Upstream commit 59b3d7350ff35c939b8e173eb2eecac80a5ee046 ]

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
Tested-by: Gurucharan G <gurucharanx.g@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 21 +++++++++++--------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 9ddeb015eb7e..e830987a8c6d 100644
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
@@ -2673,8 +2675,8 @@ i40e_status i40e_aq_add_macvlan(struct i40e_hw *hw, u16 seid,
 	if (buf_size > I40E_AQ_LARGE_BUF)
 		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
 
-	status = i40e_asq_send_command(hw, &desc, mv_list, buf_size,
-				       cmd_details);
+	status = i40e_asq_send_command_atomic(hw, &desc, mv_list, buf_size,
+					      cmd_details, true);
 
 	return status;
 }
@@ -2715,8 +2717,8 @@ i40e_status i40e_aq_remove_macvlan(struct i40e_hw *hw, u16 seid,
 	if (buf_size > I40E_AQ_LARGE_BUF)
 		desc.flags |= cpu_to_le16((u16)I40E_AQ_FLAG_LB);
 
-	status = i40e_asq_send_command(hw, &desc, mv_list, buf_size,
-				       cmd_details);
+	status = i40e_asq_send_command_atomic(hw, &desc, mv_list, buf_size,
+					      cmd_details, true);
 
 	return status;
 }
@@ -3868,7 +3870,8 @@ i40e_status i40e_aq_delete_element(struct i40e_hw *hw, u16 seid,
 
 	cmd->seid = cpu_to_le16(seid);
 
-	status = i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
+	status = i40e_asq_send_command_atomic(hw, &desc, NULL, 0,
+					      cmd_details, true);
 
 	return status;
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
