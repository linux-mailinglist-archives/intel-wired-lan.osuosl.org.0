Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDBA3CC464
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jul 2021 18:14:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFB8D606EF;
	Sat, 17 Jul 2021 16:13:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w51EZX9Wi3Jy; Sat, 17 Jul 2021 16:13:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC40F606A9;
	Sat, 17 Jul 2021 16:13:58 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 87F731BF59C
 for <intel-wired-lan@osuosl.org>; Sat, 17 Jul 2021 16:13:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 765D483DAF
 for <intel-wired-lan@osuosl.org>; Sat, 17 Jul 2021 16:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3b5tkymcZYFN for <intel-wired-lan@osuosl.org>;
 Sat, 17 Jul 2021 16:13:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B54B683D54
 for <intel-wired-lan@osuosl.org>; Sat, 17 Jul 2021 16:13:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10048"; a="210858214"
X-IronPort-AV: E=Sophos;i="5.84,248,1620716400"; d="scan'208";a="210858214"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2021 09:12:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,248,1620716400"; d="scan'208";a="495277905"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.114])
 by orsmga001.jf.intel.com with ESMTP; 17 Jul 2021 09:12:37 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sun, 18 Jul 2021 00:12:22 +0800
Message-Id: <20210717161222.24288-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH v2] igc: Increase timeout value for Speed
 100/1000/2500
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
Cc: muhammad.husaini.zulkifli@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As the cycle time is set to maximum of 1s, the TX Hang timeout need to
be increase to avoid possible TX Hang.

There is no dedicated number specific in data sheet for the timeout factor.
Timeout factor was determined during the debugging to solve the "Tx Hang"
issues that happen in some cases mainly during ETF(Earliest TxTime First).

This can be test by using TSN Schedule Tx Tools udp_tai sample application.

Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Acked-by: Sasha Neftin <sasha.neftin@intel.com>

---

V1 -> V2: Add reason for the timeout factor

---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 4959078e111e..380e21e56398 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5321,7 +5321,9 @@ static void igc_watchdog_task(struct work_struct *work)
 				adapter->tx_timeout_factor = 14;
 				break;
 			case SPEED_100:
-				/* maybe add some timeout factor ? */
+			case SPEED_1000:
+			case SPEED_2500:
+				adapter->tx_timeout_factor = 7;
 				break;
 			}
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
