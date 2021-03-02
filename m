Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 098F63296AD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 08:46:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64F4F6F66C;
	Tue,  2 Mar 2021 07:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oXdr5p6NMwTR; Tue,  2 Mar 2021 07:46:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48E936F65A;
	Tue,  2 Mar 2021 07:46:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1448D1BF350
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 07:46:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02BE243015
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 07:46:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dIK6l3fle9yO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 07:46:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BFC842FDF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 07:46:50 +0000 (UTC)
IronPort-SDR: 18IIFaSfySM42MCIr+VhOApDXg3fQegdczNEtmjnry9FJBtR/zhCWFHgfbk9hgdeBctHh6L5sF
 n7TLZ7pBBrEQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="166599160"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="166599160"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 23:46:40 -0800
IronPort-SDR: d1UTG6hn00mpyHMD/eW8TyTJKDKmc/U4dEXpt1XLErUrC+xYvsVzaR2sj+3Qy7AHCpgeLrslTk
 Jn+es2pEw6kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="383441871"
Received: from amlin-018-147.igk.intel.com ([10.102.18.147])
 by orsmga002.jf.intel.com with ESMTP; 01 Mar 2021 23:46:38 -0800
From: Eryk Rybak <eryk.roch.rybak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Mar 2021 08:46:27 +0100
Message-Id: <20210302074627.14349-1-eryk.roch.rybak@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] i40e: Fix display statistics for
 veb_tc
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
Cc: Eryk Rybak <eryk.roch.rybak@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If veb-stats was enabled, the ethtool stats triggered a warning
due to invalid size: 'unexpected stat size for veb.tc_%u_tx_packets'.
This was due to an incorrect structure definition for the statistics.
Structures and functions have been improved in line with requirements
for the presentation of statistics, in particular for the functions:
'i40e_add_ethtool_stats' and 'i40e_add_stat_strings'.

Fixes: 1510ae0be2a4 ("i40e: convert VEB TC stats to use an i40e_stats array")
Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 52 ++++++++++++++++---
 1 file changed, 46 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index a8a2b5f683a2..16301c58466a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -232,6 +232,8 @@ static void __i40e_add_stat_strings(u8 **p, const struct i40e_stats stats[],
 	I40E_STAT(struct i40e_vsi, _name, _stat)
 #define I40E_VEB_STAT(_name, _stat) \
 	I40E_STAT(struct i40e_veb, _name, _stat)
+#define I40E_VEB_TC_STAT(_name, _stat) \
+	I40E_STAT(struct i40e_cp_veb_tc_stats, _name, _stat)
 #define I40E_PFC_STAT(_name, _stat) \
 	I40E_STAT(struct i40e_pfc_stats, _name, _stat)
 #define I40E_QUEUE_STAT(_name, _stat) \
@@ -266,11 +268,18 @@ static const struct i40e_stats i40e_gstrings_veb_stats[] = {
 	I40E_VEB_STAT("veb.rx_unknown_protocol", stats.rx_unknown_protocol),
 };
 
+struct i40e_cp_veb_tc_stats {
+	u64 tc_rx_packets;
+	u64 tc_rx_bytes;
+	u64 tc_tx_packets;
+	u64 tc_tx_bytes;
+};
+
 static const struct i40e_stats i40e_gstrings_veb_tc_stats[] = {
-	I40E_VEB_STAT("veb.tc_%u_tx_packets", tc_stats.tc_tx_packets),
-	I40E_VEB_STAT("veb.tc_%u_tx_bytes", tc_stats.tc_tx_bytes),
-	I40E_VEB_STAT("veb.tc_%u_rx_packets", tc_stats.tc_rx_packets),
-	I40E_VEB_STAT("veb.tc_%u_rx_bytes", tc_stats.tc_rx_bytes),
+	I40E_VEB_TC_STAT("veb.tc_%u_tx_packets", tc_tx_packets),
+	I40E_VEB_TC_STAT("veb.tc_%u_tx_bytes", tc_tx_bytes),
+	I40E_VEB_TC_STAT("veb.tc_%u_rx_packets", tc_rx_packets),
+	I40E_VEB_TC_STAT("veb.tc_%u_rx_bytes", tc_rx_bytes),
 };
 
 static const struct i40e_stats i40e_gstrings_misc_stats[] = {
@@ -2216,6 +2225,29 @@ static int i40e_get_sset_count(struct net_device *netdev, int sset)
 	}
 }
 
+/**
+ * i40e_get_veb_tc_stats - copy VEB TC statistics to formatted structure
+ * @tc: the TC statistics in VEB structure (veb->tc_stats)
+ * @i: the index of traffic class in (veb->tc_stats) structure to copy
+ *
+ * Copy VEB TC statistics from structure of arrays (veb->tc_stats) to
+ * one dimensional structure i40e_cp_veb_tc_stats.
+ * Produce formatted i40e_cp_veb_tc_stats structure of the VEB TC
+ * statistics for the given TC.
+ **/
+static struct i40e_cp_veb_tc_stats
+i40e_get_veb_tc_stats(struct i40e_veb_tc_stats *tc, unsigned int i)
+{
+	struct i40e_cp_veb_tc_stats veb_tc = {
+		.tc_rx_packets = tc->tc_rx_packets[i],
+		.tc_rx_bytes = tc->tc_rx_bytes[i],
+		.tc_tx_packets = tc->tc_tx_packets[i],
+		.tc_tx_bytes = tc->tc_tx_bytes[i],
+	};
+
+	return veb_tc;
+}
+
 /**
  * i40e_get_pfc_stats - copy HW PFC statistics to formatted structure
  * @pf: the PF device structure
@@ -2300,8 +2332,16 @@ static void i40e_get_ethtool_stats(struct net_device *netdev,
 			       i40e_gstrings_veb_stats);
 
 	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++)
-		i40e_add_ethtool_stats(&data, veb_stats ? veb : NULL,
-				       i40e_gstrings_veb_tc_stats);
+		if (veb_stats) {
+			struct i40e_cp_veb_tc_stats veb_tc =
+				i40e_get_veb_tc_stats(&veb->tc_stats, i);
+
+			i40e_add_ethtool_stats(&data, &veb_tc,
+					       i40e_gstrings_veb_tc_stats);
+		} else {
+			i40e_add_ethtool_stats(&data, NULL,
+					       i40e_gstrings_veb_tc_stats);
+		}
 
 	i40e_add_ethtool_stats(&data, pf, i40e_gstrings_stats);
 

base-commit: d310ec03a34e92a77302edb804f7d68ee4f01ba0
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
