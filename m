Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C17294C11
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Oct 2020 13:59:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 341A6871B8;
	Wed, 21 Oct 2020 11:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iECdRFHdho1C; Wed, 21 Oct 2020 11:59:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C4F187259;
	Wed, 21 Oct 2020 11:59:43 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 10B281BF20F
 for <intel-wired-lan@osuosl.org>; Wed, 21 Oct 2020 11:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0B6FF8698E
 for <intel-wired-lan@osuosl.org>; Wed, 21 Oct 2020 11:59:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x6wsnfIEos1A for <intel-wired-lan@osuosl.org>;
 Wed, 21 Oct 2020 11:59:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 42A4C86981
 for <intel-wired-lan@osuosl.org>; Wed, 21 Oct 2020 11:59:41 +0000 (UTC)
IronPort-SDR: PYd0l4uzokt6WO7o2uxWfhOkb8QUh6gnV1rK+ooO64Rjhmc2pfcJCSC1BT2PDwkgHT22i5CcMs
 JaaCVjK9Ly3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="146645814"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="146645814"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 04:59:40 -0700
IronPort-SDR: zyPCEWe4xxel3NKGGFEERDm15MvSkKsasN7pNCaMP3X2m/Lu2fc0wjPURzkMca6SM9JDa80pAJ
 UcVeN5cQtLXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="392709682"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.160.195])
 by orsmga001.jf.intel.com with ESMTP; 21 Oct 2020 04:59:39 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 21 Oct 2020 14:59:37 +0300
Message-Id: <20201021115937.40428-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: add rtnl_lock() to
 e1000_reset_task
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A possible race condition was found in e1000_reset_task,
after discovering a similar issue in igb driver
(024a8168b7 igb: reinit_locked() should be called with rtnl_lock).

Added rtnl_lock() and rtnl_unlock() to avoid this.

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Suggested-by: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index ee6a5f0cb16c..ab2cf4540425 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5990,15 +5990,19 @@ static void e1000_reset_task(struct work_struct *work)
 	struct e1000_adapter *adapter;
 	adapter = container_of(work, struct e1000_adapter, reset_task);
 
+	rtnl_lock();
 	/* don't run the task if already down */
-	if (test_bit(__E1000_DOWN, &adapter->state))
+	if (test_bit(__E1000_DOWN, &adapter->state)) {
+		rtnl_unlock();
 		return;
+	}
 
 	if (!(adapter->flags & FLAG_RESTART_NOW)) {
 		e1000e_dump(adapter);
 		e_err("Reset adapter unexpectedly\n");
 	}
 	e1000e_reinit_locked(adapter);
+	rtnl_unlock();
 }
 
 /**
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
