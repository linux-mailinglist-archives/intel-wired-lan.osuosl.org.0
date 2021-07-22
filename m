Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFE13D1AC6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jul 2021 02:34:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A9E382C18;
	Thu, 22 Jul 2021 00:34:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ausfDGGnPN0K; Thu, 22 Jul 2021 00:34:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 43CA1828F8;
	Thu, 22 Jul 2021 00:34:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F34E41C1189
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 00:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DF221828F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 00:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XT9PWz0O90ds for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jul 2021 00:34:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 35C0E82846
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 00:34:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="209641406"
X-IronPort-AV: E=Sophos;i="5.84,259,1620716400"; d="scan'208";a="209641406"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 17:34:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,259,1620716400"; d="scan'208";a="662340015"
Received: from vcostago-mobl2.amr.corp.intel.com ([10.24.12.88])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 17:34:21 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jul 2021 17:34:03 -0700
Message-Id: <20210722003403.69289-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-queue v1] igc: Use num_tx_queues when
 iterating over tx_ring queue
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
Cc: "Nishioka, Toshiki" <toshiki.nishioka@intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: "Nishioka, Toshiki" <toshiki.nishioka@intel.com>

Use num_tx_queues rather than the IGC_MAX_TX_QUEUES fixed number 4 when
iterating over tx_ring queue since instantiated queue count could be
less than 4 where on-line cpu count is less than 4.

Fixes: ec50a9d437f0 ("igc: Add support for taprio offloading")
Signed-off-by: Toshiki Nishioka <toshiki.nishioka@intel.com>
Tested-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index e29aadbc6744..2b3b741f816c 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5489,7 +5489,7 @@ static bool validate_schedule(struct igc_adapter *adapter,
 		if (e->command != TC_TAPRIO_CMD_SET_GATES)
 			return false;
 
-		for (i = 0; i < IGC_MAX_TX_QUEUES; i++) {
+		for (i = 0; i < adapter->num_tx_queues; i++) {
 			if (e->gate_mask & BIT(i))
 				queue_uses[i]++;
 
@@ -5546,7 +5546,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 
 		end_time += e->interval;
 
-		for (i = 0; i < IGC_MAX_TX_QUEUES; i++) {
+		for (i = 0; i < adapter->num_tx_queues; i++) {
 			struct igc_ring *ring = adapter->tx_ring[i];
 
 			if (!(e->gate_mask & BIT(i)))
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
