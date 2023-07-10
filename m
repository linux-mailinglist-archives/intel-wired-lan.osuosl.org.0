Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD7474DF6E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 22:41:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 30C1340BA0;
	Mon, 10 Jul 2023 20:41:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30C1340BA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689021702;
	bh=X1wazb4Bimm4su3t13J6rInXE+FHT44reEi+CqwsQcE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=B9lEYoysaiNjA/xVmZDZ36zu9XU0G08phg5zOQdqiXPfYm88gnru6FpkayCPU5i6K
	 9qT1Wk8Cp6Bq6nu6LxFmpfDI5Pj+XPZxkR2WODYVfROCL9UNYtIgl4cA74pfUM/AhV
	 7SD2OaQr+6LljEDe678ZXWMIu6KjrdgALkZy7Z49Io4pwDh+7c7aIHldCBqe6aNDjV
	 hr3UMIkTkAu7DRTO6JDRVA65qlwnfZnh2y/BcsLguyMN7IzUzOPOh3V0H66jijHU2d
	 AozaSHDh16XS/TNgxUzcaOjE4OFQ093SQtaPmRpmsqk6BFPgaNGKWkTVhOgAnc9bPI
	 c8b4prXoYDtMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bHFOT54OF3uC; Mon, 10 Jul 2023 20:41:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E2E240A80;
	Mon, 10 Jul 2023 20:41:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E2E240A80
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7165F1BF399
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 20:41:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4904540B7B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 20:41:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4904540B7B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vL1TrUW7P5Ov for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 20:41:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06B07404A5
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06B07404A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 20:41:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="428146730"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="428146730"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 13:41:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="865513510"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="865513510"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 13:41:33 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 10 Jul 2023 13:41:27 -0700
Message-ID: <20230710204128.34847-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689021695; x=1720557695;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eHgJgDSg1AnDgvqKgmNEbkHZ8zJZtoHyxDyqNLr5Z94=;
 b=JKyfjVfgUSRU/kuM70qnR/YsjQ2jQYzPb2Y+lHHb5tQ3Aq0s/jlipH11
 MBMYFMJEMaXtyZVFSM+7q44mIelkrR98hkp49NLyPIADXGq+JLDc6Hkt1
 VdSab19tFKNpLUTiiINHFJvdsU42Fir3mCc/lzU2GKN1052NZvKN8zI15
 FUlPegLCl7G+hS8NO4jHN8/1xXIj3mD8BkXWK50urXwl1X6sa7Pm2XbAz
 Qotof3JqKxGAI/DE1kR8A8jGDyjrY1Pu8ZezSSNR0wl9JM7/x2p0qp6PF
 FxteF73S/O/I4GWV8yyITJ4dZ4f1ieBKGPxLr0cfdvL+/yPCBAHFCGPEt
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JKyfjVfg
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] iavf: fix potential deadlock
 on allocation failure
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

In iavf_adminq_task(), if kzalloc() fails to allocate the event.msg_buf,
the function will exit without releasing the adapter->crit_lock.

This is unlikely, but if it happens, the next access to that mutex will
deadlock.

Fix this by moving the unlock to the end of the function, and adding a new
label to allow jumping to the unlock portion of the function exit flow.

Fixes: fc2e6b3b132a ("iavf: Rework mutexes for better synchronisation")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 06ea61f30b6f..6d2f647066fb 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3264,7 +3264,7 @@ static void iavf_adminq_task(struct work_struct *work)
 	event.buf_len = IAVF_MAX_AQ_BUF_SIZE;
 	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
 	if (!event.msg_buf)
-		goto out;
+		goto unlock;
 
 	do {
 		ret = iavf_clean_arq_element(hw, &event, &pending);
@@ -3279,7 +3279,6 @@ static void iavf_adminq_task(struct work_struct *work)
 		if (pending != 0)
 			memset(event.msg_buf, 0, IAVF_MAX_AQ_BUF_SIZE);
 	} while (pending);
-	mutex_unlock(&adapter->crit_lock);
 
 	if (iavf_is_reset_in_progress(adapter))
 		goto freedom;
@@ -3323,6 +3322,8 @@ static void iavf_adminq_task(struct work_struct *work)
 
 freedom:
 	kfree(event.msg_buf);
+unlock:
+	mutex_unlock(&adapter->crit_lock);
 out:
 	/* re-enable Admin queue interrupt cause */
 	iavf_misc_irq_enable(adapter);

base-commit: b4e87f37b7fc4e0408a1a67b60839c4f2e6fa40f
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
