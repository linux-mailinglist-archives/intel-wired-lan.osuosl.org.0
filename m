Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 324091B806F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D77A5204C0;
	Fri, 24 Apr 2020 20:17:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fo9agnirsdcS; Fri, 24 Apr 2020 20:17:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A4C392156E;
	Fri, 24 Apr 2020 20:17:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 24DBA1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1EA8087FF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VDwgJp-cuE1p for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5357A88021
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:30 +0000 (UTC)
IronPort-SDR: w1YQUq+OUmGihPgOjm1GOIcv4nxnwUR6ZgupsPqlcXfz4IFGe4b6oBpYNiLR7HE8iFBGMUdCOg
 qJuDF4RdXl1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:30 -0700
IronPort-SDR: q5N0OVd9FAl6OxPfnDzmivB/GnxcWAkqJ3RqrM2Rhpjq74e9WMua+QQ2ELpiV8ybASQVTTzU8h
 UdgGg10LudKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474528"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:30 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:23 -0700
Message-Id: <20200424201623.10971-20-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 19/19] igc: Remove igc_nfc_rule_exit()
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

During igc_down(), we call igc_nfc_rule_exit() which traverse the NFC
rule list disabling filters one by one. Later on in igc_down() flow
we issue an hardware reset which also clear all filters.  Since we
already reset the hardware, we don't actually need to disable each
filter manually. In order to simplify the code, this patch removes
igc_nfc_rule() altogether.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 38327d9ec385..eaf797fcf581 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2592,18 +2592,6 @@ static void igc_restore_nfc_rules(struct igc_adapter *adapter)
 	mutex_unlock(&adapter->nfc_rule_lock);
 }
 
-static void igc_nfc_rule_exit(struct igc_adapter *adapter)
-{
-	struct igc_nfc_rule *rule;
-
-	mutex_lock(&adapter->nfc_rule_lock);
-
-	list_for_each_entry(rule, &adapter->nfc_rule_list, list)
-		igc_disable_nfc_rule(adapter, rule);
-
-	mutex_unlock(&adapter->nfc_rule_lock);
-}
-
 static int igc_uc_sync(struct net_device *netdev, const unsigned char *addr)
 {
 	struct igc_adapter *adapter = netdev_priv(netdev);
@@ -3822,8 +3810,6 @@ void igc_down(struct igc_adapter *adapter)
 	wr32(IGC_RCTL, rctl & ~IGC_RCTL_EN);
 	/* flush and sleep below */
 
-	igc_nfc_rule_exit(adapter);
-
 	/* set trans_start so we don't get spurious watchdogs during reset */
 	netif_trans_update(netdev);
 
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
