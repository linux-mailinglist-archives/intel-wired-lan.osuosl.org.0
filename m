Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF381B8069
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2020 22:17:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CC6102202E;
	Fri, 24 Apr 2020 20:17:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8mTgFHm1ugUM; Fri, 24 Apr 2020 20:17:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9E30A204AE;
	Fri, 24 Apr 2020 20:17:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9189E1BF83C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8E356868A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I7-Ug73YXNQ3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8E12886B59
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2020 20:17:28 +0000 (UTC)
IronPort-SDR: +EYm+G8qTWVk/SwUMyokdJWC9Orh5M4ZZnCAnwXNhHrpHAvQRQHVkDkDkmM/V1cjYwhgNFx4+R
 B50lyXZeBlxA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 13:17:27 -0700
IronPort-SDR: SREIDNVVBjWpiHq9iy0TaCCsSWGpydT0b3QX5irCG7SylbahV7mK9aPkowt5JuupflH1BSxVxW
 drhm4pRAE54A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,313,1583222400"; d="scan'208";a="335474513"
Received: from kleandre-mobl.amr.corp.intel.com ([10.213.164.39])
 by orsmga001.jf.intel.com with ESMTP; 24 Apr 2020 13:17:27 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Apr 2020 13:16:15 -0700
Message-Id: <20200424201623.10971-12-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424201623.10971-1-andre.guedes@intel.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 11/19] igc: Fix NFC rule overwrite cases
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

When the 'loc' argument is passed in ethtool, the input rule overwrites
any rule present in that location. In this situation we must disable the
old rule otherwise it is left enabled in hardware. This patch fixes
the issue by always calling igc_disable_nfc_rule() when deleting the
old rule, no matter the value of 'input' argument.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 38ac61c04e5c..e975efea4a15 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1270,8 +1270,7 @@ static int igc_ethtool_update_nfc_rule(struct igc_adapter *adapter,
 
 	/* if there is an old rule occupying our place remove it */
 	if (rule && rule->location == location) {
-		if (!input)
-			err = igc_disable_nfc_rule(adapter, rule);
+		err = igc_disable_nfc_rule(adapter, rule);
 
 		hlist_del(&rule->nfc_node);
 		kfree(rule);
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
