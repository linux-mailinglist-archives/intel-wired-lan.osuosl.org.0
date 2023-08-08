Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EBF774D72
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 23:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9917982110;
	Tue,  8 Aug 2023 21:57:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9917982110
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691531843;
	bh=J3Fgp/Gb02oGsIlG3c5n348H+LAgDgnGyBSHR13j2fc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IxtaBWA/g2Ck1Qr0FbJy87qEhLaWXjowQ339HyEiX56baP0Vf0MK8Mzt8i5RdXxAI
	 dd/jyppSFfipn7lkLDQyy/V2OFhqCnn68VrTpWUQg0s6QN5t4oVQtR4flqCQNOYc+t
	 p71niF4QDOUXTMXn+GsvdAhpTwjEg8KBWyEQdQ3gj59P/3GTcfd4ZLXnyr+KFn7r63
	 doCKN2j/u6b+Olx8I3MNEPiGTkBXoGAx0fm0Knjr1RSIUlmwJXm2WfPaiQCTQI1B9p
	 Snyd6wCgjlAz1lGcc0JsLTr6TfkVf6N8FdV01XKqbhxtozTbgc/+graPhKIPhr6BDO
	 tYzr2nJC+Ga0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xeTb3m6-eBoY; Tue,  8 Aug 2023 21:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 852B282071;
	Tue,  8 Aug 2023 21:57:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 852B282071
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 811401BF82D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 21:57:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5ACAD82140
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 21:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5ACAD82140
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fULJ752CYnd8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 21:57:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 774938210D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 21:57:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 774938210D
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="368420291"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="368420291"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 14:57:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="821569655"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="821569655"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Aug 2023 14:57:11 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F3D7C33BC9;
 Tue,  8 Aug 2023 22:57:10 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  8 Aug 2023 17:54:15 -0400
Message-Id: <20230808215417.117910-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230808215417.117910-1-przemyslaw.kitszel@intel.com>
References: <20230808215417.117910-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691531834; x=1723067834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QiOYyG8d4C8oCGulNc2Tw6fje2IX+szzlCK+Eodjt7Q=;
 b=CKxgKyO3vZrsPAna1IOjz6TlxeC/aSN1+zqO9bYD2BhrSj108dU4bPI2
 jRg+MiKzTP3UZaU+8N2nwjNyE05LGJLn9esLN+XUu4V6E0gcpCI1umkd5
 J8nUyCcxCKtgtnKMEt1Gpq9Llsr4JE3zt0AJ+dXOFbfG2msQPpqnI1Z0c
 PkGj9yr1NerX86+6Mvg3HZECExkDluFISgWKPjnsONN/EbvBXxZDRfkiM
 WLF7ikpBEDLaHBaCoEhdNx/l8iFXaYW9GQvPrOwXCorQzqmoArG2vi41G
 8j1IQTrufiF/GraQluXPVM7YtZ+gGjhvJkzwoOhMmkFR2OM2WND5xh1rd
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CKxgKyO3
Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/3] ice: ice_aq_check_events:
 fix off-by-one check when filling buffer
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow task's event buffer to be filled also in the case that it's size
is exactly the size of the message.

Fixes: d69ea414c9b4 ("ice: implement device flash update via devlink")
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a73895483e6c..279e7f790312 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1357,23 +1357,24 @@ int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
 static void ice_aq_check_events(struct ice_pf *pf, u16 opcode,
 				struct ice_rq_event_info *event)
 {
+	struct ice_rq_event_info *task_ev;
 	struct ice_aq_task *task;
 	bool found = false;
 
 	spin_lock_bh(&pf->aq_wait_lock);
 	hlist_for_each_entry(task, &pf->aq_wait_list, entry) {
 		if (task->state || task->opcode != opcode)
 			continue;
 
-		memcpy(&task->event->desc, &event->desc, sizeof(event->desc));
-		task->event->msg_len = event->msg_len;
+		task_ev = task->event;
+		memcpy(&task_ev->desc, &event->desc, sizeof(event->desc));
+		task_ev->msg_len = event->msg_len;
 
 		/* Only copy the data buffer if a destination was set */
-		if (task->event->msg_buf &&
-		    task->event->buf_len > event->buf_len) {
-			memcpy(task->event->msg_buf, event->msg_buf,
+		if (task_ev->msg_buf && task_ev->buf_len >= event->buf_len) {
+			memcpy(task_ev->msg_buf, event->msg_buf,
 			       event->buf_len);
-			task->event->buf_len = event->buf_len;
+			task_ev->buf_len = event->buf_len;
 		}
 
 		task->state = ICE_AQ_TASK_COMPLETE;
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
