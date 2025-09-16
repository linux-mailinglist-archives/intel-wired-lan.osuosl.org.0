Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8107CB5A12E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Sep 2025 21:17:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0487C822D6;
	Tue, 16 Sep 2025 19:17:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DWEBveaXuq4I; Tue, 16 Sep 2025 19:17:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BB40827A8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758050220;
	bh=2kS6+LAN7Y6KtFkb5h+oh54iSlxhX+iiEu7lm1JF3wo=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VtHws3VijM4ErPJz64Yr/uwrjW6d3s6x2hKO5s7Ofaw9a/VxZPIhdDAJrvLpmn5sv
	 vYs68xEaM9kkeVqdRUEuk/PDVM9xDOeUtMKmt0nhMkh00CHrdye+S+lr50YPvrrpOP
	 XhUpDBNud9hlSj/wCMcv8QrQFVZ1uxReHL19hIUV4Y00bGYgRHPK0cSPehaAxJMYL9
	 g+PLE24R/b+sY3sW8vxncKfRlqPESOBKiF4EekyqeCoygTN1RVMdsEsT/ONKPqerby
	 MvUQTUSDDmVnVm6hcvKyg+D8IY8nbi+PEW1NNg2C9SEAvp/q0U02WgQyudOMJQt+sT
	 XW9Pk/j6pNyDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1BB40827A8;
	Tue, 16 Sep 2025 19:17:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 50FEA12D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C228C40E97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7tYPXDQWtStO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Sep 2025 19:16:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 283BE40DB2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 283BE40DB2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 283BE40DB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Sep 2025 19:16:55 +0000 (UTC)
X-CSE-ConnectionGUID: xCaeJoDHSICGHa9sEDPZ5Q==
X-CSE-MsgGUID: rBQ9TcF6QlCbnXdQP3wvMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60037602"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="60037602"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:16:55 -0700
X-CSE-ConnectionGUID: q6LBvRBbQ5KRtxJ/2R9pwQ==
X-CSE-MsgGUID: JgyBbiYDTT+bJKO8cKh56g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174961767"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:16:54 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 16 Sep 2025 12:14:57 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-resend-jbrandeb-ice-standard-stats-v4-4-ec198614c738@intel.com>
References: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
In-Reply-To: <20250916-resend-jbrandeb-ice-standard-stats-v4-0-ec198614c738@intel.com>
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>, 
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>, 
 Simon Horman <horms@kernel.org>, 
 Marcin Szycik <marcin.szycik@linux.intel.com>, 
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org, corbet@lwn.net, 
 Jacob Keller <jacob.e.keller@intel.com>
Cc: jbrandeburg@cloudflare.com
X-Mailer: b4 0.15-dev-cbe0e
X-Developer-Signature: v=1; a=openpgp-sha256; l=1987;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=fVsMI2sxazmf90Rmjei3DDI63a9Lm7CC2bI4YMCczTA=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhoyT25fUB66/Wip4ckvfosXTmRT1btUkb7XtFFy7YaLRU
 bZL1udPdZSyMIhxMciKKbIoOISsvG48IUzrjbMczBxWJpAhDFycAjCRJSqMDP9XRfjcczDcxvdy
 WbzTrSPZ0e5/j3seKApv2eIRUlKtLcrIsO3g6uO53jlNS84I6V9c48GVJSeZnsQx1WTKy09fFq6
 7yAwA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758050215; x=1789586215;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=9YzEHPC3kMFw3ZqY8wpSZT2CZ0Ko0RK1ZiOYgDcqnaY=;
 b=XGZmNyTRRLOwM8EkES36rhz5KJe76ORQeEdD022WlP2kJ8npLfJxjjDZ
 Dhts4R7jEuCZlmlebO4QWxPOZEdcXv4I+AfFkukXszanNdLvzZMxeKian
 S/2jz9CB6ViFYCkn3DZNHpMI58rCiRmEPO3rKz79JEGfMUPsfqdt1Z7yx
 ruEFHbXoBr//nnNgT5/fVhE/B323ShyycLQ8zMaoM+/0emX/KpFEDYOF9
 JSOPWcyretAM6Lm5VHiCfcs4tARTbpyV3K9F85V4uNQTc7JvurspAacQO
 qQtpOuvneEVfyA/f2ymUWfkpM6bsZLbaQN/vK+Me9t/5oMSnERfYV8ORv
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XGZmNyTR
Subject: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: implement transmit
 hardware timestamp statistics
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

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

The kernel now has common statistics for transmit timestamps, so
implement them in the ice driver.

use via
ethtool -I -T eth0

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jakub Kicinski <kuba@kernel.org>
Reviewed-by: Hariprasad Kelam <hkelam@marvell.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 3d99c4a1e287..f8bb2d55b28c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4730,6 +4730,23 @@ static void ice_get_rmon_stats(struct net_device *netdev,
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
 #define ICE_ETHTOOL_PFR (ETH_RESET_IRQ | ETH_RESET_DMA | \
 	ETH_RESET_FILTER | ETH_RESET_OFFLOAD)
 
@@ -4816,6 +4833,7 @@ static const struct ethtool_ops ice_ethtool_ops = {
 	.get_eth_mac_stats	= ice_get_eth_mac_stats,
 	.get_pause_stats	= ice_get_pause_stats,
 	.get_rmon_stats		= ice_get_rmon_stats,
+	.get_ts_stats		= ice_get_ts_stats,
 	.get_drvinfo		= ice_get_drvinfo,
 	.get_regs_len		= ice_get_regs_len,
 	.get_regs		= ice_get_regs,

-- 
2.51.0.rc1.197.g6d975e95c9d7

