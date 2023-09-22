Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 046EF7AB5C6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Sep 2023 18:21:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 969B761108;
	Fri, 22 Sep 2023 16:21:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 969B761108
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695399707;
	bh=GoHD3Z0Nzzjv6WHkfFhsBw7+Oyv4MR7sG9M1pk7Ecn0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=JQ1qt0G1O6LCftq/sD9nIIyspEXXcfG7zynXybmfoN/IKDp30DW9/J8PLtKgIoiF8
	 Y69jiERztAlW9qwgeCUOquxjEzqfFHre9X36sSk3ujHU687RPtBHTW7Y6FOEf8fyyJ
	 O8rMwFqU0AfxqulJHuvfDiDFZ+5jxF/GMhw9vGlWToy0ddLJcysIZ9F3hZs4+zvZsu
	 iPjG/lRQmtkCHIF37Tq4WusER2m9YB+HcfbLhv6TuJo15enpjxgu3SfHU62RUJkmHJ
	 PQQ1qyX8TXJuUTyvpnBkwSrow93vNCJB7Z0tj8XgdWtzH4HmYE53e9jocfnIjus6ml
	 FRZr9T5YkZulA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2wwvj4pU2MjA; Fri, 22 Sep 2023 16:21:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E456610F3;
	Fri, 22 Sep 2023 16:21:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E456610F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B95FC1BF369
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 16:21:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E248404C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 16:21:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E248404C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ooQEa0Lxzu7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Sep 2023 16:21:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9209440323
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Sep 2023 16:21:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9209440323
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="384707089"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="384707089"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 09:16:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="813116698"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="813116698"
Received: from kkazimiedevpc.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.102.224])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 09:16:53 -0700
From: Michal Kubiak <michal.kubiak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 22 Sep 2023 18:16:03 +0200
Message-Id: <20230922161603.3461104-1-michal.kubiak@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695399700; x=1726935700;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MVHsb1hX19s0UbaJH6I80TECq8Yl3GkfDPzwBHRL6Tw=;
 b=lWpbbi35yFWqE12C2ZMbO9H2qFuXzASCYAGSayzHwssy5Xt/TBzYkK4X
 vR4VjmEVAtq9qsPNnY+vDlOI1h0W6OghjU1tWdQm6SRPQ2FP9yDAnGDzK
 WdN27Vl7UuVIc1RBCPo47jIALWXBA6lpgri+GNgyfodL+BeH7O3CHHB3F
 xIOVnV6xMjMeagx7twYnaNZeOlrHlw+l4bb8NJ6nRzJwcOlq6PSFYNRZk
 GY8Ga5DP55XAA3IVR3sLpblEq1EesXXAqIhQ4fXLCo6fdjZlcT0hc8J3v
 agwORkzg7mWrb8WBRoir4mP4gtbnoJffrd8oC4zzU5IdM4onondMrxQNu
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lWpbbi35
Subject: [Intel-wired-lan] [PATCH iwl-next] idpf: set scheduling mode for
 completion queue
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
Cc: emil.s.tantilov@intel.com, larysa.zaremba@intel.com, netdev@vger.kernel.org,
 joshua.a.hay@intel.com, aleksander.lobakin@intel.com,
 Michal Kubiak <michal.kubiak@intel.com>, alan.brady@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The HW must be programmed differently for queue-based scheduling mode.
To program the completion queue context correctly, the control plane
must know the scheduling mode not only for the Tx queue, but also for
the completion queue.
Unfortunately, currently the driver sets the scheduling mode only for
the Tx queues.

Propagate the scheduling mode data for the completion queue as
well when sending the queue configuration messages.

Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c     | 10 ++++++++--
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c |  8 +++++++-
 2 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 6fa79898c42c..58c5412d3173 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1160,6 +1160,7 @@ static void idpf_rxq_set_descids(struct idpf_vport *vport, struct idpf_queue *q)
  */
 static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 {
+	bool flow_sch_en;
 	int err, i;
 
 	vport->txq_grps = kcalloc(vport->num_txq_grp,
@@ -1167,6 +1168,9 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 	if (!vport->txq_grps)
 		return -ENOMEM;
 
+	flow_sch_en = !idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
+				       VIRTCHNL2_CAP_SPLITQ_QSCHED);
+
 	for (i = 0; i < vport->num_txq_grp; i++) {
 		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
 		struct idpf_adapter *adapter = vport->adapter;
@@ -1195,8 +1199,7 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 			q->txq_grp = tx_qgrp;
 			hash_init(q->sched_buf_hash);
 
-			if (!idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS,
-					     VIRTCHNL2_CAP_SPLITQ_QSCHED))
+			if (flow_sch_en)
 				set_bit(__IDPF_Q_FLOW_SCH_EN, q->flags);
 		}
 
@@ -1215,6 +1218,9 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 		tx_qgrp->complq->desc_count = vport->complq_desc_count;
 		tx_qgrp->complq->vport = vport;
 		tx_qgrp->complq->txq_grp = tx_qgrp;
+
+		if (flow_sch_en)
+			__set_bit(__IDPF_Q_FLOW_SCH_EN, tx_qgrp->complq->flags);
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 9bc85b2f1709..e276b5360c2e 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1473,7 +1473,7 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 	/* Populate the queue info buffer with all queue context info */
 	for (i = 0; i < vport->num_txq_grp; i++) {
 		struct idpf_txq_group *tx_qgrp = &vport->txq_grps[i];
-		int j;
+		int j, sched_mode;
 
 		for (j = 0; j < tx_qgrp->num_txq; j++, k++) {
 			qi[k].queue_id =
@@ -1514,6 +1514,12 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 		qi[k].ring_len = cpu_to_le16(tx_qgrp->complq->desc_count);
 		qi[k].dma_ring_addr = cpu_to_le64(tx_qgrp->complq->dma);
 
+		if (test_bit(__IDPF_Q_FLOW_SCH_EN, tx_qgrp->complq->flags))
+			sched_mode = VIRTCHNL2_TXQ_SCHED_MODE_FLOW;
+		else
+			sched_mode = VIRTCHNL2_TXQ_SCHED_MODE_QUEUE;
+		qi[k].sched_mode = cpu_to_le16(sched_mode);
+
 		k++;
 	}
 
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
