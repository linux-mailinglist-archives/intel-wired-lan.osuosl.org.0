Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DD831FD36
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 17:37:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E432887136;
	Fri, 19 Feb 2021 16:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FL8cjVHxdDeh; Fri, 19 Feb 2021 16:37:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F700870E5;
	Fri, 19 Feb 2021 16:37:09 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 054F81BF287
 for <intel-wired-lan@osuosl.org>; Fri, 19 Feb 2021 16:37:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E563960705
 for <intel-wired-lan@osuosl.org>; Fri, 19 Feb 2021 16:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yNSUWEOSVhS5 for <intel-wired-lan@osuosl.org>;
 Fri, 19 Feb 2021 16:37:05 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 76BAC60701; Fri, 19 Feb 2021 16:37:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 89DE66070A
 for <intel-wired-lan@osuosl.org>; Fri, 19 Feb 2021 16:36:57 +0000 (UTC)
IronPort-SDR: TvifYO4GMSPelEqG5IQdj45W5aKMyKvh1eWt6oVqN4gntqIbqZ21ZWGAUHnnxzQsAVyyG88lg+
 m2uWlj7oIXBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="183949654"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="183949654"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 08:36:57 -0800
IronPort-SDR: l1vH7CJYZ0uVMiBDxSPB1aQ682IvAyWuu2/msqtLjjKE3hYFNQNz/Hhn6DiNPhoBq3/Rtwzifz
 x6vokrVFZW9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="581737140"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.114])
 by orsmga005.jf.intel.com with ESMTP; 19 Feb 2021 08:36:55 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sat, 20 Feb 2021 00:36:48 +0800
Message-Id: <20210219163648.14581-3-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210219163648.14581-1-muhammad.husaini.zulkifli@intel.com>
References: <20210219163648.14581-1-muhammad.husaini.zulkifli@intel.com>
Subject: [Intel-wired-lan] [PATCH net v1 2/2] igc: Fix Supported Pause Frame
 Link Setting
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
Cc: muhammad.husaini.zulkifli@intel.com, mallikarjuna.chilakala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The Supported Pause Frame always display "No" eventhough the Advertised
pause frame showing the correct setting based on the pause parameters via
ethtool. Set bit in link_ksettings to "Supported" for Pause Frame.

Before output:
Supported pause frame use: No

Expected output:
Supported pause frame use: Symmetric

Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Reviewed-by: Malli C <mallikarjuna.chilakala@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 67a4aed45fc2..8722294ab90c 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1711,6 +1711,9 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 						     Autoneg);
 	}
 
+	/* Set pause flow control settings */
+	ethtool_link_ksettings_add_link_mode(cmd, supported, Pause);
+
 	switch (hw->fc.requested_mode) {
 	case igc_fc_full:
 		ethtool_link_ksettings_add_link_mode(cmd, advertising, Pause);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
