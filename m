Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6ED10A7BF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Nov 2019 02:04:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CBF188046;
	Wed, 27 Nov 2019 01:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ns2wb2pjOwKb; Wed, 27 Nov 2019 01:04:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8784881A0;
	Wed, 27 Nov 2019 01:04:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D3F51BF357
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2019 01:04:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A7BA87583
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2019 01:04:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5RIz9cn+diWt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Nov 2019 01:04:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB7138757F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Nov 2019 01:04:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 17:04:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="233934680"
Received: from vcostago-desk1.jf.intel.com ([10.54.70.26])
 by fmsmga004.fm.intel.com with ESMTP; 26 Nov 2019 17:04:45 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Nov 2019 17:04:34 -0800
Message-Id: <20191127010435.1733698-5-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127010435.1733698-1-vinicius.gomes@intel.com>
References: <20191127010435.1733698-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue PATCH v2 4/5] igc: Add support for
 ethtool GET_TS_INFO command
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

This command allows igc to report what types of timestamping are
supported. ptp4l uses this to detect if the hardware supports
timestamping.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 34 ++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index ac98f1d96892..8f8a702b3dd4 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1600,6 +1600,39 @@ static int igc_set_channels(struct net_device *netdev,
 	return 0;
 }
 
+static int igc_get_ts_info(struct net_device *dev,
+			   struct ethtool_ts_info *info)
+{
+	struct igc_adapter *adapter = netdev_priv(dev);
+
+	if (adapter->ptp_clock)
+		info->phc_index = ptp_clock_index(adapter->ptp_clock);
+	else
+		info->phc_index = -1;
+
+	switch (adapter->hw.mac.type) {
+	case igc_i225:
+		info->so_timestamping =
+			SOF_TIMESTAMPING_TX_SOFTWARE |
+			SOF_TIMESTAMPING_RX_SOFTWARE |
+			SOF_TIMESTAMPING_SOFTWARE |
+			SOF_TIMESTAMPING_TX_HARDWARE |
+			SOF_TIMESTAMPING_RX_HARDWARE |
+			SOF_TIMESTAMPING_RAW_HARDWARE;
+
+		info->tx_types =
+			BIT(HWTSTAMP_TX_OFF) |
+			BIT(HWTSTAMP_TX_ON);
+
+		info->rx_filters = BIT(HWTSTAMP_FILTER_NONE);
+		info->rx_filters |= BIT(HWTSTAMP_FILTER_ALL);
+
+		return 0;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
 static u32 igc_get_priv_flags(struct net_device *netdev)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
@@ -1847,6 +1880,7 @@ static const struct ethtool_ops igc_ethtool_ops = {
 	.get_rxfh_indir_size	= igc_get_rxfh_indir_size,
 	.get_rxfh		= igc_get_rxfh,
 	.set_rxfh		= igc_set_rxfh,
+	.get_ts_info            = igc_get_ts_info,
 	.get_channels		= igc_get_channels,
 	.set_channels		= igc_set_channels,
 	.get_priv_flags		= igc_get_priv_flags,
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
