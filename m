Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 647A172E38A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 15:00:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2FB941710;
	Tue, 13 Jun 2023 12:59:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2FB941710
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686661199;
	bh=TVR23/bL95qSa7XUBxiCGSW3TP5d0o/LMc0vyp1ug/g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rWwZ/CWQ5a6+DHL2iKLW5VqsyR6ATsgcGUAx1MWgv7k2S4qjjkWwPBhvOwzeAlT9k
	 oMDTrss5VGZ35b8xx/JTd9p8pKDUltDFj+/uTpGdoZHg/JItWbXofI1BX8UCtV47QL
	 e20kulXozI5vjfJcT5NJGdZJo6sDvOAOnXsys4pKR69PeUbMBVZaRHleVck2xgCEko
	 v5UrbuGIgm3XEIgIuZngR/kvR3vurCPwC5KCGEOkFXl9xnF4GHoAh7r0zvz7eMG1IM
	 uGBI1wIteP/i+eS0uFf7RkDiQFMF6F5ywnK7d9YDxsOjehEcemrUFIja5aPXZmy3nY
	 VIdgcetxxDlEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L6gK3o6mpsx2; Tue, 13 Jun 2023 12:59:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A812416D0;
	Tue, 13 Jun 2023 12:59:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A812416D0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 737AA1BF28D
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 12:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4924240857
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 12:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4924240857
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AhEcRJl_2wc4 for <intel-wired-lan@osuosl.org>;
 Tue, 13 Jun 2023 12:59:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12CDB40620
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12CDB40620
 for <intel-wired-lan@osuosl.org>; Tue, 13 Jun 2023 12:59:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="386716907"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="386716907"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 05:59:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="958400403"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="958400403"
Received: from inlubt0246.iind.intel.com ([10.67.198.165])
 by fmsmga006.fm.intel.com with ESMTP; 13 Jun 2023 05:59:49 -0700
From: aravindhan.gunasekaran@intel.com
To: intel-wired-lan@osuosl.org
Date: Tue, 13 Jun 2023 18:29:48 +0530
Message-Id: <20230613125948.60575-1-aravindhan.gunasekaran@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686661192; x=1718197192;
 h=from:to:cc:subject:date:message-id;
 bh=CNPCRmP4syAaBFBiKt+kMOIkGqDie+NcG9AxHYj+bjQ=;
 b=Dbg/AW8hOH4JBT+S39lRVk03VVEJ+KpaxYDTFWwX+4vvBAM94+Z7gIVN
 tAm7fZRHqbkAyVs4CwE8RoAGUw+p5AT4RPRied6aJQjkr8PtRp0GZHG5d
 biYZHzq8pOeHD9dgKx6lGGE8V5K3e36FWAuwex8NcR5q8azV162/lrd6o
 017/uB98uwDJ06url5VDh2/SgHHmwv/jkN2TM0JFyDHqkZ19SIUPiZPsQ
 nVSsp16oPCm+nf0/LgC27A9cs+5W0KrHcMA36quqKlrsv+ggHh3YKVxF+
 z8HrHMArKtxZkWGp4rZbISmyolb7W4+rYxUPXBpw0gjWJUUc9CP/3DBUr
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dbg/AW8h
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: Handle PPS start time
 programming for past time values
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
Cc: anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>

I225/6 hardware can be programmed to start PPS output once
the time in Target Time registers is reached. The time
programmed in these registers should always be into future.
Only then PPS output is triggered when SYSTIM register
reaches the programmed value. There are two modes in i225/6
hardware to program PPS, pulse and clock mode.

There were issues reported where PPS is not generated when
start time is in past.

Example 1, "echo 0 0 0 2 0 > /sys/class/ptp/ptp0/period"

In the current implementation, a value of '0' is programmed
into Target time registers and PPS output is in pulse mode.
Eventually an interrupt which is triggered upon SYSTIM
register reaching Target time is not fired. Thus no PPS
output is generated.

Example 2, "echo 0 0 0 1 0 > /sys/class/ptp/ptp0/period"

Above case, a value of '0' is programmed into Target time
registers and PPS output is in clock mode. Here, HW tries to
catch-up the current time by incrementing Target Time
register. This catch-up time seem to vary according to
programmed PPS period time as per the HW design. In my
experiments, the delay ranged between few tens of seconds to
few minutes. The PPS output is only generated after the
Target time register reaches current time.

In my experiments, I also observed PPS stopped working with
below test and could not recover until module is removed and
loaded again.

1) echo 0 <future time> 0 1 0 > /sys/class/ptp/ptp1/period
2) echo 0 0 0 1 0 > /sys/class/ptp/ptp1/period
3) echo 0 0 0 1 0 > /sys/class/ptp/ptp1/period

After this PPS did not work even if i re-program with proper
values. I could only get this back working by reloading the
driver.

This patch takes care of calculating and programming
appropriate future time value into Target Time registers.

Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 25 +++++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 32ef112f8291..f0b979a70655 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -356,16 +356,35 @@ static int igc_ptp_feature_enable_i225(struct ptp_clock_info *ptp,
 			tsim &= ~IGC_TSICR_TT0;
 		}
 		if (on) {
+			struct timespec64 safe_start;
 			int i = rq->perout.index;
 
 			igc_pin_perout(igc, i, pin, use_freq);
-			igc->perout[i].start.tv_sec = rq->perout.start.sec;
+			igc_ptp_read(igc, &safe_start);
+
+			/* PPS output start time is triggered by Target time(TT)
+			 * register. Programming any past time value into TT
+			 * register will cause PPS to never start. Need to make
+			 * sure we program the TT register a time ahead in
+			 * future. There isn't a stringent need to fire PPS out
+			 * right away. Adding +2 seconds should take care of
+			 * corner cases. Let's say if the SYSTIML is close to
+			 * wrap up and the timer keeps ticking as we program the
+			 * register, adding +2seconds is safe bet.
+			 */
+			safe_start.tv_sec += 2;
+
+			if (rq->perout.start.sec < safe_start.tv_sec)
+				igc->perout[i].start.tv_sec = safe_start.tv_sec;
+			else
+				igc->perout[i].start.tv_sec = rq->perout.start.sec;
 			igc->perout[i].start.tv_nsec = rq->perout.start.nsec;
 			igc->perout[i].period.tv_sec = ts.tv_sec;
 			igc->perout[i].period.tv_nsec = ts.tv_nsec;
-			wr32(trgttimh, rq->perout.start.sec);
+			wr32(trgttimh, (u32)igc->perout[i].start.tv_sec);
 			/* For now, always select timer 0 as source. */
-			wr32(trgttiml, rq->perout.start.nsec | IGC_TT_IO_TIMER_SEL_SYSTIM0);
+			wr32(trgttiml, (u32)(igc->perout[i].start.tv_nsec |
+					     IGC_TT_IO_TIMER_SEL_SYSTIM0));
 			if (use_freq)
 				wr32(freqout, ns);
 			tsauxc |= tsauxc_mask;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
