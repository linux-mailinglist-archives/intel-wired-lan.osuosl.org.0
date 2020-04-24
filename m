Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6753C1B805C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9B1087847;
	Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gbPpNe3XvONi; Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD06B87F94;
	Fri, 24 Apr 2020 20:17:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DD4F1BF9C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4AC17868BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q0zMax_lpK7N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C59CC86B59
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:25 +0000 (UTC)
IronPort-SDR: WiCtfAgP8/BY2H/RZNFIHkD4plnjm/qhjpJl5Fb1H0qXak87R+l6D2BzT/jg1xAesLfvvUUnNe
 vQuejrHcVBfw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:25 -0700
IronPort-SDR: ivaEIbqkFpE9S+7GVndo4I/GRzp8CXUgT1/4M0VpPR676mlvOPSdrX71PYtS2DgUObntqyjEW5
 WSYz+N3WWByA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474503"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:25 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:07 -0700
Message-Id: <20200424201623.10971-4-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 03/19] igc: Cleanup _get|set_rxnfc ethtool
 ops
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

This patch does a trivial change in igc_ethtool_get_rxnfc() and
igc_ethtool_set_rxnfc() to simplify their logic.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 33 ++++++--------------
 1 file changed, 10 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index ee2563ef24ac..c67c3ead323f 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1055,31 +1055,23 @@ static int igc_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 			 u32 *rule_locs)
 {
 	struct igc_adapter *adapter = netdev_priv(dev);
-	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
 	case ETHTOOL_GRXRINGS:
 		cmd->data = adapter->num_rx_queues;
-		ret = 0;
-		break;
+		return 0;
 	case ETHTOOL_GRXCLSRLCNT:
 		cmd->rule_cnt = adapter->nfc_filter_count;
-		ret = 0;
-		break;
+		return 0;
 	case ETHTOOL_GRXCLSRULE:
-		ret = igc_get_ethtool_nfc_entry(adapter, cmd);
-		break;
+		return igc_get_ethtool_nfc_entry(adapter, cmd);
 	case ETHTOOL_GRXCLSRLALL:
-		ret = igc_get_ethtool_nfc_all(adapter, cmd, rule_locs);
-		break;
+		return igc_get_ethtool_nfc_all(adapter, cmd, rule_locs);
 	case ETHTOOL_GRXFH:
-		ret = igc_get_rss_hash_opts(adapter, cmd);
-		break;
+		return igc_get_rss_hash_opts(adapter, cmd);
 	default:
-		break;
+		return -EOPNOTSUPP;
 	}
-
-	return ret;
 }
 
 #define UDP_RSS_FLAGS (IGC_FLAG_RSS_FIELD_IPV4_UDP | \
@@ -1418,22 +1410,17 @@ static int igc_del_ethtool_nfc_entry(struct igc_adapter *adapter,
 static int igc_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
 {
 	struct igc_adapter *adapter = netdev_priv(dev);
-	int ret = -EOPNOTSUPP;
 
 	switch (cmd->cmd) {
 	case ETHTOOL_SRXFH:
-		ret = igc_set_rss_hash_opt(adapter, cmd);
-		break;
+		return igc_set_rss_hash_opt(adapter, cmd);
 	case ETHTOOL_SRXCLSRLINS:
-		ret = igc_add_ethtool_nfc_entry(adapter, cmd);
-		break;
+		return igc_add_ethtool_nfc_entry(adapter, cmd);
 	case ETHTOOL_SRXCLSRLDEL:
-		ret = igc_del_ethtool_nfc_entry(adapter, cmd);
+		return igc_del_ethtool_nfc_entry(adapter, cmd);
 	default:
-		break;
+		return -EOPNOTSUPP;
 	}
-
-	return ret;
 }
 
 void igc_write_rss_indir_tbl(struct igc_adapter *adapter)
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
