Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CD2375ED2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 May 2021 04:30:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4B6B402E8;
	Fri,  7 May 2021 02:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C_XViSajz0Gl; Fri,  7 May 2021 02:30:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92FE6402DF;
	Fri,  7 May 2021 02:30:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48AF21BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 02:30:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3707860894
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 02:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o9tYIwbNyLUH for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 May 2021 02:30:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6724F60591
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 02:30:20 +0000 (UTC)
IronPort-SDR: Rj/5CbDAd+IclaDhj6XkEbxk4k9CTpR+LjT4iLuPICAkdFKd0BVBlw6Tmj6v/NZXj0tVdgpDBh
 +f8DeUsPuP/g==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="186090920"
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="186090920"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 19:30:19 -0700
IronPort-SDR: o6RZu7XKpUx+m0WtYYxvKJy+HB0Tx0QjkgAA/LlPdUXrbnd8WLAzKXLG6ziM3snOC8mjMPF6G8
 gSE6aqo8t4vA==
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="431040237"
Received: from jbrandeb-saw1.jf.intel.com ([10.166.28.56])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 19:30:18 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Oleksandr Natalenko <oleksandr@natalenko.name>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Date: Thu,  6 May 2021 19:30:01 -0700
Message-Id: <20210507023001.2621951-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] igb: fix netpoll exit with traffic
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
Cc: Alexander Duyck <alexanderduyck@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Oleksandr brought a bug report where netpoll causes trace messages in
the log on igb.

[22038.710800] ------------[ cut here ]------------
[22038.710801] igb_poll+0x0/0x1440 [igb] exceeded budget in poll
[22038.710802] WARNING: CPU: 12 PID: 40362 at net/core/netpoll.c:155 netpoll_poll_dev+0x18a/0x1a0

After some discussion and debug from the list, it was deemed that the
right thing to do is initialize the clean_complete variable to false
when the "netpoll mode" of passing a zero budget is used.

This logic should be sane and not risky because the only time budget
should be zero on entry is netpoll.  Change includes a small refactor
of local variable assignments to clean up the look.

Fixes: 16eb8815c235 ("igb: Refactor clean_rx_irq to reduce overhead and improve performance")
Reported-by: Oleksandr Natalenko <oleksandr@natalenko.name>
Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
---

Compile tested ONLY, but functionally it should be exactly the same for
all cases except when budget is zero on entry, which will hopefully fix
the bug.

Sending this through intel-wired-lan with Alex's ACK.
---
 drivers/net/ethernet/intel/igb/igb_main.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 0cd37ad81b4e..b0a9bed14071 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -7991,12 +7991,16 @@ static void igb_ring_irq_enable(struct igb_q_vector *q_vector)
  **/
 static int igb_poll(struct napi_struct *napi, int budget)
 {
-	struct igb_q_vector *q_vector = container_of(napi,
-						     struct igb_q_vector,
-						     napi);
-	bool clean_complete = true;
+	struct igb_q_vector *q_vector;
+	bool clean_complete;
 	int work_done = 0;
 
+	/* if budget is zero, we have a special case for netconsole, so
+	 * make sure to set clean_complete to false in that case.
+	 */
+	clean_complete = !!budget;
+
+	q_vector = container_of(napi, struct igb_q_vector, napi);
 #ifdef CONFIG_IGB_DCA
 	if (q_vector->adapter->flags & IGB_FLAG_DCA_ENABLED)
 		igb_update_dca(q_vector);
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
