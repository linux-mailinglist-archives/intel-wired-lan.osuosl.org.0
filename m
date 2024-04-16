Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6178A6BC0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 15:05:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D9F960819;
	Tue, 16 Apr 2024 13:05:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FvCrVdYOCEK1; Tue, 16 Apr 2024 13:05:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCA106085B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713272708;
	bh=vnCQbLIpTOLEYHqzI8xr5fU/2pXfqerUVIbsOB5PJDY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HhKg4HB9Be1WgpXuoRdVP1Rj8ZwOounQepAQvDgb15fQ0O4RmvCXhTrNyVMg0FBGz
	 sLTVlXGWtmoElhYwSv7zLMQb0EhnmLlef2NWdqGd/xFkpCedBg74tY/A9aXyc5a+2n
	 DwLZ2yy19RTCGr1pzzJPbliw6oQKk2+346BNqp7zKePkf2/GWhUshQo4Sfe9gbw8Sa
	 BGkxQmM09AwFnns+jjj8+2td+QwD6owkMuVUNYUgF0PcI7CVYE9TIf/WFbG5cpMDOZ
	 4cyC2m62ZJHsvhGVUAjrBzcjxbvyfXb6SMBnQGB3hyQBBK1lIPvp1l7NUI5JWoqJOS
	 Qco55e6vGSVvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCA106085B;
	Tue, 16 Apr 2024 13:05:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3A4F1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 13:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AD9EE80DC7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 13:05:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ITUO_zZwsxTg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 13:05:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ECB7B80DC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECB7B80DC6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ECB7B80DC6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 13:05:00 +0000 (UTC)
X-CSE-ConnectionGUID: JSAcIxpJT7y8ji4XAPpB6Q==
X-CSE-MsgGUID: fDHI/sO1S/2TIzvxuYaoUA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8569443"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="8569443"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 06:04:59 -0700
X-CSE-ConnectionGUID: fDp3iuRyQJiH1ahnVv75ZQ==
X-CSE-MsgGUID: KKXIiKUHRK6bNxue6PaYcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="22321830"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 16 Apr 2024 06:04:55 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id DDBE332EA4;
 Tue, 16 Apr 2024 14:04:50 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Tue, 16 Apr 2024 14:58:54 +0200
Message-ID: <20240416125856.1263314-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713272702; x=1744808702;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UEzTGUe3r7acXf8Yb95hdOs5Y9KDHJwibjjQOPb+gas=;
 b=AFZYUIscffc86bT6MVhHvitXMFgB+UI+KfVDMDreVh3Otp66ElKfouLO
 eXpQ02ssqO30suGdfoPNH2X5SDM/wXTFfv7bS2dlO+zl7nvAgEpPvzDAs
 7jDqE/HX+hNZo3QZBpltA1nNOFoINF3szyLIYynCPySHljpiTq7Qtnn2m
 R6GfcWN3uU51xeQiJPR1kQiHaSy3SbumnrUUAL6SQ94LuGU3nekTI/igB
 hgchFMxGMy4zE7p5cKNeGrKPXFFktY7P/QpQugWGOZCszllqkvJHJ34FU
 nvrwSx4J/4L+b1jKH3aIaKAHqiZRwUFexHM/ITNwMuIEo+EZls5p9SR4s
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AFZYUIsc
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Interpret .set_channels()
 input differently
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

