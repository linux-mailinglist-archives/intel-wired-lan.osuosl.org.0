Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1727286D4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 20:05:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 75FD261532;
	Thu,  8 Jun 2023 18:05:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75FD261532
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686247534;
	bh=MeSLhIR+tZdsdykyCa6jlTGbTX4yKvREZ0OHwMNSSpQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fSodYo6bu44bobTltrNs7PpVnciDCiNGHBjGK89YDv8vOmpRElpC4lO2EubGCsi1M
	 uh9X/Gfv6Vvl4yx6MzfLTLobB5rhJAjZ9wrm09MTViMGOnRcVqSREh9Jlod5CARPSX
	 UYXv0SWA/4PZFUzH5dtCpXeo+WXJioCEHpBR6CBqjhNrtleS+McU6OrUm4IRbqrYyp
	 5WHJJjSinRjbXFxR6/wfugTznansljdXRBkXGYqpaN59lv1w+8C5wnLfAhElY6YVPe
	 32pMLtuxnV77ocGhBsWtci9Aotmgxg05PMkCWH/pa5UWLVdBXuPC5Aq1U4Awpg6IrO
	 +9MPmGQORglQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EeUor5ZxgDNn; Thu,  8 Jun 2023 18:05:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D09E611D7;
	Thu,  8 Jun 2023 18:05:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D09E611D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 274FE1BF3E1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:05:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5878B42072
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:05:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5878B42072
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QSRUCcAA4hid for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 18:05:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8B81442099
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8B81442099
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 18:05:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="385738702"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="385738702"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 11:04:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="775187921"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="775187921"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 11:04:36 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Jun 2023 11:06:09 -0700
Message-Id: <20230608180618.574171-2-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230608180618.574171-1-david.m.ertman@intel.com>
References: <20230608180618.574171-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686247503; x=1717783503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QkmJjuarimT/NDHZpAvvjJcxdjAd8T8HWu3JG/DFuzA=;
 b=kvacf3u2dFvKYwlsgzEjHOCZ1kW4LuESYdw0yMgLZPMD8tHDpK3kVQ0R
 d/m2DLllHqqhv5ACH8+BzY9Gm5t9oDYNGYWSSB/dtbz8GIAiFHMmURvdA
 2WomPH3e9CQk6zXRlvT2fo+msD5ianfwEOU3KxXnorZ7iGrI52d0KiCeN
 hCfLRQd2zN41KjDhw6cLr/AQhSc3VIf6gCHNYLfqxfa2ntZXpmSApIwGh
 6rgQVeoUB2FvXo/yJEJtN3A1OZfQJMBdgyw6SuUYxvNBwGYOAjW40kcAy
 sC0VAsLGvw8m/7cg6sRiCoZNlexroaV6gHoALZk5sBH184PwZl/YQB/u2
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kvacf3u2
Subject: [Intel-wired-lan] [PATCH iwl-next v3 01/10] ice: Correctly
 initialize queue context values
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
Cc: netdev@vger.kernel.org, daniel.machon@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_alloc_lan_q_ctx function allocates the queue context array for a
given traffic class. This function uses devm_kcalloc which will
zero-allocate the structure. Thus, prior to any queue being setup by
ice_ena_vsi_txq, the q_ctx structure will have a q_handle of 0 and a q_teid
of 0. These are potentially valid values.

Modify the ice_alloc_lan_q_ctx function to initialize every member of the
q_ctx array to have invalid values. Modify ice_dis_vsi_txq to ensure that
it assigns q_teid to an invalid value when it assigns q_handle to the
invalid value as well.

This will allow other code to check whether the queue context is currently
valid before operating on it.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  1 +
 drivers/net/ethernet/intel/ice/ice_sched.c  | 23 ++++++++++++++++-----
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 6acb40f3c202..ebdaf8dc679c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4700,6 +4700,7 @@ ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
 			break;
 		ice_free_sched_node(pi, node);
 		q_ctx->q_handle = ICE_INVAL_Q_HANDLE;
+		q_ctx->q_teid = ICE_INVAL_TEID;
 	}
 	mutex_unlock(&pi->sched_lock);
 	kfree(qg_list);
diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index b664d60fd037..79a8972873f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -569,18 +569,24 @@ ice_alloc_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
 {
 	struct ice_vsi_ctx *vsi_ctx;
 	struct ice_q_ctx *q_ctx;
+	u16 idx;
 
 	vsi_ctx = ice_get_vsi_ctx(hw, vsi_handle);
 	if (!vsi_ctx)
 		return -EINVAL;
 	/* allocate LAN queue contexts */
 	if (!vsi_ctx->lan_q_ctx[tc]) {
-		vsi_ctx->lan_q_ctx[tc] = devm_kcalloc(ice_hw_to_dev(hw),
-						      new_numqs,
-						      sizeof(*q_ctx),
-						      GFP_KERNEL);
-		if (!vsi_ctx->lan_q_ctx[tc])
+		q_ctx = devm_kcalloc(ice_hw_to_dev(hw), new_numqs,
+				     sizeof(*q_ctx), GFP_KERNEL);
+		if (!q_ctx)
 			return -ENOMEM;
+
+		for (idx = 0; idx < new_numqs; idx++) {
+			q_ctx[idx].q_handle = ICE_INVAL_Q_HANDLE;
+			q_ctx[idx].q_teid = ICE_INVAL_TEID;
+		}
+
+		vsi_ctx->lan_q_ctx[tc] = q_ctx;
 		vsi_ctx->num_lan_q_entries[tc] = new_numqs;
 		return 0;
 	}
@@ -592,9 +598,16 @@ ice_alloc_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
 				     sizeof(*q_ctx), GFP_KERNEL);
 		if (!q_ctx)
 			return -ENOMEM;
+
 		memcpy(q_ctx, vsi_ctx->lan_q_ctx[tc],
 		       prev_num * sizeof(*q_ctx));
 		devm_kfree(ice_hw_to_dev(hw), vsi_ctx->lan_q_ctx[tc]);
+
+		for (idx = prev_num; idx < new_numqs; idx++) {
+			q_ctx[idx].q_handle = ICE_INVAL_Q_HANDLE;
+			q_ctx[idx].q_teid = ICE_INVAL_TEID;
+		}
+
 		vsi_ctx->lan_q_ctx[tc] = q_ctx;
 		vsi_ctx->num_lan_q_entries[tc] = new_numqs;
 	}
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
