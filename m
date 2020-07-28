Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 685BA231649
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jul 2020 01:38:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0F39E20485;
	Tue, 28 Jul 2020 23:38:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S6n7NSmMYkZ1; Tue, 28 Jul 2020 23:38:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1CA5E2051A;
	Tue, 28 Jul 2020 23:38:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BD6621BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B4A67882C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kYZW3MVM0lbp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4DBD988672
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 23:38:16 +0000 (UTC)
IronPort-SDR: CR7tTtjYNIxAQufx8PoxlKmfO4Ohcd00p6hu/b1ZFo50ppTAnzznC1OVJXIyQafLUnUM8/vixS
 vTOtpFi9c7/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="150501221"
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="150501221"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 16:38:16 -0700
IronPort-SDR: URS2hHqCM1na1cA/PVUNAf/x91M3nzGo2MOu9Fqw4DqxBOA5SM0iRqKJHWUQmJ59Dw2ZHOayLM
 QkXQ9p4TSNBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,408,1589266800"; d="scan'208";a="328484697"
Received: from dpavlopo-mobl2.amr.corp.intel.com ([10.251.22.240])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2020 16:38:16 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 Jul 2020 16:37:53 -0700
Message-Id: <20200728233754.65747-4-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200728233754.65747-1-andre.guedes@intel.com>
References: <20200728233754.65747-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 3/4] igc: Remove timeout check from ptp_tx
 work
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

The tx timestamp timeout is already checked by the watchdog_task work
which runs periodically. In addition to that, from the ptp_tx work
perspective, if __IGC_PTP_TX_IN_PROGRESS flag is set we always want
handle the timestamp stored in hardware and update the skb. So this
patch removes the timeout check in igc_ptp_tx_work() function.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index b912830ea7bb..22b2cf80b22f 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -403,12 +403,6 @@ static void igc_ptp_tx_work(struct work_struct *work)
 	if (!test_bit(__IGC_PTP_TX_IN_PROGRESS, &adapter->state))
 		return;
 
-	if (time_is_before_jiffies(adapter->ptp_tx_start +
-				   IGC_PTP_TX_TIMEOUT)) {
-		igc_ptp_tx_timeout(adapter);
-		return;
-	}
-
 	tsynctxctl = rd32(IGC_TSYNCTXCTL);
 	if (WARN_ON_ONCE(!(tsynctxctl & IGC_TSYNCTXCTL_TXTT_0)))
 		return;
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
