Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 894F818A8DE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 00:02:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3824A203DB;
	Wed, 18 Mar 2020 23:02:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sxY1D5DC+gMS; Wed, 18 Mar 2020 23:02:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D485F20449;
	Wed, 18 Mar 2020 23:02:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F3AA1BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6BA328665F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N_uNzvTYt64E for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 23:02:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DC05186610
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:09 +0000 (UTC)
IronPort-SDR: bn7V4pX1CzCKUR8bGTWyK7AXoWvFiRwX73mR2G8EAqsrrDbYA7gTXOQXnNt1aBLX8DlEPxC/9r
 YGxd2HkHUGrw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:02:09 -0700
IronPort-SDR: ryoey9QxHtf1+V3mXyAqN9iaMGF+w9eumEWzJqbSSu6Fj1KSuPneJNyxx8fESsyv4Qh9SW9DD1
 ASD2WBuV9wOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="248341779"
Received: from ymtomada-mobl.amr.corp.intel.com ([10.251.21.179])
 by orsmga006.jf.intel.com with ESMTP; 18 Mar 2020 16:02:09 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Mar 2020 16:00:56 -0700
Message-Id: <20200318230102.36952-7-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200318230102.36952-1-andre.guedes@intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 06/12] igc: Improve address check in
 igc_del_mac_filter()
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

igc_add_mac_filter() doesn't allow filters with invalid MAC address to
be added to adapter->mac_table so, in igc_del_mac_filter(), we can early
return if MAC address is invalid. No need to traverse the table.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 0ca7afaf6fc7..a71f1a5ca27c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2247,7 +2247,7 @@ static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
 	int rar_entries = hw->mac.rar_entry_count;
 	int i;
 
-	if (is_zero_ether_addr(addr))
+	if (!is_valid_ether_addr(addr))
 		return -EINVAL;
 
 	/* Search for matching entry in the MAC table based on given address
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
