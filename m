Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACC38FF7CA
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 00:47:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 60B2941A8A;
	Thu,  6 Jun 2024 22:47:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MoKsnKWq2vod; Thu,  6 Jun 2024 22:47:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AA73741A09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717714040;
	bh=QHZWE1jzYQM56FmPiNRTUmQAAVXkhoyOzlMZcegm/hA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ub6FZqDjy59gcWhMI0xCPss6tgzZ/c1QDxF5N21DkpvVLu9+AnHF3EKrDidbtamMC
	 Zd+N4rPgVbMQzIXLuaXQWXoV+tnSyFgFNfKR91KAaLY9qu3pd37snaf6jiAQk6/4Z/
	 sSSPhba4FinGVtiZEu8XHxGPs/7NIWieOFy8xlOZbpaGuvpzLDfmF/mbK1sas4XplM
	 Cu+4X3casEKscTlAaMqBwK8dPFTYU28bZ2wBeIM1k1225VoNGQkVvEWfk/nfQ6RYEt
	 l8m8FpSP53deV7RHKUBQHUrXVzMPctB9dJck/E414dgTNk6ysGSuMDu+jKUkrSFsX2
	 NSmJfZOsd+M1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA73741A09;
	Thu,  6 Jun 2024 22:47:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C87C1BF94D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCE54849C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8Z_l0dKC81vv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 22:47:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1A5CE849C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A5CE849C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A5CE849C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 22:47:12 +0000 (UTC)
X-CSE-ConnectionGUID: Nl7njW7PTtOXdD4+g+8i7Q==
X-CSE-MsgGUID: U1EcHtxbStOONZOH94JKZQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14224016"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14224016"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:12 -0700
X-CSE-ConnectionGUID: Ruw+N1/qSvi/splh/Vr6bg==
X-CSE-MsgGUID: +aZnIgdAR6CkgvddpW3EBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38243843"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:47:12 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Jun 2024 15:46:58 -0700
Message-ID: <20240606224701.359706-5-jesse.brandeburg@intel.com>
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
 bh=WJPwdnA8Lj4NLq97gnr8zSK5cfQQDsGNC1zvghOKkgw=;
 b=S8q2Qg5kbO5BrQ04hsTQHdqosIIIhv434aHEn+0NttkdjS5ZQ0k0635U
 0k67IbWe9WQvQS8MgmC78GxaHuZ17ruFN3GmlSaS9n3CCiC1e5K7BrXh8
 LDTOT4+EG6fCM+dnUxIOdtujvbSyNeiBnRw7gXhpLUglI/YOWOh/3UWlT
 vv0Tz/8U5ElC0eD2+xOG5HuF4AGxa/ueR3WRx+O8gsU9OogMzWqlsEc1p
 sez+EO+AjWLkKkqTwA7YFG8/ssG1yqTIx8H4nTVskWlAATrP11u9dvdXR
 4StGx3/ntsYgBJDafBSvXOBnSiDaVEpnMinsWSqkCnMxt5ydQcg6y73Wa
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S8q2Qg5k
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/5] ice: implement transmit
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
Cc: linux-doc@vger.kernel.org, corbet@lwn.net,
 Hariprasad Kelam <hkelam@marvell.com>, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The kernel now has common statistics for transmit timestamps, so
implement them in the ice driver.

use via
ethtool -I -T eth0

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Hariprasad Kelam <hkelam@marvell.com>
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

