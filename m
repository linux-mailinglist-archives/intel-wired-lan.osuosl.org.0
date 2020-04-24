Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B33A31B8065
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3254D8756D;
	Fri, 24 Apr 2020 20:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vdUfWkA3HZMm; Fri, 24 Apr 2020 20:17:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9816287F92;
	Fri, 24 Apr 2020 20:17:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD8E01BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA8B086B89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iCTqOLn7iurR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A1BCD868C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:25 +0000 (UTC)
IronPort-SDR: 6JWxpcLdySDRr//eYO2KiRYxbsp3vODPFB9XPTsYSHDB1eJ2Hepxj/5Bv4KJM2Nq6uSB5affZK
 ca6VibkwIKPQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:25 -0700
IronPort-SDR: J2s5o8nejo0DtFgq3RkPZtm75acgxRk5M9YVdbbWKeV6mFD5NuSpK9p8toiQJ8L/slG4X8cUo/
 wuLaE5YsJ1Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474501"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:24 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:06 -0700
Message-Id: <20200424201623.10971-3-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 02/19] igc: Get rid of igc_max_channels()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The local function igc_max_channels() is a pointless wrapper around
igc_get_max_rss_queues(). This patch removes it and updates the callers
accordingly. It also does some cleanup on igc_get_max_rss_queues().

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 9 ++-------
 drivers/net/ethernet/intel/igc/igc_main.c    | 7 +------
 2 files changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 9023dc2a2446..ee2563ef24ac 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1508,18 +1508,13 @@ static int igc_set_rxfh(struct net_device *netdev, const u32 *indir,
 	return 0;
 }
 
-static unsigned int igc_max_channels(struct igc_adapter *adapter)
-{
-	return igc_get_max_rss_queues(adapter);
-}
-
 static void igc_get_channels(struct net_device *netdev,
 			     struct ethtool_channels *ch)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
 	/* Report maximum channels */
-	ch->max_combined = igc_max_channels(adapter);
+	ch->max_combined = igc_get_max_rss_queues(adapter);
 
 	/* Report info for other vector */
 	if (adapter->flags & IGC_FLAG_HAS_MSIX) {
@@ -1546,7 +1541,7 @@ static int igc_set_channels(struct net_device *netdev,
 		return -EINVAL;
 
 	/* Verify the number of channels doesn't exceed hw limits */
-	max_combined = igc_max_channels(adapter);
+	max_combined = igc_get_max_rss_queues(adapter);
 	if (count > max_combined)
 		return -EINVAL;
 
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 73140938ec2c..04f7f4112205 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2732,12 +2732,7 @@ void igc_set_flag_queue_pairs(struct igc_adapter *adapter,
 
 unsigned int igc_get_max_rss_queues(struct igc_adapter *adapter)
 {
-	unsigned int max_rss_queues;
-
-	/* Determine the maximum number of RSS queues supported. */
-	max_rss_queues = IGC_MAX_RX_QUEUES;
-
-	return max_rss_queues;
+	return IGC_MAX_RX_QUEUES;
 }
 
 static void igc_init_queue_configuration(struct igc_adapter *adapter)
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
