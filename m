Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8E3869855
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 15:31:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 414C640A7E;
	Tue, 27 Feb 2024 14:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YrNnqDxD9q7r; Tue, 27 Feb 2024 14:31:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C728540ADB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709044311;
	bh=ei5ofjA2EzTGNDZsjGccbci2Bi3aRo2uxA0OiL49xH0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=470FfK82YL37Sh7bZOBTM+T9M2CFeV9Jp8hqQj8aWskfNeXa3JLktA9rsgmWLWsud
	 62+uPdVNFtPNxStWrqR4+QpXlbIrWF8Xc6V85u0BeIK14Uj2wWheIOeIA1lio34VXf
	 OYYSF7uKQRroc02s65Xp3AH1utmqS7a/sR8GLYdcQX4PcrsqaZ+ZEZShtgzHmqt+BZ
	 0EHUaMsDjRSQyYzxTetAxC9cCxSPFO0i4W4l6C0tuG/Zn9hyNz+RBCgLa6uP2JAnM5
	 Pm8Ropc2DH26bygIvWJwKKmTC3KhaHkG4N5KL6+x78ScBTaqUv8/QWbjcyvVgSO5Jr
	 QLUe2F4bBMjFQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C728540ADB;
	Tue, 27 Feb 2024 14:31:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D2BFB1BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 14:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE12B82050
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 14:31:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ARDBS5JUjJvd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 14:31:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE3B081E05
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE3B081E05
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE3B081E05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 14:31:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14534100"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="14534100"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 06:31:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="38100128"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 27 Feb 2024 06:31:43 -0800
Received: from pkitszel-desk.intel.com (unknown [10.254.152.204])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 40674125BD;
 Tue, 27 Feb 2024 14:31:40 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 27 Feb 2024 15:31:06 +0100
Message-ID: <20240227143124.21015-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709044308; x=1740580308;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x22hhBiLB45AUr7ettB8S5dFgc3aNNjrNGCtp8BcbuY=;
 b=SdiGCtKcRX3LByYiqvlfYjj0gPy8l7zK2wGwubVOFr/NMlXlHP5XiSio
 2ay9rN0hy5H7XW07/K+QZcdyGY9wNsKxWXqDoeJadMo6Uprgdpv9V6mYZ
 cIQFiKDrif5JhFPFt6c+raqPSwkde55b0XHcj8mbfL9b1Ovr7zBrxFW7+
 6Fh27dbJzB+C1AewzM2B4qFLT5bL5zfJbkxetGUT5AjziA1W9e4a6gVCE
 UbnMjd10y90lcQiIJuH24r7NZK3YLT5qybpoH12TafeGXjPt+Y2SK3Ie3
 WL9auCKXn1KhuQkEPU54+PYUE4PQmp/BQWFQbi7I/BLpIdtLoU0PJxrtW
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SdiGCtKc
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix stats being updated by
 way too large values
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
Cc: Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Christian Rohmann <christian.rohmann@inovex.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Simplify stats accumulation logic to fix the case where we don't take
previous stat value into account, we should always respect it.

Main netdev stats of our PF (Tx/Rx packets/bytes) were reported orders of
magnitude too big during OpenStack reconfiguration events, possibly other
reconfiguration cases too.

The regression was reported to be between 6.1 and 6.2, so I was almost
certain that on of the two "preserve stats over reset" commits were the
culprit. While reading the code, it was found that in some cases we will
increase the stats by arbitrarily large number (thanks to ignoring "-prev"
part of condition, after zeroing it).

Note that this fixes also the case where we were around limits of u64, but
that was not the regression reported.

Full disclosure: I remember suggesting this particular piece of code to
Ben a few years ago, so blame on me.

Fixes: 2fd5e433cd26 ("ice: Accumulate HW and Netdev statistics over reset")
Reported-by: Nebojsa Stevanovic <nebojsa.stevanovic@gcore.com>
Link: https://lore.kernel.org/intel-wired-lan/VI1PR02MB439744DEDAA7B59B9A2833FE912EA@VI1PR02MB4397.eurprd02.prod.outlook.com
Reported-by: Christian Rohmann <christian.rohmann@inovex.de>
Link: https://lore.kernel.org/intel-wired-lan/f38a6ca4-af05-48b1-a3e6-17ef2054e525@inovex.de
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 24 +++++++++++------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index dd4a9bc0dfdc..a7c7b1b633a5 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6736,6 +6736,7 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 {
 	struct rtnl_link_stats64 *net_stats, *stats_prev;
 	struct rtnl_link_stats64 *vsi_stats;
+	struct ice_pf *pf = vsi->back;
 	u64 pkts, bytes;
 	int i;
 
@@ -6781,21 +6782,18 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
 	net_stats = &vsi->net_stats;
 	stats_prev = &vsi->net_stats_prev;
 
-	/* clear prev counters after reset */
-	if (vsi_stats->tx_packets < stats_prev->tx_packets ||
-	    vsi_stats->rx_packets < stats_prev->rx_packets) {
-		stats_prev->tx_packets = 0;
-		stats_prev->tx_bytes = 0;
-		stats_prev->rx_packets = 0;
-		stats_prev->rx_bytes = 0;
+	/* Update netdev counters, but keep in mind that values could start at
+	 * random value after PF reset. And as we increase the reported stat by
+	 * diff of Prev-Cur, we need to be sure that Prev is valid. If it's not,
+	 * let's skip this round.
+	 */
+	if (likely(pf->stat_prev_loaded)) {
+		net_stats->tx_packets += vsi_stats->tx_packets - stats_prev->tx_packets;
+		net_stats->tx_bytes += vsi_stats->tx_bytes - stats_prev->tx_bytes;
+		net_stats->rx_packets += vsi_stats->rx_packets - stats_prev->rx_packets;
+		net_stats->rx_bytes += vsi_stats->rx_bytes - stats_prev->rx_bytes;
 	}
 
-	/* update netdev counters */
-	net_stats->tx_packets += vsi_stats->tx_packets - stats_prev->tx_packets;
-	net_stats->tx_bytes += vsi_stats->tx_bytes - stats_prev->tx_bytes;
-	net_stats->rx_packets += vsi_stats->rx_packets - stats_prev->rx_packets;
-	net_stats->rx_bytes += vsi_stats->rx_bytes - stats_prev->rx_bytes;
-
 	stats_prev->tx_packets = vsi_stats->tx_packets;
 	stats_prev->tx_bytes = vsi_stats->tx_bytes;
 	stats_prev->rx_packets = vsi_stats->rx_packets;

base-commit: 9b23fceb4158a3636ce4a2bda28ab03dcfa6a26f
-- 
2.43.0

