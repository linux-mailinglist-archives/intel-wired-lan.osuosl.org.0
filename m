Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F91171F47C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 23:15:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A0C841723;
	Thu,  1 Jun 2023 21:15:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A0C841723
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685654137;
	bh=pBlHVwi9sP+oAxEmyeyFgYVwoPl9HHvxDbimJQB64+E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dZbkutmfGLmQFw4errmXSFtm4IIboBQsQ2e4LjrTRTJYMXRoBygpegxdwgYZpNQhG
	 wJ4Q+a4cWZVzIRtfZCEkFWRpkpEgQnf6gUTE/H9g1VYSrE1Ds4Qiy/FLzr4Tj02+NI
	 TIgebY8DwSkwVb3KevUdQz55zDK1QEpplZ9FVGN/oCHQlxxO8Y2PDsfcdZuBb+PVip
	 oZStTZYpaH6oQpMvM6dYwU9a9RJoZ1pyjbKdns4lkorMTQA3aeq1mOJ0VTLivaooB4
	 oe30EB4Jw+RMwRyM8+GWWA0RI0XgOuZeork7VXyeYjrsqw6z+IX/pvE3DeP8JEiLKu
	 Fug20Rrrfttew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NZGtdjX4zXgh; Thu,  1 Jun 2023 21:15:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18127415B9;
	Thu,  1 Jun 2023 21:15:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 18127415B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9CE481BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 21:15:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDD1442586
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 21:15:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDD1442586
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JX5s3Xi3cGtf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 21:15:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07D8442591
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07D8442591
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 21:15:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="421500837"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="421500837"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 14:15:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="737249201"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="737249201"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 14:15:13 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu,  1 Jun 2023 14:15:06 -0700
Message-ID: <20230601211507.707619-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
In-Reply-To: <20230601211507.707619-1-jacob.e.keller@intel.com>
References: <20230601211507.707619-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685654117; x=1717190117;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ANkqQvUo0KCziIKtYeCWPO62wtoRSGo518DA42IRzgM=;
 b=GWq7jAjErbc8kCeja80qtOxpN4sTCRZFqTDBp5XGilDZc/dqkhYhQH8S
 ooF62afQVWoUFZxBzYAPUFF6bjjvIMjrDAkauI87enlKz8EMa6hN481TU
 niBoi8btLiht7HRq9TN4k3vvDbwtE0rOYRxlpIZlfGy5QAjclIfDk55CA
 13an10OHGAplbRKakQA7fdD5PRSVeluyv11v8RUl34sowdS8/y5dIQXej
 ttS0ZqsoSpC7de+rhTw+Ss2o1tRpXgltc4dZxI3gA4EF6fzoxFvoOvSGs
 wtYBXC8dGmkLhXRvB0w7JuibgMR6x9Sqf9bCA8pecBmCRmiTFf4SF97f+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GWq7jAjE
Subject: [Intel-wired-lan] [PATCH iwl-next v3 4/5] ice: trigger
 PFINT_OICR_TSYN_TX interrupt instead of polling
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

In ice_misc_intr_thread_fn(), if we do not complete all Tx timestamp work,
the thread function will poll continuously forever.

For E822 hardware, this wastes time as the return value from
ice_ptp_process_ts() is accurate and always reports correctly that the PHY
actually has new timestamp data.

In addition, if we receive enough timestamps with the right pacing, we may
never exit this polling. Should this occur, other tasks handled by the
ice_misc_intr_thread_fn() will never be processed.

Fix this by instead writing to PFINT_OICR, causing an emulated interrupt to
be triggered immediately. This does take slightly more processing than just
re-checking the timestamps. However, it allows all of the other interrupt
causes a chance to be processed first in the hard IRQ function.

Note that the OICR interrupt is configured to be throttled  to no more than
once every 124 microseconds. This gives an effective interrupt rate of
~8000 interrupts per second. This should thus not cause a significant
increase in overall CPU usage when compared to sleeping.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9df53dd300a9..8f3ddc8451bd 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3202,8 +3202,15 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 		ice_ptp_extts_event(pf);
 
 	if (test_and_clear_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread)) {
-		while (ice_ptp_process_ts(pf) == ICE_TX_TSTAMP_WORK_PENDING)
-			usleep_range(50, 100);
+		struct ice_hw *hw = &pf->hw;
+
+		/* Process outstanding Tx timestamps. If there is more work,
+		 * re-arm the interrupt to trigger again.
+		 */
+		if (ice_ptp_process_ts(pf) == ICE_TX_TSTAMP_WORK_PENDING) {
+			wr32(hw, PFINT_OICR, PFINT_OICR_TSYN_TX_M);
+			ice_flush(hw);
+		}
 	}
 
 	return IRQ_HANDLED;
-- 
2.40.0.471.gbd7f14d9353b

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
