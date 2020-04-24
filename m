Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3951B806B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98A5486D1E;
	Fri, 24 Apr 2020 20:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bTmcWXTblyou; Fri, 24 Apr 2020 20:17:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F0FC186D4D;
	Fri, 24 Apr 2020 20:17:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 848A81BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F64687F94
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gj6J6tjCqy6s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AC4FF87FED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
IronPort-SDR: du274H7SiaT/Mvhi7MDqQufgx/9Oh4UDRrVpRYu95jFtmqPCdZTfgBWcX4+lIuUzaPxWyFRHLo
 rR8PD/yb2bgg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:29 -0700
IronPort-SDR: 9gT3KZT1Xxz/M2i7+hGM1vWB8AQIvMctQrV9am0KHG3DbOEK8KYmbZDuPUp1xULL8vgWxVUrfS
 H3yJ73PFqsEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474524"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:28 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:20 -0700
Message-Id: <20200424201623.10971-17-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 16/19] igc: Fix NFC rule validation
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

If we try to overwrite an existing rule with the same filter but
different action, we get EEXIST error as shown below.

$ ethtool -N eth0 flow-type ether dst <MACADDR> action 1 loc 10
$ ethtool -N eth0 flow-type ether dst <MACADDR> action 2 loc 10
rmgr: Cannot insert RX class rule: File exists

The second command is expected to overwrite the previous rule in location
10 and succeed.

This patch fixes igc_ethtool_check_nfc_rule() so it also checks the
rules location. In case they match, the rule under evaluation should not
be considered invalid.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index de9ab3c8179a..32bc77af71dd 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1225,8 +1225,8 @@ static void igc_ethtool_init_nfc_rule(struct igc_nfc_rule *rule,
  * Rules with both destination and source MAC addresses are considered invalid
  * since the driver doesn't support them.
  *
- * Also, if there is already another rule with the same filter, @rule is
- * considered invalid.
+ * Also, if there is already another rule with the same filter in a different
+ * location, @rule is considered invalid.
  *
  * Context: Expects adapter->nfc_rule_lock to be held by caller.
  *
@@ -1252,7 +1252,8 @@ static int igc_ethtool_check_nfc_rule(struct igc_adapter *adapter,
 
 	list_for_each_entry(tmp, &adapter->nfc_rule_list, list) {
 		if (!memcmp(&rule->filter, &tmp->filter,
-			    sizeof(rule->filter))) {
+			    sizeof(rule->filter)) &&
+		    tmp->location != rule->location) {
 			netdev_dbg(dev, "Rule already exists");
 			return -EEXIST;
 		}
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
