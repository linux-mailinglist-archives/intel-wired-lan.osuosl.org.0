Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D95B731DB8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 18:28:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E20183FA1;
	Thu, 15 Jun 2023 16:28:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E20183FA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686846486;
	bh=EuG1qNaG+5r4R22QMX03YOdyTWmNzmw40uMWrfPsMyY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ITXmXguDumj2v21/e+ecetsIWoCnaDaUoUC/XsiRXSRli/9/TNIfP1Ls6W2pI/PEi
	 x/bN50vZKpdO4L0sc1+34nF/Dx6wLtxaYLpfOLkAxjBcg6gZvLeYJJNfwKqAR0PFQr
	 bQ2tIPjfJ3E8D2nqSbxc9o4tESqvu0mXl6lGvqpJEipKm9hpCifsUBQgp8GxHsMgQ9
	 dhM+3ER6C9QI2EWWX2x52OBr6uBXBrVK7cCx93cOVlWOCAxUjnxSCVQntjL/hWAJno
	 X7hwNEPBqiwLfk30QmcUG9OOKBngGoGtPJ26kVhkIoM5aeE143DfivuJ6B+PhiXNPV
	 n7EEj0w/Sy64w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BQyrwD1QMr44; Thu, 15 Jun 2023 16:28:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1860683F36;
	Thu, 15 Jun 2023 16:28:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1860683F36
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 582D71BF23B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9CBA6400DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CBA6400DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mETzFfW3s7PU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 16:27:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E2E194194E
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E2E194194E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 16:27:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="445336172"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="445336172"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 09:27:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="712513712"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="712513712"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 09:27:52 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Jun 2023 09:29:23 -0700
Message-Id: <20230615162932.762756-2-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615162932.762756-1-david.m.ertman@intel.com>
References: <20230615162932.762756-1-david.m.ertman@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686846474; x=1718382474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TbrE/BLnSYljGvOSSpo3ot/g4MKOgNqph8ntzp4MgYw=;
 b=ZFI6IDeVg9+F83q0LMy4Eso1CJxrpSc78n5Tq9kp9Rpa+bQGlxZHiTyZ
 l04zLjM0AfHnPPUGSvsCiKvUoIXiLMgBC1yL3rJLo+l4dt7jY96miIXnF
 ZbXzwsdlSENKuXnpZp0ioJljHkTjYEm/I4FRok9DuvhxGNRiKjzz+O5EH
 DmYVIjHzzyQhAF9h4rdhFlgVv/t7o5oGaw3eEwXvbMTNQrefFmKLCGzf8
 r5w3AKhSLdh5PVZxwvPD/mlKZVqDfVKwzQtnN1xgDLc5mi9+6dZTGYq9M
 bPRqFZlfxSa+/eFpKs+X9eOaRnBorYTMMf6V8QDNNbLIz1cKs7xFzXzcQ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZFI6IDeV
Subject: [Intel-wired-lan] [PATCH iwl-next v5 01/10] ice: Correctly
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
Cc: netdev@vger.kernel.org, bcreeley@amd.com, daniel.machon@microchip.com,
 simon.horman@corigine.com
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

Reviewed-by: Simon Horman <simon.horman@corigine.com>
Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c |  1 +
 drivers/net/ethernet/intel/ice/ice_sched.c  | 23 ++++++++++++++++-----
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index deb55b6d516a..09e2e38d538e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4673,6 +4673,7 @@ ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
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
