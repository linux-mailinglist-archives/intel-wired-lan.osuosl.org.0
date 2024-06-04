Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 573E08FBE98
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jun 2024 00:13:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1812F81233;
	Tue,  4 Jun 2024 22:13:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qSqFyR0PsjMX; Tue,  4 Jun 2024 22:13:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4735C80300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717539229;
	bh=LwZYpla920XbMDCwQ3X1lM3vE65bNnhEcZ3J2nIoHaw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NytgyaGynV+DApwx7XOmhNeuZITbJhzLReQJq6tc6fOX64up0JkDgr/MBQ6hIsAFH
	 Yi/SPEJe43wisiZHv9tkSEziGcQvLv83xoqzI1GdlgPhzHc7YbDi8hjAvp3TSphVZH
	 ERWsaohNHzlzCzUERRGJx8dskiabZrsfIj6UBphxr3kq2Y6BDW4gQnuZ1vOIbM60mD
	 kyIbIfVwNUwiy2giKUqg4X68NpRXOtQNOom0XbtoUZolXcZKEqrIECjAal9UR8dG66
	 OChCyjEj+Ur3QJiOOWArjZUHBPvodKTsgHnYhBsIZp6OLPRC5XBCnCYkdJ6DBmNzy6
	 nkSf5B+7dRSNA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4735C80300;
	Tue,  4 Jun 2024 22:13:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CBC201BF409
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 22:13:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 59CCF40296
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 22:13:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eEcH9oPFOMry for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 22:13:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D401C4026E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D401C4026E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D401C4026E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 22:13:36 +0000 (UTC)
X-CSE-ConnectionGUID: yEXgdNRLRY+PScsyYTYI8g==
X-CSE-MsgGUID: G6T4NqVTTcymyZx0IDkNiA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="36635267"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="36635267"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 15:13:33 -0700
X-CSE-ConnectionGUID: 8ueFfticQIuvX4QYVHfsiw==
X-CSE-MsgGUID: WKaPZkS4T1OFBSWIH2Cx7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37503245"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 15:13:33 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Tue,  4 Jun 2024 15:13:24 -0700
Message-ID: <20240604221327.299184-5-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240604221327.299184-1-jesse.brandeburg@intel.com>
References: <20240604221327.299184-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717539217; x=1749075217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rL5kinlQFFzU1XTq/6TzJBFgGwuFIH/m9QaI0R7Q2QI=;
 b=PEp8k7MHjtOvq1Fu/qu+g1iE51YugDv0+htKxVA2bedoJwnhmrVZRxDX
 h0JUoNGe+bfPZP0gF6WUVc8URTAyC1JY2zKXUS49QTorBfm2aq4EYVvKB
 /2HBtwgE4/O+pMBQ/9Dd96HheYtarFRNCrZCtxKv6E9scX/Wo1m09No5y
 2ARhrsQSIAv9uRU7AXqHVm2adUY5NHJYbf6EWVXZIfRXymEUh5GwpdZMq
 dGH4NKzaMk4B/qy6qG9Ep/8j794cw1Acctv3y3S1qGvFfvmN3m6RkS+NX
 2qdRBaKCUNg8I19JSBrSUrC2bmwywO4iOVVXMtTY2V70gi+7AnQDd6Qgc
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PEp8k7MH
Subject: [Intel-wired-lan] [PATCH iwl-next v1 4/5] ice: implement transmit
 hardware timestamp statistics
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, linux-doc@vger.kernel.org,
 corbet@lwn.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The kernel now has common statistics for transmit timestamps, so
implement them in the ice driver.

use via
ethtool -I -T eth0

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---

$ sudo ethtool -I -T eth0
Time stamping parameters for eth0:
Capabilities:
        hardware-transmit
        software-transmit
        hardware-receive
        software-receive
        software-system-clock
        hardware-raw-clock
PTP Hardware Clock: 0
Hardware Transmit Timestamp Modes:
        off
        on
Hardware Receive Filter Modes:
        none
        all
Statistics:
  tx_pkts: 17
  tx_lost: 0
  tx_err: 0
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 6f0a857f55c9..97a7a0632a1d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4357,6 +4357,23 @@ static void ice_get_rmon_stats(struct net_device *netdev,
 	*ranges = ice_rmon_ranges;
 }
 
+/* ice_get_ts_stats - provide timestamping stats
+ * @netdev: the netdevice pointer from ethtool
+ * @ts_stats: the ethtool data structure to fill in
+ */
+static void ice_get_ts_stats(struct net_device *netdev,
+			     struct ethtool_ts_stats *ts_stats)
+{
+	struct ice_pf *pf = ice_netdev_to_pf(netdev);
+	struct ice_ptp *ptp = &pf->ptp;
+
+	ts_stats->pkts = ptp->tx_hwtstamp_good;
+	ts_stats->err = ptp->tx_hwtstamp_skipped +
+			ptp->tx_hwtstamp_flushed +
+			ptp->tx_hwtstamp_discarded;
+	ts_stats->lost = ptp->tx_hwtstamp_timeouts;
+}
+
 static const struct ethtool_ops ice_ethtool_ops = {
 	.cap_rss_ctx_supported  = true,
 	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
@@ -4407,6 +4424,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.get_eth_mac_stats	= ice_get_eth_mac_stats,
 	.get_pause_stats	= ice_get_pause_stats,
 	.get_rmon_stats		= ice_get_rmon_stats,
+	.get_ts_stats		= ice_get_ts_stats,
 };
 
 static const struct ethtool_ops ice_ethtool_safe_mode_ops = {
-- 
2.43.0

