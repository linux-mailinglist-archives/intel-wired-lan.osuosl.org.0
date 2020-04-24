Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EF71B806C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1AD9B88028;
	Fri, 24 Apr 2020 20:17:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HtCxLXjWQNbI; Fri, 24 Apr 2020 20:17:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 521FA87FD3;
	Fri, 24 Apr 2020 20:17:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FE9F1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C8928803D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VfyrXC6f3exc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D80F188005
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
IronPort-SDR: Wob5vgvSiFTwXSTkfJW6k1eXFGGvnM4kyo/z5Dx6XEnD1rOTsi2Bn6GpbzvbPD0cwwyDVA9i57
 qoGDKJbwd4rg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:29 -0700
IronPort-SDR: 66GEftB/VnoZWnfeceGq/fnhQ3Ds0RcTi7DvR+x0gDsW+JvCEoqWUzp047R3ZnCHddeKHDaiiC
 1F7GKKOSm75g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474525"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:29 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:21 -0700
Message-Id: <20200424201623.10971-18-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 17/19] igc: Change return type from
 igc_disable_nfc_rule()
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

None of igc_disable_nfc_rule() callers actually check its returning
value. A closer look at why this function would fail shows that the
only situation is when we try to delete an ethertype or mac filter that
doesn't exist.

That situation is very unlikely so we can change igc_del_etype_filter()
and igc_del_mac_filter() logic to "if the filter doesn't exist, we are
done", and keep the logic in igc_disable_nfc_rule() callers simple.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 26 ++++++++---------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 64e372f38c6b..134523064fe9 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2260,18 +2260,16 @@ static int igc_add_mac_filter(struct igc_adapter *adapter,
  * @adapter: Pointer to adapter where the filter should be deleted from
  * @type: MAC address filter type (source or destination)
  * @addr: MAC address
- *
- * Return: 0 in case of success, negative errno code otherwise.
  */
-static int igc_del_mac_filter(struct igc_adapter *adapter,
-			      enum igc_mac_filter_type type, const u8 *addr)
+static void igc_del_mac_filter(struct igc_adapter *adapter,
+			       enum igc_mac_filter_type type, const u8 *addr)
 {
 	struct net_device *dev = adapter->netdev;
 	int index;
 
 	index = igc_find_mac_filter(adapter, type, addr);
 	if (index < 0)
-		return -ENOENT;
+		return;
 
 	if (index == 0) {
 		/* If this is the default filter, we don't actually delete it.
@@ -2289,8 +2287,6 @@ static int igc_del_mac_filter(struct igc_adapter *adapter,
 
 		igc_clear_mac_filter_hw(adapter, index);
 	}
-
-	return 0;
 }
 
 /**
@@ -2421,23 +2417,20 @@ static int igc_find_etype_filter(struct igc_adapter *adapter, u16 etype)
  * igc_del_etype_filter() - Delete ethertype filter.
  * @adapter: Pointer to adapter where the filter should be deleted from.
  * @etype: Ethertype value.
- *
- * Return: 0 in case of success, negative errno code otherwise.
  */
-static int igc_del_etype_filter(struct igc_adapter *adapter, u16 etype)
+static void igc_del_etype_filter(struct igc_adapter *adapter, u16 etype)
 {
 	struct igc_hw *hw = &adapter->hw;
 	int index;
 
 	index = igc_find_etype_filter(adapter, etype);
 	if (index < 0)
-		return -ENOENT;
+		return;
 
 	wr32(IGC_ETQF(index), 0);
 
 	netdev_dbg(adapter->netdev, "Delete ethertype filter: etype %04x",
 		   etype);
-	return 0;
 }
 
 static int igc_enable_nfc_rule(struct igc_adapter *adapter,
@@ -2478,8 +2471,8 @@ static int igc_enable_nfc_rule(struct igc_adapter *adapter,
 	return 0;
 }
 
-static int igc_disable_nfc_rule(struct igc_adapter *adapter,
-				const struct igc_nfc_rule *rule)
+static void igc_disable_nfc_rule(struct igc_adapter *adapter,
+				 const struct igc_nfc_rule *rule)
 {
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE)
 		igc_del_etype_filter(adapter, rule->filter.etype);
@@ -2498,8 +2491,6 @@ static int igc_disable_nfc_rule(struct igc_adapter *adapter,
 	if (rule->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
 		igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST,
 				   rule->filter.dst_addr);
-
-	return 0;
 }
 
 /**
@@ -2624,7 +2615,8 @@ static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
 
-	return igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, addr);
+	igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, addr);
+	return 0;
 }
 
 /**
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
