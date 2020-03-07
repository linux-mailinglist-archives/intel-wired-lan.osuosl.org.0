Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6066D17C9D0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Mar 2020 01:37:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 69501878A6;
	Sat,  7 Mar 2020 00:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wS7kjCwUxGi2; Sat,  7 Mar 2020 00:37:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA793878A8;
	Sat,  7 Mar 2020 00:37:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D1DCE1BF9C2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2020 00:37:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C0A40878A6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2020 00:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QoqfY2ayFtcR for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Mar 2020 00:37:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91A49878A4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Mar 2020 00:37:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 16:37:00 -0800
X-IronPort-AV: E=Sophos;i="5.70,524,1574150400"; d="scan'208";a="352862617"
Received: from aguedesl-mac01.jf.intel.com (HELO localhost) ([10.24.12.191])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 16:37:00 -0800
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Mar 2020 16:36:42 -0800
Message-Id: <20200307003642.25590-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] igc: Remove dead code related to flower
 filter
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

IGC driver has no support for tc-flower filters so this patch removes
some leftover code, probably copied from IGB driver by mistake.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 1 -
 drivers/net/ethernet/intel/igc/igc_main.c | 3 ---
 2 files changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index b6137648471d..4823b8ead547 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -185,7 +185,6 @@ struct igc_adapter {
 
 	/* RX network flow classification support */
 	struct hlist_head nfc_filter_list;
-	struct hlist_head cls_flower_list;
 	unsigned int nfc_filter_count;
 
 	/* lock for RX network flow classification filter */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 025f2e439aef..21c8696918f9 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3483,9 +3483,6 @@ static void igc_nfc_filter_exit(struct igc_adapter *adapter)
 	hlist_for_each_entry(rule, &adapter->nfc_filter_list, nfc_node)
 		igc_erase_filter(adapter, rule);
 
-	hlist_for_each_entry(rule, &adapter->cls_flower_list, nfc_node)
-		igc_erase_filter(adapter, rule);
-
 	spin_unlock(&adapter->nfc_lock);
 }
 
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
