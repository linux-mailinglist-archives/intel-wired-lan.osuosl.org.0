Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE948FF7C7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 00:47:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD94041A3D;
	Thu,  6 Jun 2024 22:47:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uS8xdoCSrb83; Thu,  6 Jun 2024 22:47:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69ABA41A00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717714039;
	bh=Cp/JzRvsHEvqWcdg4saZL+UNU7El3bhLGAuEICEc+pU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9TzN+DRnUbvo94Ubk25mp1H3RssTCpTLNC+FK2cQABKeK8SArn4nLMm934j3IxV25
	 cySH4P4F1WoOQmHFNVn8eZJO9L1iWaYptDQxc/+a0c18//YFtyXh/K0LRphzPmNrIc
	 ooPt0mZBWC0G5vOzWzMAnlTQjYBL5HnkoCCneSVhcW7TFgk15vSU/P5t6sfKoqBci6
	 WmQUGrm3pvR2LAImlmY0WWaGwLMuqmPexlO3jE2naIrms147d/BfkF7eFxLk2ohGGm
	 YZ5hLayM+U2K2tQClbMiJtt/UjxmW2KY8IJUKJXp/d6Ydy1B5rRuhpKXNEv4dDhozP
	 nMFQ/LWrHxypQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69ABA41A00;
	Thu,  6 Jun 2024 22:47:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6BCBC1BF94D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 908D8849D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SObidwTvkKdk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 22:47:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 95992849C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95992849C5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95992849C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:12 +0000 (UTC)
X-CSE-ConnectionGUID: 507TjpFQTpueY71asV+CaA==
X-CSE-MsgGUID: Exf+gy5sTmmXKSphGAC8pQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14224008"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14224008"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:11 -0700
X-CSE-ConnectionGUID: 6JcK29OMTbGGHw21LXkmhQ==
X-CSE-MsgGUID: l9QUanyGT4uGKSYYm2uiHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38243837"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:11 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Jun 2024 15:46:56 -0700
Message-ID: <20240606224701.359706-3-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240606224701.359706-1-jesse.brandeburg@intel.com>
References: <20240606224701.359706-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717714033; x=1749250033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=svAUTzKkGC+kHc/rLGAMIv+fBkOndfX3PQZ5NKI7qpU=;
 b=m7pZO0P1Gba5JoFwCDjUrSIn99vC9SglUX0VMODwIR/7XsGuVQ+UH+UO
 Xctlx6oDy0jN5Z1JLBz21VwqP902nFBtIxIgUrC7WMoeWiUkINT9tM/sf
 GCuHTTOZLjdoPYnRDiuXksrwhBQ3rgSx4P8U4zUPIvHx+Hmh3Ewj8SQNM
 +8pEgJn3eWZZFE+G3uzYUKu+GuCaPx8w1cv0TLCGUnx9ayeg08JU2JsyC
 JIagOXIYYY01EvryLSZwxTy/+W+M9R5LXjhRPaTMdIZlrt2VhiocMuQIO
 vZGKSkgB2yCSMEdkjSCUraiMQ1v1jZCSFCjdiHYn+W3dV47kMEH0YYNbt
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m7pZO0P1
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: implement ethtool
 standard stats
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
Cc: linux-doc@vger.kernel.org, corbet@lwn.net,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for MAC/pause/RMON stats. This enables reporting hardware
statistics in a common way via:

ethtool -S eth0 --all-groups
and
ethtool --include-statistics --show-pause eth0

While doing so, add support for one new stat, receive length error
(RLEC), which is extremely unlikely to happen since most L2 frames have
a type/length field specifying a "type", and raw ethernet frames aren't
used much any longer.

NOTE: I didn't implement Ctrl aka control frame stats because the
hardware doesn't seem to implement support.

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
Example output:

Standard stats for ens785f1np1:
eth-mac-FramesTransmittedOK: 296
eth-mac-FramesReceivedOK: 339
eth-mac-FrameCheckSequenceErrors: 0
eth-mac-OctetsTransmittedOK: 70410
eth-mac-OctetsReceivedOK: 51414
eth-mac-MulticastFramesXmittedOK: 124
eth-mac-BroadcastFramesXmittedOK: 1
eth-mac-MulticastFramesReceivedOK: 164
eth-mac-BroadcastFramesReceivedOK: 3
eth-mac-InRangeLengthErrors: 0
eth-mac-FrameTooLongErrors: 0
rmon-etherStatsUndersizePkts: 0
rmon-etherStatsOversizePkts: 0
rmon-etherStatsFragments: 0
rmon-etherStatsJabbers: 0
rx-rmon-etherStatsPkts64Octets: 31
rx-rmon-etherStatsPkts65to127Octets: 265
rx-rmon-etherStatsPkts128to255Octets: 26
rx-rmon-etherStatsPkts256to511Octets: 7
rx-rmon-etherStatsPkts512to1023Octets: 1
rx-rmon-etherStatsPkts1024to1522Octets: 6
rx-rmon-etherStatsPkts1523to9522Octets: 3
tx-rmon-etherStatsPkts64Octets: 25
tx-rmon-etherStatsPkts65to127Octets: 255
tx-rmon-etherStatsPkts128to255Octets: 1
tx-rmon-etherStatsPkts256to511Octets: 2
tx-rmon-etherStatsPkts512to1023Octets: 1
tx-rmon-etherStatsPkts1024to1522Octets: 1
tx-rmon-etherStatsPkts1523to9522Octets: 11
and
Pause parameters for ens785f0np0:
Autonegotiate:  on
RX:             off
TX:             off
RX negotiated: off
TX negotiated: off
Statistics:
  tx_pause_frames: 0
  rx_pause_frames: 0
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 78 ++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c    |  3 +
 drivers/net/ethernet/intel/ice/ice_type.h    |  1 +
 3 files changed, 82 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 62c8205fceba..6f0a857f55c9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4282,6 +4282,81 @@ ice_get_module_eeprom(struct net_device *netdev,
 	return 0;
 }
 
+static void ice_get_eth_mac_stats(struct net_device *netdev,
+				  struct ethtool_eth_mac_stats *mac_stats)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	struct ice_hw_port_stats *ps = &pf->stats;
+
+	mac_stats->FramesTransmittedOK = ps->eth.tx_unicast +
+					 ps->eth.tx_multicast +
+					 ps->eth.tx_broadcast;
+	mac_stats->FramesReceivedOK = ps->eth.rx_unicast +
+				      ps->eth.rx_multicast +
+				      ps->eth.rx_broadcast;
+	mac_stats->FrameCheckSequenceErrors = ps->crc_errors;
+	mac_stats->OctetsTransmittedOK = ps->eth.tx_bytes;
+	mac_stats->OctetsReceivedOK = ps->eth.rx_bytes;
+	mac_stats->MulticastFramesXmittedOK = ps->eth.tx_multicast;
+	mac_stats->BroadcastFramesXmittedOK = ps->eth.tx_broadcast;
+	mac_stats->MulticastFramesReceivedOK = ps->eth.rx_multicast;
+	mac_stats->BroadcastFramesReceivedOK = ps->eth.rx_broadcast;
+	mac_stats->InRangeLengthErrors = ps->rx_len_errors;
+	mac_stats->FrameTooLongErrors = ps->rx_oversize;
+}
+
+static void ice_get_pause_stats(struct net_device *netdev,
+				struct ethtool_pause_stats *pause_stats)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	struct ice_hw_port_stats *ps = &pf->stats;
+
+	pause_stats->tx_pause_frames = ps->link_xon_tx + ps->link_xoff_tx;
+	pause_stats->rx_pause_frames = ps->link_xon_rx + ps->link_xoff_rx;
+}
+
+static const struct ethtool_rmon_hist_range ice_rmon_ranges[] = {
+	{    0,    64 },
+	{   65,   127 },
+	{  128,   255 },
+	{  256,   511 },
+	{  512,  1023 },
+	{ 1024,  1522 },
+	{ 1523,  9522 },
+	{}
+};
+
+static void ice_get_rmon_stats(struct net_device *netdev,
+			       struct ethtool_rmon_stats *rmon,
+			       const struct ethtool_rmon_hist_range **ranges)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	struct ice_hw_port_stats *ps = &pf->stats;
+
+	rmon->undersize_pkts	= ps->rx_undersize;
+	rmon->oversize_pkts	= ps->rx_oversize;
+	rmon->fragments		= ps->rx_fragments;
+	rmon->jabbers		= ps->rx_jabber;
+
+	rmon->hist[0]		= ps->rx_size_64;
+	rmon->hist[1]		= ps->rx_size_127;
+	rmon->hist[2]		= ps->rx_size_255;
+	rmon->hist[3]		= ps->rx_size_511;
+	rmon->hist[4]		= ps->rx_size_1023;
+	rmon->hist[5]		= ps->rx_size_1522;
+	rmon->hist[6]		= ps->rx_size_big;
+
+	rmon->hist_tx[0]	= ps->tx_size_64;
+	rmon->hist_tx[1]	= ps->tx_size_127;
+	rmon->hist_tx[2]	= ps->tx_size_255;
+	rmon->hist_tx[3]	= ps->tx_size_511;
+	rmon->hist_tx[4]	= ps->tx_size_1023;
+	rmon->hist_tx[5]	= ps->tx_size_1522;
+	rmon->hist_tx[6]	= ps->tx_size_big;
+
+	*ranges = ice_rmon_ranges;
+}
+
 static const struct ethtool_ops ice_ethtool_ops = {
 	.cap_rss_ctx_supported  = true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
@@ -4329,6 +4404,9 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.set_fecparam		= ice_set_fecparam,
 	.get_module_info	= ice_get_module_info,
 	.get_module_eeprom	= ice_get_module_eeprom,
+	.get_eth_mac_stats	= ice_get_eth_mac_stats,
+	.get_pause_stats	= ice_get_pause_stats,
+	.get_rmon_stats		= ice_get_rmon_stats,
 };
 
 static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f60c022f7960..4db3a6056f41 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7034,6 +7034,9 @@ void ice_update_pf_stats(struct ice_pf *pf)
 			  &prev_ps->mac_remote_faults,
 			  &cur_ps->mac_remote_faults);
 
+	ice_stat_update32(hw, GLPRT_RLEC(port), pf->stat_prev_loaded,
+			  &prev_ps->rx_len_errors, &cur_ps->rx_len_errors);
+
 	ice_stat_update32(hw, GLPRT_RUC(port), pf->stat_prev_loaded,
 			  &prev_ps->rx_undersize, &cur_ps->rx_undersize);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index f0796a93f428..b156d01196e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -1007,6 +1007,7 @@ struct ice_hw_port_stats {
 	u64 error_bytes;		/* errbc */
 	u64 mac_local_faults;		/* mlfc */
 	u64 mac_remote_faults;		/* mrfc */
+	u64 rx_len_errors;		/* rlec */
 	u64 link_xon_rx;		/* lxonrxc */
 	u64 link_xoff_rx;		/* lxoffrxc */
 	u64 link_xon_tx;		/* lxontxc */
-- 
2.43.0

