Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD6B772A08
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 18:04:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C385460F54;
	Mon,  7 Aug 2023 16:04:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C385460F54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691424252;
	bh=9tVOLDyFWq52eSDWh0KTeNMml0+LNdj6XFz9EWuBvrU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mQsFIXDUx3Vmvgrnhhz9CldgE6eD3ftlg+TqkTJB5KNJ+q2WFcXFU72ka9bqm7qdK
	 OMa3pdGUblEIEtr53DiDDsv30Y1X+FVsOJJ3mqc2Kq8+pTplz0G9M6k83pkOSrrd8G
	 6fEIcl8TrZo+wq+r6Yy9ivD4Y67L8dK/mxZval1jatiPur5tuuAzd4rTEAQJ0/eIgb
	 4nB360Do+YFozvFeI9gg1IV4jRPZ/yW+ki6RQy10sY4ZPVMely1YStED2dQsJ0sfSh
	 l0/O5C5GR0qf3vnWtT0OpY5qIVWXRpkI444l65zdkV16YnuQPLbasP9CQRyEQdNsWd
	 k1h7gPiQ+rSnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0kHKK83m7jtX; Mon,  7 Aug 2023 16:04:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2EFEF60EE0;
	Mon,  7 Aug 2023 16:04:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EFEF60EE0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 373FD1BF280
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 16:04:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7787C81414
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 16:01:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7787C81414
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z19DB82Lo9MH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Aug 2023 16:01:43 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3EF881F50
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Aug 2023 16:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3EF881F50
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="401553926"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="401553926"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 09:01:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="977492980"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="977492980"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 07 Aug 2023 09:01:40 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id C9875312D4;
 Mon,  7 Aug 2023 17:01:39 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  7 Aug 2023 11:58:46 -0400
Message-Id: <20230807155848.90907-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230807155848.90907-1-przemyslaw.kitszel@intel.com>
References: <20230807155848.90907-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691424103; x=1722960103;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZaID7aLwkl9LbkHjZUcJBGMU6NP2yhhd2YR+WdtQz0w=;
 b=D3aTwkKjPck4KQhFVQiFJZtrdstXvndPW0tAIbMJ3coUIMRSe6lZpZXr
 snw/2q02nhkDu1cVcJmUpk2SKWVsNtXkTbjVO9fhhqcigI31LToYGXEDF
 bUgmjlFsega61xp+AHg88q+YZYOX/nSd6SbDwShi/xsdT5A4Jr9IE+7gu
 IhRHexZXWP/mYqg8FxS1xhu1lYx/ztNI33QNYXZ/CFobLDf3bsKd2RZ6X
 JeUMP20rOLOhHjGRWvio0nkIOj32hajF+bnP/zPnS0NZ3oyRfJULAxVoy
 OHT3lBDKgc+GcNuTX/kNFm9gK2x80/7j+0RAZyUc0EBcPP9oWpvoze4+y
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D3aTwkKj
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/3] ice: ice_aq_check_events:
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
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a73895483e6c..f2ad2153589a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1357,7 +1357,9 @@ int ice_aq_wait_for_event(struct ice_pf *pf, u16 opcode, unsigned long timeout,
 static void ice_aq_check_events(struct ice_pf *pf, u16 opcode,
 				struct ice_rq_event_info *event)
 {
+	struct ice_rq_event_info *task_ev;
 	struct ice_aq_task *task;
+
 	bool found = false;
 
 	spin_lock_bh(&pf->aq_wait_lock);
@@ -1365,15 +1367,15 @@ static void ice_aq_check_events(struct ice_pf *pf, u16 opcode,
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
