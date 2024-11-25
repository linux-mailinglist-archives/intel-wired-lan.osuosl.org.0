Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C29C9D8F50
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2024 00:52:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3E3240337;
	Mon, 25 Nov 2024 23:51:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AFvSoxJq9P1O; Mon, 25 Nov 2024 23:51:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DFB5A40574
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732578719;
	bh=WC0OjeZ6u3wctyAh97d/czMZgYgw9iYNQyLEVxw3DeM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CYIIxcYmVoQ8h0zuUzSQNrD4xzoYA8QqAC6h7IkDlEJOGFaDsbb8GEVaCZQSsOAjx
	 BxOA7F1s0R+yPS3hYlBoSgpsLn7tMguiBxQt1ukSLY4y1sMfKtcmncNlo3x9SkZ7or
	 xdT0laocMTOHkPYukoKf7lSFwFnAh+turdiE/6WkozAAm3K5gaHo6RcS8pHWBAPn/o
	 uwWptUb/rxK2YQoH/Blr51ahxbBWEOac/SS8gzCbs7pdcTHN3iAp1R5eU7aF1GKIuE
	 oeCY2WhRuer+4oMoz17LXS//2E7umnPiDNucw8ZXmHzPRTiRK8PBMtBTCtmHLrfCwq
	 F3Aw0oUyrw1GQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFB5A40574;
	Mon, 25 Nov 2024 23:51:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E4C44961
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 23:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F5DD400F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 23:51:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JpRPisfWh1WG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Nov 2024 23:51:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ED4084011B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED4084011B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ED4084011B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2024 23:51:53 +0000 (UTC)
X-CSE-ConnectionGUID: 3wmhRW5WTBSolwYOKG7Zow==
X-CSE-MsgGUID: +8GuPZo6TeSKkaIzQDqN7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="44108300"
X-IronPort-AV: E=Sophos;i="6.12,184,1728975600"; d="scan'208";a="44108300"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 15:51:53 -0800
X-CSE-ConnectionGUID: Mm8ohnSfRKKePUGUyfe13g==
X-CSE-MsgGUID: gOhpcJkcQhiHzuofj0uFbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,184,1728975600"; d="scan'208";a="92239631"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.13])
 by orviesa008.jf.intel.com with ESMTP; 25 Nov 2024 15:51:53 -0800
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslaw.kitszel@intel.com, michal.kubiak@intel.com,
 aleksander.lobakin@intel.com, madhu.chittim@intel.com,
 netdev@vger.kernel.org, Joshua Hay <joshua.a.hay@intel.com>
Date: Mon, 25 Nov 2024 15:58:55 -0800
Message-Id: <20241125235855.64850-3-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241125235855.64850-1-joshua.a.hay@intel.com>
References: <20241125235855.64850-1-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732578714; x=1764114714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oKmrbFBW91xqVYvbebB/vpZoCPgp9Bu1WvEqBD4XIfA=;
 b=hht2hV30sHHLJT39mlYFwWIkYNZnwvQACI5wdk+bfJgoopMhVBVFCsA6
 eE6rnrgIPtAfJx5a8F+TbVb2fKc7q5DnUELZp7GAoRUttdPR9G5JjFI/0
 ShY5eQdiy/70IdzmA9dXZE80EqJogy5Yp/JaU7vbsCAV5rZlhrJl0rzvg
 GpvymuNAOlxuSnHCiYeOkyjFoUHahjUcyPvGqRpjpuyqlFPGJ18CSxFN6
 64KTILz2IJ+ICmTQqi49YOD7OsBlFZmTzLWu1q456slvd7oc25r2pySIp
 u5aEtrHHFH4giB2WYE4NU7/GbtoDZ3SsDhT/OS6sJBuZCBGXbHUfzwsjn
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hht2hV30
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: trigger SW interrupt
 when exiting wb_on_itr mode
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There is a race condition between exiting wb_on_itr and completion write
backs. For example, we are in wb_on_itr mode and a Tx completion is
generated by HW, ready to be written back, as we are re-enabling
interrupts:

	HW                      SW
	|                       |
	|			| idpf_tx_splitq_clean_all
	|                       | napi_complete_done
	|			|
	| tx_completion_wb 	| idpf_vport_intr_update_itr_ena_irq

That tx_completion_wb happens before the vector is fully re-enabled.
Continuing with this example, it is a UDP stream and the
tx_completion_wb is the last one in the flow (there are no rx packets).
Because the HW generated the completion before the interrupt is fully
enabled, the HW will not fire the interrupt once the timer expires and
the write back will not happen. NAPI poll won't be called.  We have
indicated we're back in interrupt mode but nothing else will trigger the
interrupt. Therefore, the completion goes unprocessed, triggering a Tx
timeout.

To mitigate this, fire a SW triggered interrupt upon exiting wb_on_itr.
This interrupt will catch the rogue completion and avoid the timeout.
Add logic to set the appropriate bits in the vector's dyn_ctl register.

Fixes: 9c4a27da0ecc ("idpf: enable WB_ON_ITR")
Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 30 ++++++++++++++-------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index a8989dd98272..9558b90469c8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3604,21 +3604,32 @@ static void idpf_vport_intr_dis_irq_all(struct idpf_vport *vport)
 /**
  * idpf_vport_intr_buildreg_itr - Enable default interrupt generation settings
  * @q_vector: pointer to q_vector
- * @type: itr index
- * @itr: itr value
  */
-static u32 idpf_vport_intr_buildreg_itr(struct idpf_q_vector *q_vector,
-					const int type, u16 itr)
+static u32 idpf_vport_intr_buildreg_itr(struct idpf_q_vector *q_vector)
 {
-	u32 itr_val;
+	u32 itr_val = q_vector->intr_reg.dyn_ctl_intena_m;
+	int type = IDPF_NO_ITR_UPDATE_IDX;
+	u16 itr = 0;
+
+	if (q_vector->wb_on_itr) {
+		/*
+		 * Trigger a software interrupt when exiting wb_on_itr, to make
+		 * sure we catch any pending write backs that might have been
+		 * missed due to interrupt state transition.
+		 */
+
+		itr_val |= q_vector->intr_reg.dyn_ctl_swint_trig_m |
+			   q_vector->intr_reg.dyn_ctl_sw_itridx_ena_m;
+		type = IDPF_SW_ITR_UPDATE_IDX;
+		itr = IDPF_ITR_20K;
+	}
 
 	itr &= IDPF_ITR_MASK;
 	/* Don't clear PBA because that can cause lost interrupts that
 	 * came in while we were cleaning/polling
 	 */
-	itr_val = q_vector->intr_reg.dyn_ctl_intena_m |
-		  (type << q_vector->intr_reg.dyn_ctl_itridx_s) |
-		  (itr << (q_vector->intr_reg.dyn_ctl_intrvl_s - 1));
+	itr_val |= (type << q_vector->intr_reg.dyn_ctl_itridx_s) |
+		   (itr << (q_vector->intr_reg.dyn_ctl_intrvl_s - 1));
 
 	return itr_val;
 }
@@ -3716,9 +3727,8 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
 	/* net_dim() updates ITR out-of-band using a work item */
 	idpf_net_dim(q_vector);
 
+	intval = idpf_vport_intr_buildreg_itr(q_vector);
 	q_vector->wb_on_itr = false;
-	intval = idpf_vport_intr_buildreg_itr(q_vector,
-					      IDPF_NO_ITR_UPDATE_IDX, 0);
 
 	writel(intval, q_vector->intr_reg.dyn_ctl);
 }
-- 
2.39.2

