Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F294B81D15A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:58:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86C1642CE5;
	Sat, 23 Dec 2023 02:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86C1642CE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300308;
	bh=EvJvf5M2r3MbJNMq2F17BdmDd8ktpxBVCuDBLUFgkuk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V8BcWgPVXW77Aa3u+v8Y0mABBzpsrYmlNjLX95vZAk4uYINsks1s95OSvrwtI6hxr
	 7FUjxFPQ+nXggbM/I1BGhdrfH+uOuFlYsEKB6kX6mhtzuAWnIPUUV80xhfhp3yx+yU
	 hIYXqHVfnS81YbxslslkXaod3tKVRpVPcFszpgrfQ7JAQ2hNk9KvqxRCAjSX6qqwj9
	 lyP8WMiuyHTwgmT1hXe9HHp1o10RmJDs12vubK3PPiq398NCfHkuKCrA6k96gM11ye
	 ATT0apMl2JbfK7xx7ffy2esCiYr44+jHEgmUNZfsq1woBNIDRsmINxDp9MsOCLZ0xy
	 ywpjNPFG2sw7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VOx8pu3OVae0; Sat, 23 Dec 2023 02:58:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BBCB42032;
	Sat, 23 Dec 2023 02:58:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BBCB42032
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90B181BF99D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6982E6059D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6982E6059D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dnB6UHlzVjtL for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:58:15 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9F75860073
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:58:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F75860073
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610790"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610790"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:58:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537405"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:58:12 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:23 +0100
Message-ID: <20231223025554.2316836-4-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300295; x=1734836295;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uSYENsBIhPh3bIPzm6fju9Ktn483588qG7FmN6H9bU0=;
 b=hv9LU3pdJrUF9GJ7Vpoc0eDTaJkYLZpKCMzfqKP8Tb7OQ2iVi2z6B74e
 WhShbxHpQYBSsrHDB5+eCrlzLExO1GgJlqwJwfjmMs91Pg0jA2edcBzhg
 0QWPo4eVz6OMm2oqMtKjLJI3kfEedkN+q/q6p+FNngbxH5/K9WfdD1Bed
 nfvCdAW2FiidzA+VQPYeC1k5/9iWJczDQ3PK0DA0OCWGFYMhdlUdK5Rce
 kaClht9tJc/NJ40FiNTxS1BPB8HubS8v0ICOn+Gr25aMf9L9Esq7fU72F
 VXb/7jSvvW/MYHyLRFuwynpPtYzAYbtnmelXNl7K3CUd9vL68euj6lT0j
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hv9LU3pd
Subject: [Intel-wired-lan] [PATCH RFC net-next 03/34] idpf: remove legacy
 Page Pool Ethtool stats
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

Page Pool Ethtool stats are deprecated since the Netlink Page Pool
interface introduction.
idpf receives big changes in Rx buffer management, including &page_pool
layout, so keeping these deprecated stats does only harm, not speaking
of that CONFIG_IDPF selects CONFIG_PAGE_POOL_STATS unconditionally,
while the latter is often turned off for better performance.
Remove all the references to PP stats from the Ethtool code. The stats
are still available in their full via the generic Netlink interface.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/Kconfig            |  1 -
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 29 +------------------
 2 files changed, 1 insertion(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 0db1aa36866e..d2e9bef2e0cb 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -380,7 +380,6 @@ config IDPF
 	select DIMLIB
 	select LIBIE
 	select PAGE_POOL
-	select PAGE_POOL_STATS
 	help
 	  This driver supports Intel(R) Infrastructure Data Path Function
 	  devices.
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 986d429d1175..da7963f27bd8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -571,8 +571,6 @@ static void idpf_get_stat_strings(struct net_device *netdev, u8 *data)
 	for (i = 0; i < vport_config->max_q.max_rxq; i++)
 		idpf_add_qstat_strings(&data, idpf_gstrings_rx_queue_stats,
 				       "rx", i);
-
-	page_pool_ethtool_stats_get_strings(data);
 }
 
 /**
@@ -606,7 +604,6 @@ static int idpf_get_sset_count(struct net_device *netdev, int sset)
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_vport_config *vport_config;
 	u16 max_txq, max_rxq;
-	unsigned int size;
 
 	if (sset != ETH_SS_STATS)
 		return -EINVAL;
@@ -625,11 +622,8 @@ static int idpf_get_sset_count(struct net_device *netdev, int sset)
 	max_txq = vport_config->max_q.max_txq;
 	max_rxq = vport_config->max_q.max_rxq;
 
-	size = IDPF_PORT_STATS_LEN + (IDPF_TX_QUEUE_STATS_LEN * max_txq) +
+	return IDPF_PORT_STATS_LEN + (IDPF_TX_QUEUE_STATS_LEN * max_txq) +
 	       (IDPF_RX_QUEUE_STATS_LEN * max_rxq);
-	size += page_pool_ethtool_stats_get_count();
-
-	return size;
 }
 
 /**
@@ -877,7 +871,6 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_vport_config *vport_config;
-	struct page_pool_stats pp_stats = { };
 	struct idpf_vport *vport;
 	unsigned int total = 0;
 	unsigned int i, j;
@@ -947,32 +940,12 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 				idpf_add_empty_queue_stats(&data, qtype);
 			else
 				idpf_add_queue_stats(&data, rxq);
-
-			/* In splitq mode, don't get page pool stats here since
-			 * the pools are attached to the buffer queues
-			 */
-			if (is_splitq)
-				continue;
-
-			if (rxq)
-				page_pool_get_stats(rxq->pp, &pp_stats);
-		}
-	}
-
-	for (i = 0; i < vport->num_rxq_grp; i++) {
-		for (j = 0; j < vport->num_bufqs_per_qgrp; j++) {
-			struct idpf_queue *rxbufq =
-				&vport->rxq_grps[i].splitq.bufq_sets[j].bufq;
-
-			page_pool_get_stats(rxbufq->pp, &pp_stats);
 		}
 	}
 
 	for (; total < vport_config->max_q.max_rxq; total++)
 		idpf_add_empty_queue_stats(&data, VIRTCHNL2_QUEUE_TYPE_RX);
 
-	page_pool_ethtool_stats_get(data, &pp_stats);
-
 	rcu_read_unlock();
 
 	idpf_vport_ctrl_unlock(netdev);
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
