Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 704F179CBF9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 11:37:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAA386114B;
	Tue, 12 Sep 2023 09:37:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAA386114B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694511438;
	bh=v8sHc8euunt0twb02QbjOfXaK5tfTDVkDtWsnxq9Ycc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=y7kbI7UJeqvYdQs8WGOkzTIlyTMcD2futbmLPeq3eFVwdx35rDfuDr2XmW4wfe5jp
	 E4kbQ7st0+GYcFyIdSTzCNu0RFfVGbW5k16/XRm7pdEr6o78wTkTvROV/ih9VVOVV9
	 l+JFbuSBqhanx2QgsCvKb9m3ZT4uMX4ziDuMrmXvSFg/KIZ0g3rI4AkwuaL71C6Fcg
	 ggmR4RAksv4p7aFehykfpst4dQGgDbT4a2LOGNa5LMJZjV7H9wpb1hWJ2XqOIXCPNy
	 w0i/hVLdKAAH9MvF6lye03LgHbUmr4V5K0k5vQrjTCClyoUh4qbV3crruYCULVdxqE
	 61+WGl9fANlog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7NH9W2eCQjO7; Tue, 12 Sep 2023 09:37:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 027D061131;
	Tue, 12 Sep 2023 09:37:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 027D061131
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC7721BF357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 09:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D34841929
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 09:37:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D34841929
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iNV25e9SkbI4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 09:37:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3351541950
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 09:37:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3351541950
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="444761527"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="444761527"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 02:37:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="833845251"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="833845251"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Sep 2023 02:37:08 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Sep 2023 11:29:36 +0200
Message-Id: <20230912092936.21875-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694511430; x=1726047430;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Q0XvWGuv+Rb2JpY7zOgqvgfqYsBDl3nyJxfX3/aKmQg=;
 b=AxiB2k63nwsTSuKIIrK0tt/xZqP6odLs78zy3gdxOyrrhHNiGQZmuzet
 A8nUxIb1bm9iPuXHHl841Qs+tMIl3yLVrlmyWP5rnAEmGrIBX1jVWZ3AW
 wGBl6h3OASmI6DxUHG3uaLb06Kzw/TFqoMTaiBLJ6enidb2wnkWS4C9XZ
 D/8Dgnr+OSRhNON0bIXVRJp8jPdmU52j4OXEmncLTq2lwR+JVXCaY6vMe
 ggGqcl3VAEfTe16Wz9wnuTiHZWRiBdRtI0eOzU3XwCpDUfSTK5OT0FyFw
 R8HK5QASoTfBDPItK+Kl09OX9V/diaU9H8ZUOA8+HS0cchtxsV52hnIQQ
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AxiB2k63
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Extend rx_errors
 calculation
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
Cc: anthony.l.nguyen@intel.com, Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently we are only including crcerrs (CRC Error Count) and
rlec (Receive Length Error Count) in the PF netdev's rx_error counter.
There are also other causes of Rx errors that the device supports and
reports via Ethtool. Accumulate all Rx errors in the PF netdev's
rx_error counter.

Error counters added for:
Illegal Byte Error, Checksum Bad, Receive [Over/Under]size,
Receive Fragment and Receive Jabber.

The above were added in order to align statistics with other products.

Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index dd03b017dfc5..0dd91cf1d89b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7160,6 +7160,7 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
 	netdev->stats.tx_packets = packets;
 
 	hwstats->crcerrs += IXGBE_READ_REG(hw, IXGBE_CRCERRS);
+	hwstats->illerrc += IXGBE_READ_REG(hw, IXGBE_ILLERRC);
 
 	/* 8 register reads */
 	for (i = 0; i < 8; i++) {
@@ -7313,7 +7314,15 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
 	netdev->stats.multicast = hwstats->mprc;
 
 	/* Rx Errors */
-	netdev->stats.rx_errors = hwstats->crcerrs + hwstats->rlec;
+	netdev->stats.rx_errors = hwstats->crcerrs +
+				  hwstats->illerrc +
+				  adapter->hw_csum_rx_error +
+				  hwstats->rlec +
+				  hwstats->ruc +
+				  hwstats->rfc +
+				  hwstats->roc +
+				  hwstats->rjc;
+
 	netdev->stats.rx_dropped = 0;
 	netdev->stats.rx_length_errors = hwstats->rlec;
 	netdev->stats.rx_crc_errors = hwstats->crcerrs;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
