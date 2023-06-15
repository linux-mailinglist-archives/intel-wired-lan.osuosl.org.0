Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DD9730F59
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 08:30:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A725418D2;
	Thu, 15 Jun 2023 06:30:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A725418D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686810655;
	bh=0dJmAwCWNIrw5p7Uw2qohOsfy+EOACvh1RpYcaurIAM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ZQuc7oHCJzSNYEbYlyqUCOJQbSeWVJaKPH381j41D5QGLEWQTaSr6Q7L0rfQf31w3
	 uvFrYVPlkbGncqC4AAsC2vebtuo94H57ZXn1zHGUckKn3Ui8vmsped4qCV04VXUFPV
	 UfHOjAA4TU9tkg1LjVVFk2ePpkNqnQz6eyClPGq8T0dDt+7KhDWsVSsrF5hpwmIrAq
	 7cNWyiGYOvF2ZFvz6ZeYXiB+zVlJr/LquV7CwogJTstYGn4KA0v7LiK1r6K1nLDU6i
	 zrhJ8Bytd6YlzU1vh/JzqrWyrN2CZwybfJiwp6z0k8HUs8VQc+Taqo+1yzk7aMsbTX
	 gOY4M0khYzchw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yag2Yb0utoYn; Thu, 15 Jun 2023 06:30:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 058B340139;
	Thu, 15 Jun 2023 06:30:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 058B340139
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A473D1BF48C
 for <intel-wired-lan@osuosl.org>; Thu, 15 Jun 2023 06:30:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79DEC41EEF
 for <intel-wired-lan@osuosl.org>; Thu, 15 Jun 2023 06:30:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79DEC41EEF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IkwcJUqCDC3m for <intel-wired-lan@osuosl.org>;
 Thu, 15 Jun 2023 06:30:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D36F741EEC
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D36F741EEC
 for <intel-wired-lan@osuosl.org>; Thu, 15 Jun 2023 06:30:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="358821677"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="358821677"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 23:30:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="777544026"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="777544026"
Received: from inlubt0246.iind.intel.com ([10.67.198.165])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jun 2023 23:30:44 -0700
From: aravindhan.gunasekaran@intel.com
To: intel-wired-lan@osuosl.org
Date: Thu, 15 Jun 2023 12:00:43 +0530
Message-Id: <20230615063043.48250-1-aravindhan.gunasekaran@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686810647; x=1718346647;
 h=from:to:cc:subject:date:message-id;
 bh=nlPQfZd0tRe1e7lEWePlj05fuX/5nqPk6dMh9iPjEE0=;
 b=bt4mTYMU3WfOpwo5jY3E2dOVQqjBhGcIs2Alcr9nM4JI9nU1GKh1SAAf
 3vSS04a+1Is7Vm2fROmUl6dVyhEDBZ3Mukb7VWPD46yR6EKNiWib0bXJy
 yhi4s9M4Cl669EU5hMdZJnLPAPek5QsCdO3y38kplreDnvKp52Tc/f4ax
 xbhcm3PwxJqFKMvXQG1Y8DAnueAgWuLbA6Bxu8ZuBi8jIBHf7g+6EveCT
 vtcFaonXQpludbxwUEJs65CzQpp7p6bepB3vC0Ph2Xpwc/8hsqQNl02jJ
 lmTODPniaQeu3x+bVjyHaoBxMioQscmoRvyRsm9dz8uSpO90W/l47ywrI
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bt4mTYMU
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igc: Handle PPS start time
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

Fixes: 5e91c72e560c ("igc: Fix PPS delta between two synchronized end-points")
Signed-off-by: Aravindhan Gunasekaran <aravindhan.gunasekaran@intel.com>
---
v2: Added Fixes tag
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
