Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 567199106F3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 15:57:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBBA7846F7;
	Thu, 20 Jun 2024 13:57:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJll_f0P4aVo; Thu, 20 Jun 2024 13:57:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B10828478C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718891824;
	bh=iutlnjmXA4lhzIQYdUgbyD+xkEbtcZii1XuD5aGESpo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kYpfu5NYtfgf/7Zsfu2t/OLhliVaYfcrrQB+Pzfu+Ho6Z9Qj7zUD1TJ1rGF27H57c
	 zn88NOpaOQch7CsGZOEtult/3NkB8YFjzTGVd00dda9jvK/A2Ed/JiKJFbSL1PPrLO
	 8FPH0SwOKji9vHCttuVCDIbp2SYngSYybomOtELKrCgp9q0esNK7KsNBXNGls74/DV
	 7PoRFV66ILRC47+BsWJzkaGKOPkst0AjovEyfJnEiX5JQeQqJ5VK1WoC1auUF8Zb0b
	 +K3TGTt2vHeLQ/fRAer+rrQtFAkMOz0w/psvT3CG5aEmMaeR06pHdT/oZD9u8e1w5g
	 niFwsGQvQTF6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B10828478C;
	Thu, 20 Jun 2024 13:57:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 380D41BF315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2517242EE6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dhl_R0XQA6n2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 13:56:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 16E6142EE5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16E6142EE5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 16E6142EE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:57 +0000 (UTC)
X-CSE-ConnectionGUID: 2XiMkrkwSb+XSesjWKYswg==
X-CSE-MsgGUID: NkhbhltASx2Q5xoQ6RTG8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15987917"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="15987917"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 06:56:58 -0700
X-CSE-ConnectionGUID: z2HErGM1RX6L4ObTjTDJIw==
X-CSE-MsgGUID: l7+NatY6SNqJa6lc8IV+tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="46772156"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jun 2024 06:56:55 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jun 2024 15:53:44 +0200
Message-ID: <20240620135347.3006818-12-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
References: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718891818; x=1750427818;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=raXNhxqkm98XAjBKdc19+5eiqJrPXSnWLdEQN8jFi2U=;
 b=nC1koRer8uCeeQdjUCPhSATmO8UXqJvVY+j8v6TA3I+h19mVxbJnuPZv
 TML3e+amjdYE9NXdChYg+3UR0EHw2ZtTCSoyeu/AG2hacgb9hGo0FyJmR
 UPG0DBWcCtXji7p/ABZmRupWpj6lTcnosQCm/DHhuXMW5l9y3n+iR/wmo
 mfsEdJppg4NpQUBb+NXJR88biNdR6+9ziLdDD+axKfHZCK1819hapTOFy
 lvABXhpC+TbuRY+Kmo8hX2MY/aWLovVBxmq49JJP8mdwNTrRH9xQgc3Hh
 /YP7DmQWtn81bQp5XWxXuV9c58mjfCqAm3MEOuAKYriTBWjyqMqmR8erd
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nC1koRer
Subject: [Intel-wired-lan] [PATCH iwl-next v2 11/14] idpf: remove legacy
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
Cc: Mina Almasry <almasrymina@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
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

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/Kconfig       |  1 -
 .../net/ethernet/intel/idpf/idpf_ethtool.c    | 29 +------------------
 2 files changed, 1 insertion(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
index 638484c5723c..1f071143d992 100644
--- a/drivers/net/ethernet/intel/idpf/Kconfig
+++ b/drivers/net/ethernet/intel/idpf/Kconfig
@@ -7,7 +7,6 @@ config IDPF
 	select DIMLIB
 	select LIBETH
 	select PAGE_POOL
-	select PAGE_POOL_STATS
 	help
 	  This driver supports Intel(R) Infrastructure Data Path Function
 	  devices.
diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index e933fed16c7e..3806ddd3ce4a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -565,8 +565,6 @@ static void idpf_get_stat_strings(struct net_device *netdev, u8 *data)
 	for (i = 0; i < vport_config->max_q.max_rxq; i++)
 		idpf_add_qstat_strings(&data, idpf_gstrings_rx_queue_stats,
 				       "rx", i);
-
-	page_pool_ethtool_stats_get_strings(data);
 }
 
 /**
@@ -600,7 +598,6 @@ static int idpf_get_sset_count(struct net_device *netdev, int sset)
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_vport_config *vport_config;
 	u16 max_txq, max_rxq;
-	unsigned int size;
 
 	if (sset != ETH_SS_STATS)
 		return -EINVAL;
@@ -619,11 +616,8 @@ static int idpf_get_sset_count(struct net_device *netdev, int sset)
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
@@ -876,7 +870,6 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 {
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_vport_config *vport_config;
-	struct page_pool_stats pp_stats = { };
 	struct idpf_vport *vport;
 	unsigned int total = 0;
 	unsigned int i, j;
@@ -946,32 +939,12 @@ static void idpf_get_ethtool_stats(struct net_device *netdev,
 				idpf_add_empty_queue_stats(&data, qtype);
 			else
 				idpf_add_queue_stats(&data, rxq, qtype);
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
-			struct idpf_buf_queue *rxbufq =
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
2.45.2

