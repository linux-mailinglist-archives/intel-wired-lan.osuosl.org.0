Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F489B53F27
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 01:41:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 156C384EE4;
	Thu, 11 Sep 2025 23:41:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xvSYIuUc3-VW; Thu, 11 Sep 2025 23:41:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72C1684EE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757634104;
	bh=2kS6+LAN7Y6KtFkb5h+oh54iSlxhX+iiEu7lm1JF3wo=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YwyfK4mf7n7qz3K07YvSEJCuj5qU8Vx6ex8li2eC9mtZULP+X3Ve3oweJ28gRS6Zr
	 p/anDGj8z0wwDOeYycLAIDq0wZHPtfQw3y7GV4oqZIUH9liJUGL37ybzhexUtO1mzm
	 sl4/hQPT+yOfGy6UyG0GwA5pKWJwbVC+vJps0CzSWGUtjgSqGRSA6m01btFEMSGnoi
	 Ep5laq0H9V2o8A/HcWABO+v67GxVisNF+XE1kNS25RYXn/GpaVbZBY3NmRCxjeCDA/
	 cvvgkHIK/9wwyefJq+QSCsiXp5w3zjQxLh4HaUBNHgGmaKEjICvxnSKhxxALpBlk7w
	 9aquk0KUz12ig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72C1684EE5;
	Thu, 11 Sep 2025 23:41:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 696ED92E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E20D284E01
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VPaNTHLNxxRj for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Sep 2025 23:41:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5040984E02
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5040984E02
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5040984E02
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Sep 2025 23:41:41 +0000 (UTC)
X-CSE-ConnectionGUID: f2HpzDGUSF2Ux6vbF0VY+A==
X-CSE-MsgGUID: 8UY5O0+RSymHEjxiUP9ZqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11550"; a="71354803"
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="71354803"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 16:41:38 -0700
X-CSE-ConnectionGUID: TgY34MZkRZakLQKG3qIahQ==
X-CSE-MsgGUID: 9bNzkSA6QxK2Pn6rzg+nnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="204589499"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.70])
 ([10.166.28.70])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 16:41:37 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 11 Sep 2025 16:40:40 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-resend-jbrandeb-ice-standard-stats-v3-4-1bcffd157aa5@intel.com>
References: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
In-Reply-To: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
To: Jesse Brandeburg <jbrandeburg@cloudflare.com>, 
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>, 
 Simon Horman <horms@kernel.org>, 
 Marcin Szycik <marcin.szycik@linux.intel.com>, 
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org, corbet@lwn.net, 
 Jacob Keller <jacob.e.keller@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailer: b4 0.15-dev-c61db
X-Developer-Signature: v=1; a=openpgp-sha256; l=1987;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=fVsMI2sxazmf90Rmjei3DDI63a9Lm7CC2bI4YMCczTA=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhozDcYb3DV9I5kxROxms9iZ6e+tDDc5biWrMR28dZKww2
 jRj+5fkjlIWBjEuBlkxRRYFh5CV140nhGm9cZaDmcPKBDKEgYtTACZir8zwi3nuipOyE8I2VbX6
 r79leaw2+MfpLwbb7V+fO8Gx7Mc2ay5Ghr+xnT7OXJOXtJqLHPfRt5BZ9Gpx+8/6pFMJcet4Ily
 3cgMA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757634101; x=1789170101;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=9YzEHPC3kMFw3ZqY8wpSZT2CZ0Ko0RK1ZiOYgDcqnaY=;
 b=k8kAoMsVo1xLGVAGCkq1yt6cboXUxdNm/xCRPppLMyxeegSqAGon6NW7
 EXeeZrls3xDPIPJMLh6ms/yL1r3Udjoqy6rhcAmC5wwOL204LYrF4eiVe
 HJdp6y8mLbi5rtxmqbpIX7cawQwvMHLFS9EJnzlVgvFkGpddyFUITDxGR
 s1W4U/+nPSRVwaO/TVxkk58IIXMsFTbHiMaiQbN/XtU4WewOnDDwpodU5
 HEJ1JisVVrA7cD4u25hiuIj0qV5aUjfJPhTOI2H3ajXFJaavAnYm5IFwf
 oI0emI3P2VhFHye3woIF+ecQo6vIBMdRJAM22a1brkmpMiTlND+Bf+sv2
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k8kAoMsV
Subject: [Intel-wired-lan] [PATCH v3 4/5] ice: implement transmit hardware
 timestamp statistics
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

