Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 827E9647CEB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Dec 2022 05:18:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 175714182B;
	Fri,  9 Dec 2022 04:18:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 175714182B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670559523;
	bh=z2440hAxDNYU+1i8bN4wOjGWZnG+hBcGARzTQHINsUA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IOgE+b4V8dtRGekzB/TUYhWC/XLLxVn8THf+5TGMU5LESHtYmA8nBvITWyceRLGXm
	 8EbSTpCFKTT/1IexKJ5hdyUZSPFCCZ7R1hsttEyeOtlUKQ8T/F4GP8+BwUTYGqd5SV
	 J1E6VfBzfzBvKtzG5OT3sEHClfCSDwsUPz9wDFh7Vt9dmfuJ1lBLIM56UOzkeDCM4X
	 hAqUuKleilF989ae83yg6eT5ivK89g4g9qkQiqoXoxDi5A6e5CVJ7ekwdBL0SYW0hg
	 +EfnjEpF03gcg8EuGpSD3AWztOFejdhboOyS1WFSsx5OpSfoOOAJSuI6X1iLDt011r
	 UnVI0DBPvknIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kh1lgncuUBM8; Fri,  9 Dec 2022 04:18:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AED8441814;
	Fri,  9 Dec 2022 04:18:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AED8441814
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3ECC21BF3A9
 for <intel-wired-lan@osuosl.org>; Fri,  9 Dec 2022 04:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2717E81FF6
 for <intel-wired-lan@osuosl.org>; Fri,  9 Dec 2022 04:18:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2717E81FF6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 24Um-Tmz6mow for <intel-wired-lan@osuosl.org>;
 Fri,  9 Dec 2022 04:18:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7CE2481F9C
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7CE2481F9C
 for <intel-wired-lan@osuosl.org>; Fri,  9 Dec 2022 04:18:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="300796346"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="300796346"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 20:18:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="649427551"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="649427551"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga007.fm.intel.com with ESMTP; 08 Dec 2022 20:18:13 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Fri,  9 Dec 2022 12:15:22 +0800
Message-Id: <20221209041522.30153-7-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221209041522.30153-1-muhammad.husaini.zulkifli@intel.com>
References: <20221209041522.30153-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670559495; x=1702095495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=idRQVgin8Dwt+eCsMP3/PHdddGH3eFcXUfJBLUsFpwk=;
 b=ll94OOa6Wi7l9C6ed1Qq2A9geG+QJgdsWZl7OxICtwTXvaO/8gfggv6V
 QkuW7DZfeM/9t0X64Nbppuhb8KrPbKXuP0yn344To8WHJ8ZvwyC8SWnE+
 MttFh+hJSsxVZbX1hRmeR7S5UkuI2Kl1GWoGEGmfs5sFtBJIGiZVgPlzR
 gl4W/IzVualRR+bjogVClTGBuKeT8ccieTNTkLOn7SiJgmqV752RplSXG
 Lr4HDG1uhc91C3RaC29pbZY6uJicBkhSS5iyIvjSzyS41knfYmPpnltnz
 uWU1wsf3HZS+aw8jpNneCoNDgx2Xaa6WmeAApCVE4x2fJ17AhhaJLsA6R
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ll94OOa6
Subject: [Intel-wired-lan] [PATCH net v1 6/6] igc: Set Qbv start_time and
 end_time to end_time if not being configured in GCL
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
Cc: muhammad.husaini.zulkifli@intel.com, anthony.l.nguyen@intel.com,
 tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tan Tee Min <tee.min.tan@linux.intel.com>

The default setting of end_time minus start_time is whole 1 second.
Thus, if it's not being configured in any GCL entry then it will be
staying at original 1 second.

This patch is changing the start_time and end_time to be end_time as
if setting zero will be having weird HW behavior where the gate will
not be fully closed.

Fixes: ec50a9d437f0 ("igc: Add support for taprio offloading")
Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 5f1c272511fd..e07287e05862 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6026,6 +6026,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	bool queue_configured[IGC_MAX_TX_QUEUES] = { };
 	u32 start_time = 0, end_time = 0;
 	size_t n;
+	int i;
 
 	adapter->qbv_enable = qopt->enable;
 
@@ -6046,7 +6047,6 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 
 	for (n = 0; n < qopt->num_entries; n++) {
 		struct tc_taprio_sched_entry *e = &qopt->entries[n];
-		int i;
 
 		end_time += e->interval;
 
@@ -6085,6 +6085,18 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 		start_time += e->interval;
 	}
 
+	/* Check whether a queue gets configured.
+	 * If not, set the start and end time to be end time.
+	 */
+	for (i = 0; i < adapter->num_tx_queues; i++) {
+		if (!queue_configured[i]) {
+			struct igc_ring *ring = adapter->tx_ring[i];
+
+			ring->start_time = end_time;
+			ring->end_time = end_time;
+		}
+	}
+
 	return 0;
 }
 
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
