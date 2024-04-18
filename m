Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2550C8A96F3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 12:04:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D75E6415FF;
	Thu, 18 Apr 2024 10:04:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4SNZNNfE-ADC; Thu, 18 Apr 2024 10:04:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D57F4415BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713434658;
	bh=vnCQbLIpTOLEYHqzI8xr5fU/2pXfqerUVIbsOB5PJDY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=9rUqYbdx09H6A0JiDvJnqd0KAZnMaiDQHgx9AJKsJzCD6LFAxOd++PmJCZCfyvhb7
	 90eOpmrMAU2YYyc6s3JQs8j04nAlubj/kyjbRSh7YMDNH39Hjl2acArnnLJcIuLGoz
	 4yhqEjB7afgMHvD/K8esujfOL9pD6MM+hURpGAmMN/U98T9zVciyuE2ngMXNNo+TP9
	 BDwmwKlDlq6ec+DbupStqyFNNxuH/OwcWYB6j2aUSiIn3rXZSJXXpC/GmpO5X7csB5
	 CavvKAgsN1q0MR5Exzm+kpwcLxLVH8F1Xels2tXvP8/37WmfHF5+iy9h0nM5tGQTXF
	 d7OmxiFOQbS6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D57F4415BD;
	Thu, 18 Apr 2024 10:04:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 925BC1BF980
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 10:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77FB580EDA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 10:04:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fel-PbXHcKz8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 10:04:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 792BF81237
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 792BF81237
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 792BF81237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 10:04:12 +0000 (UTC)
X-CSE-ConnectionGUID: lkBy+CswReWvoaUCmjuw6g==
X-CSE-MsgGUID: KFIjZMTKQvuDiux9dPssyw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20363846"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="20363846"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 03:04:12 -0700
X-CSE-ConnectionGUID: OtIt6GRRTfmFqIAOWqajgw==
X-CSE-MsgGUID: gyZzpVE1TD2D6MPpBuOEIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="27367309"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 18 Apr 2024 03:04:08 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 927D428169;
 Thu, 18 Apr 2024 11:04:06 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Date: Thu, 18 Apr 2024 11:58:55 +0200
Message-ID: <20240418095857.2827-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713434653; x=1744970653;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UEzTGUe3r7acXf8Yb95hdOs5Y9KDHJwibjjQOPb+gas=;
 b=LVkuPUpNYT2xUAeIlVikpoce329jAnF4TDNjV1B5dZGhdv1gK2hKkOSu
 OaTNQ+2IQ4xpYFB0kcULOzIje3BEO+r6UdXX2BUMocm0B4oI4LL/bTYvC
 q6gYwQkhDC28NxG8LIHZ51lY7Cw/p1C6IKFensfm7HTJYUyajWYmbTh/1
 ZxelC7euLWHdo9rAL+OCw9S9kXWSYid9wKoBsU3PCHn7k8IKk5s0mZ30D
 cyg5K1qQIn3ZJsjdva4HGlw8zN7nTmj4M1WeLBWBDKuTowJtgxA6IVAYu
 93f8ruPZH1BSLr4MvFE9I6uxHhtjVWIsiTtLyu0zrPiWXk/OjFIdF5LP1
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LVkuPUpN
Subject: [Intel-wired-lan] [PATCH RESEND iwl-net] ice: Interpret
 .set_channels() input differently
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
Cc: maciej.fijalkowski@intel.com, Emil Tantilov <emil.s.tantilov@intel.com>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>, Eric Dumazet <edumazet@google.com>,
 alan.brady@intel.com, Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A bug occurs because a safety check guarding AF_XDP-related queues in
ethnl_set_channels(), does not trigger. This happens, because kernel and
ice driver interpret the ethtool command differently.

How the bug occurs:
1. ethtool -l <IFNAME> -> combined: 40
2. Attach AF_XDP to queue 30
3. ethtool -L <IFNAME> rx 15 tx 15
   combined number is not specified, so command becomes {rx_count = 15,
   tx_count = 15, combined_count = 40}.
4. ethnl_set_channels checks, if there are any AF_XDP of queues from the
   new (combined_count + rx_count) to the old one, so from 55 to 40, check
   does not trigger.
5. ice interprets `rx 15 tx 15` as 15 combined channels and deletes the
   queue that AF_XDP is attached to.

Interpret the command in a way that is more consistent with ethtool
manual [0] (--show-channels and --set-channels).

Considering that in the ice driver only the difference between RX and TX
queues forms dedicated channels, change the correct way to set number of
channels to:

ethtool -L <IFNAME> combined 10 /* For symmetric queues */
ethtool -L <IFNAME> combined 8 tx 2 rx 0 /* For asymmetric queues */

[0] https://man7.org/linux/man-pages/man8/ethtool.8.html

Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 22 ++++++--------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 78b833b3e1d7..d91f41f61bce 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3593,7 +3593,6 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 	struct ice_pf *pf = vsi->back;
 	int new_rx = 0, new_tx = 0;
 	bool locked = false;
-	u32 curr_combined;
 	int ret = 0;
 
 	/* do not support changing channels in Safe Mode */
@@ -3615,22 +3614,13 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 		return -EOPNOTSUPP;
 	}
 
-	curr_combined = ice_get_combined_cnt(vsi);
+	if (!ch->combined_count) {
+		netdev_err(dev, "Please specify at least 1 combined channel\n");
+		return -EINVAL;
+	}
 
-	/* these checks are for cases where user didn't specify a particular
-	 * value on cmd line but we get non-zero value anyway via
-	 * get_channels(); look at ethtool.c in ethtool repository (the user
-	 * space part), particularly, do_schannels() routine
-	 */
-	if (ch->rx_count == vsi->num_rxq - curr_combined)
-		ch->rx_count = 0;
-	if (ch->tx_count == vsi->num_txq - curr_combined)
-		ch->tx_count = 0;
-	if (ch->combined_count == curr_combined)
-		ch->combined_count = 0;
-
-	if (!(ch->combined_count || (ch->rx_count && ch->tx_count))) {
-		netdev_err(dev, "Please specify at least 1 Rx and 1 Tx channel\n");
+	if (ch->rx_count && ch->tx_count) {
+		netdev_err(dev, "Dedicated RX or TX channels cannot be used simultaneously\n");
 		return -EINVAL;
 	}
 
-- 
2.43.0

