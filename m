Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 189B8293D62
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Oct 2020 15:34:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A857D2E205;
	Tue, 20 Oct 2020 13:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGTwXmTra7OO; Tue, 20 Oct 2020 13:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 36B4B2E1C6;
	Tue, 20 Oct 2020 13:34:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A04A91BF852
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 13:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 92E1F86B41
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 13:34:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VvgqnE4TVQnW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Oct 2020 13:34:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3CBB486B3F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Oct 2020 13:34:03 +0000 (UTC)
IronPort-SDR: Qs8K6VlQUvPzIHwtTBqujtTiy0xorbm+c1mwKBucFh0MVYYBz6flZkCpavh1Jlqn+/RIY5Bhgf
 qObh8a2+p2Xg==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="251902326"
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="251902326"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 06:34:02 -0700
IronPort-SDR: y1br5I1EpwxmTxLyukoYR7Yhndw09yBJmrueYgb2d3RXh3lRwGTp/sRft5P2iha/Ap/csUaPLR
 g7o0XodHQPSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="533062502"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by orsmga005.jf.intel.com with ESMTP; 20 Oct 2020 06:34:01 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Oct 2020 16:34:00 +0300
Message-Id: <20201020133400.2187467-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: reinit_locked() should be
 called with rtnl_lock
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

This commit applies to the igc_reset_task the same changes that
were applied to the igb driver in commit 024a8168b749 ("igb:
reinit_locked() should be called with rtnl_lock")
and fix possible race in reset subtask.

Suggested-by: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 32817a28e34c..ec3a1a8bb65b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3849,10 +3849,19 @@ static void igc_reset_task(struct work_struct *work)
 
 	adapter = container_of(work, struct igc_adapter, reset_task);
 
+	rtnl_lock();
+	/* If we're already down or resetting, just bail */
+	if (test_bit(__IGC_DOWN, &adapter->state) ||
+	    test_bit(__IGC_RESETTING, &adapter->state)) {
+		rtnl_unlock();
+		return;
+	}
+
 	igc_rings_dump(adapter);
 	igc_regs_dump(adapter);
 	netdev_err(adapter->netdev, "Reset adapter\n");
 	igc_reinit_locked(adapter);
+	rtnl_unlock();
 }
 
 /**
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
