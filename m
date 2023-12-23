Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 528F881D180
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 04:00:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D51BB42DBE;
	Sat, 23 Dec 2023 03:00:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D51BB42DBE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300427;
	bh=szmn/FakjyFOiMnizBiHWvNlbxdeOLA4nKHCNj7i4K4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1qQuPDrANGmUKcLqWQ6a5mQLb+6y3nj5bAkVUPn/fFPBndgrKyn4MwPXYR5Q3uFb8
	 1inRGLaqB2INeP9ADqbBq4ZaiIyjMWT5qlobxAfWN00XKKIYky42Jy8IDzi3kUKf7D
	 RGJhfeKi1FuIeu6h/lR55UoJm38lkgmek2jQSTK6HcYN4+WKqfNHEwEYoCa9UPFxZ7
	 +QwskoUwFRYqVT4e5b5VCZw9y0LRpAdmY6wWNl8SLXvsEAzmYaJELvDKSqen5qMK7j
	 5ByfdQLuJ0Xn1ZgqtQrf+pOHxuFZaKut6ka1/N0HvS53BdRUW31CCWdgUgTigjw1Ev
	 qxY5i7ze+emnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KpKZx_zBkqZp; Sat, 23 Dec 2023 03:00:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90F0740126;
	Sat, 23 Dec 2023 03:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90F0740126
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 86CAE1BF255
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0906142D9B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0906142D9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jLB_gE8Yy7V3 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:59:53 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30EF9416C2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30EF9416C2
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386611060"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386611060"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:59:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537655"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:59:50 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:48 +0100
Message-ID: <20231223025554.2316836-29-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300393; x=1734836393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iIBWKyIWEBkirTUyFRzlT8kDZ54sFD3qq2HToLFVqMI=;
 b=Z7U6cbn73RX3JgTSbztC91KjkplTW/3AIFA3gepFZNeXLjZZKdMTduGU
 hmqgCLQksrK6QPCnpkUnhd65jZwoCSEf0n1+mAFvg3mA6MiEePWXRILf1
 zmcPkKCeFYrn6P2NFQ2VAaCpJ+GyIQqRiAspLujdyQbtdg89ObayxBM6T
 suL0snSROuhvBN2GkeGfRe05Q9r2alR6oVks4+mkKE1KATZ44QMVYstkG
 MPT1Bi7kQUfDQ8r4akxTxJWE8oFRyMeM+6lnroGNHLWAz3IPhhNcjIgIh
 Pk60YPK7RHu6gIuyUDlXUCdfB1nZkhKDGSKYLsFnYNx3L5foufAb7t0IA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z7U6cbn7
Subject: [Intel-wired-lan] [PATCH RFC net-next 28/34] idpf: add relative
 queue id member to idpf_queue
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Kubiak <michal.kubiak@intel.com>

Relative queue id is one of the required fields of the Tx queue
description in VC 2.0 for splitq mode.
In the current VC implementation all Tx queues are configured
together, so the relative queue id (the index of the Tx queue
in the queue group) can be computed on the fly.

However, such a solution is not flexible because it is not easy to
configure a single Tx queue. So, instead, introduce a new structure
member in 'idpf_queue' dedicated to storing the relative queue id.
Then send that value over the VC.

This patch is the first step in making the existing VC API more flexible
to allow configuration of single queues.

Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c     | 1 +
 drivers/net/ethernet/intel/idpf/idpf_txrx.h     | 2 ++
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 3 ++-
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 99c9b889507b..3dc21731df2f 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -1276,6 +1276,7 @@ static int idpf_txq_group_alloc(struct idpf_vport *vport, u16 num_txq)
 			q->tx_min_pkt_len = idpf_get_min_tx_pkt_len(adapter);
 			q->vport = vport;
 			q->txq_grp = tx_qgrp;
+			q->relative_q_id = j;
 
 			if (!flow_sch_en)
 				continue;
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
index fa21feddd204..f32d854fe850 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
@@ -665,6 +665,8 @@ struct idpf_queue {
 
 	dma_addr_t dma;
 	unsigned int size;
+
+	u32 relative_q_id;
 } ____cacheline_internodealigned_in_smp;
 
 /**
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index 59b8bbebead7..49a96af52343 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1491,7 +1491,8 @@ static int idpf_send_config_tx_queues_msg(struct idpf_vport *vport)
 
 				qi[k].tx_compl_queue_id =
 					cpu_to_le16(tx_qgrp->complq->q_id);
-				qi[k].relative_queue_id = cpu_to_le16(j);
+				qi[k].relative_queue_id =
+					cpu_to_le16(q->relative_q_id);
 
 				if (test_bit(__IDPF_Q_FLOW_SCH_EN, q->flags))
 					qi[k].sched_mode =
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
