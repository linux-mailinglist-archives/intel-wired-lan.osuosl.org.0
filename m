Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB24AE6CAD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jun 2025 18:46:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7215260E80;
	Tue, 24 Jun 2025 16:45:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rit33078eYjc; Tue, 24 Jun 2025 16:45:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDD6361232
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750783553;
	bh=VPxmMtWKKLU0BwI/Zrx/YNSE7FtwMcSBllj44xlAoow=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lV7mWeJMkom/ZKvMyiicqCUqn4l75CT6FpxKw9wA4VIDppWwV6VvLPTJTB8SZBqxz
	 7LGeMJjBdKWCUsHI7q1hTIRUcNvdS6dZFuD5xOrOZvC+cin5NEXpmdfrB2P/H5fA1V
	 zU5wOJc8He+mhdVTK+R8PqIu2h3QmdNDxdLOMoAF+fUYjKWEtA2bkrCkHMH56fHnHS
	 FGSRPCKpBQ8EpuFaJD/EfqOhVs0CXjNEH6YhsPHqxbD8vf4Hzw1wMzZpaDxQJNQwwy
	 nWo2a4dZ6aKcuHwpP/+Rl7odsM4zYBY6m7QEaOxqN4obPcwYImjoGRvbs4iiDF10gi
	 r4FA2Cnw9AUNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDD6361232;
	Tue, 24 Jun 2025 16:45:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8BA86154
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8926A8143C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:45:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1B1oN1ipY3gj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jun 2025 16:45:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D6BAA813EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6BAA813EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D6BAA813EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jun 2025 16:45:51 +0000 (UTC)
X-CSE-ConnectionGUID: bEYaMMegT/qB052a6fn1Hw==
X-CSE-MsgGUID: tuZk8whLTmaGdiVk35PXpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="64091164"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="64091164"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 09:45:51 -0700
X-CSE-ConnectionGUID: dBKYL44ORJecNuoa5Jk+aA==
X-CSE-MsgGUID: o+A2FWd8RiKr6GPAv3Gveg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="152669457"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 24 Jun 2025 09:45:48 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 24 Jun 2025 18:45:06 +0200
Message-ID: <20250624164515.2663137-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
References: <20250624164515.2663137-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750783552; x=1782319552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8GXRsL910im1YrzMgLV7ZO5gpu6dsmjOOmoyWXf79aY=;
 b=g9IV+bw7BwKv0AgzmFEDyjzzAYCUg4sXGiKkuZWbfagCItCiuGQgSAmo
 y8us6eYiIIL/KrWiE2+ykz/wy1gxwjWgrSk6/ioNGdxXhxYuoZW66R0Cl
 /IzXsfErm0Q98rDMflL1VfjjgHpdob7NlN493QLfF8CCOfJ7p+tWFysqe
 iyNZP37HEBTbA/+OFp2pvPuj9SNlNkO3xyDBj4Ca5WJEyRwcaDAcwKaKo
 ATaq21+uE0s2VPPHacrAwfHimP6JseiCO0lmv8Sb581r1yg8WtluBz0to
 p7AfcIfMBnxachMa62tnvcKY/CeUfw6U9ANGJGn15OLJXbJQXFLdfehAT
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g9IV+bw7
Subject: [Intel-wired-lan] [PATCH iwl-next v2 03/12] idpf: link NAPIs to
 queues
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

Add the missing linking of NAPIs to netdev queues when enabling
interrupt vectors in order to support NAPI configuration and
interfaces requiring get_rx_queue()->napi to be set (like XSk
busy polling).
This additional RTNL locking in idpf_vport_dealloc() is needed to
avoid WARN splats on rmmod, which happens outside of RTNL context,
but calls idpf_vport_stop() which assumes RTNL protection.

Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com> # helper
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c  |  2 ++
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 17 +++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 4eb20ec2accb..7cef59177c4b 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -972,8 +972,10 @@ static void idpf_vport_dealloc(struct idpf_vport *vport)
 	struct idpf_adapter *adapter = vport->adapter;
 	unsigned int i = vport->idx;
 
+	rtnl_lock();
 	idpf_deinit_mac_addr(vport);
 	idpf_vport_stop(vport);
+	rtnl_unlock();
 
 	if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
 		idpf_decfg_netdev(vport);
diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 875ed4054268..8128bd33ef45 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3698,6 +3698,20 @@ void idpf_vport_intr_rel(struct idpf_vport *vport)
 	vport->q_vectors = NULL;
 }
 
+static void idpf_q_vector_set_napi(struct idpf_q_vector *q_vector, bool link)
+{
+	struct napi_struct *napi = link ? &q_vector->napi : NULL;
+	struct net_device *dev = q_vector->vport->netdev;
+
+	for (u32 i = 0; i < q_vector->num_rxq; i++)
+		netif_queue_set_napi(dev, q_vector->rx[i]->idx,
+				     NETDEV_QUEUE_TYPE_RX, napi);
+
+	for (u32 i = 0; i < q_vector->num_txq; i++)
+		netif_queue_set_napi(dev, q_vector->tx[i]->idx,
+				     NETDEV_QUEUE_TYPE_TX, napi);
+}
+
 /**
  * idpf_vport_intr_rel_irq - Free the IRQ association with the OS
  * @vport: main vport structure
@@ -3718,6 +3732,7 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 		vidx = vport->q_vector_idxs[vector];
 		irq_num = adapter->msix_entries[vidx].vector;
 
+		idpf_q_vector_set_napi(q_vector, false);
 		kfree(free_irq(irq_num, q_vector));
 	}
 }
@@ -3905,6 +3920,8 @@ static int idpf_vport_intr_req_irq(struct idpf_vport *vport)
 				   "Request_irq failed, error: %d\n", err);
 			goto free_q_irqs;
 		}
+
+		idpf_q_vector_set_napi(q_vector, true);
 	}
 
 	return 0;
-- 
2.49.0

