Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D774324C82D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Aug 2020 01:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 75A1322B6D;
	Thu, 20 Aug 2020 23:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id irC7Y0uJQo18; Thu, 20 Aug 2020 23:03:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3E24A22920;
	Thu, 20 Aug 2020 23:03:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 477011BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 23:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3402F228BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 23:03:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B+Gu1UOkhdyJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Aug 2020 23:03:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 1AD3922CD4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 23:02:33 +0000 (UTC)
IronPort-SDR: kQZOapNvP/Dya8geBbl4MubX2OE9EzqwNlzNX4f+TqWvpOKkq4AjshHh3fqyob6VvC/vNiS9pu
 TMzYK0YQfcoQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="156476571"
X-IronPort-AV: E=Sophos;i="5.76,334,1592895600"; d="scan'208";a="156476571"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 16:02:32 -0700
IronPort-SDR: LrKv9ADruSsX382YUznwzQaOuhDReclL70uXZEDmDiFrlh1X2GxlX6MOPpmWQLudwRTkSRx1EA
 LFCCPfoSuBJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,334,1592895600"; d="scan'208";a="442154458"
Received: from soldfiel-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.87.132])
 by orsmga004.jf.intel.com with ESMTP; 20 Aug 2020 16:02:31 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Aug 2020 16:02:16 -0700
Message-Id: <20200820230217.2005122-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1 1/2] igc: Remove references
 to SYSTIMR register
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
Cc: andre.guedes@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In i225, it's no longer necessary to use the SYSTIMR register to
latch the timer value, the timestamp is latched when SYSTIML is read.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index a841ac1088aa..d1c01fd6f5cc 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -22,11 +22,7 @@ static void igc_ptp_read_i225(struct igc_adapter *adapter,
 	struct igc_hw *hw = &adapter->hw;
 	u32 sec, nsec;
 
-	/* The timestamp latches on lowest register read. For I210/I211, the
-	 * lowest register is SYSTIMR. Since we only need to provide nanosecond
-	 * resolution, we can ignore it.
-	 */
-	rd32(IGC_SYSTIMR);
+	/* The timestamp is latched when SYSTIML is read. */
 	nsec = rd32(IGC_SYSTIML);
 	sec = rd32(IGC_SYSTIMH);
 
@@ -39,9 +35,6 @@ static void igc_ptp_write_i225(struct igc_adapter *adapter,
 {
 	struct igc_hw *hw = &adapter->hw;
 
-	/* Writing the SYSTIMR register is not necessary as it only
-	 * provides sub-nanosecond resolution.
-	 */
 	wr32(IGC_SYSTIML, ts->tv_nsec);
 	wr32(IGC_SYSTIMH, ts->tv_sec);
 }
@@ -102,10 +95,9 @@ static int igc_ptp_gettimex64_i225(struct ptp_clock_info *ptp,
 	spin_lock_irqsave(&igc->tmreg_lock, flags);
 
 	ptp_read_system_prets(sts);
-	rd32(IGC_SYSTIMR);
-	ptp_read_system_postts(sts);
 	ts->tv_nsec = rd32(IGC_SYSTIML);
 	ts->tv_sec = rd32(IGC_SYSTIMH);
+	ptp_read_system_postts(sts);
 
 	spin_unlock_irqrestore(&igc->tmreg_lock, flags);
 
-- 
2.28.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
