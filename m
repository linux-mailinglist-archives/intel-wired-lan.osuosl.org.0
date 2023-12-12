Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 548C180E13F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 03:06:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5877260BCA;
	Tue, 12 Dec 2023 02:06:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5877260BCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702346768;
	bh=IT9ThHK9i5mAIT2tCKu5yaVSmQojGqQ86xyeXZWGxYA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KdfnL1TYjwbLQYzB5MfWu12V3AANtjeYRd+55RMbu9DomJSoUW8FqOTBX7NVUhP7L
	 bJlsAO1UryRn7IR0zXWIU+V5oFbVNVAha/20Y5miNS/NdQ9gXOjZ+Nk1YTqsiCa4Df
	 lG/RoqlNWqIVwTe+14bRcEIc3Vdw+D4jUHlSzq4vgdQDFGmHh45iUHlAaNgb2DfQ/R
	 TcgQgAb6MNDhx9z8wOG/cKApr8ioSgiX36EocdFYrdCK3XsG2HxnY8nvog+q7TIs0w
	 sV9p6kQxwtwX8AQd6qsPEo9V3mjCqdFyakyZGRdE/XOHYD5Kyd9O4rtzWxcAmDCT4b
	 V2liZ1yEvtKCQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RIJ6Q0BlPf8O; Tue, 12 Dec 2023 02:06:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B09BE60BB7;
	Tue, 12 Dec 2023 02:06:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B09BE60BB7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CC9911BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 02:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9947081773
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 02:06:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9947081773
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2wrk6tIn8tWy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 02:06:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 253638176C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 02:06:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 253638176C
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="398589093"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="398589093"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 18:05:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="1104714794"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="1104714794"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 18:05:58 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Sasha Neftin <sasha.neftin@intel.com>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 11 Dec 2023 18:05:52 -0800
Message-ID: <20231212020552.2217331-1-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702346760; x=1733882760;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b54NaYXwhlk4b2QNWJxKPUXWtSWBnp5E+TRTcqb03mk=;
 b=cbSwcKFM5/GazpxKfjWtQJDhVqd1QKZDtX/0B7lfj28B85zXCcQ1CWvL
 0Da1KFJQ8ibj73GBt7RNLIanIV9VPdsVJT4hy6RXT1I62FEJmnGxkUcmS
 UB0FRlTwAGj184+n2xPFeBC87+3HVcSByPVrztTz2qVybteT86R8KTH0J
 3dA5fAhVfDCRsvrVxvLlgOWPnCzv0qn0PbLVp+2bJgpjfDkdlcgYyW0UC
 HTrCc6RsCYoaLR42O9sdJEwLDS9XwjY8Rcip+w8NOFuYAgN04+D9MDJXL
 zGZp/j1w6WX3/GgjT5sOXIviDS7yvAARqKCegUqOCg9NDpYn+hphwf9bN
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cbSwcKFM
Subject: [Intel-wired-lan] [PATCH iwl-net] e1000e: correct maximum frequency
 adjustment values
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Trey Harrison <harrisondigitalmedia@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The e1000e driver supports hardware with a variety of different clock
speeds, and thus a variety of different increment values used for
programming its PTP hardware clock.

The values currently programmed in e1000e_ptp_init are incorrect. In
particular, only two maximum adjustments are used: 24000000 - 1, and
600000000 - 1. These were originally intended to be used with the 96 MHz
clock and the 25 MHz clock.

Both of these values are actually slightly too high. For the 96 MHz clock,
the actual maximum value that can safely be programmed is 23,999,938. For
the 25 MHz clock, the maximum value is 599,999,904.

Worse, several devices use a 24 MHz clock or a 38.4 MHz clock. These parts
are incorrectly assigned one of either the 24million or 600million values.
For the 24 MHz clock, this is not a significant issue: its current
increment value can support an adjustment up to 7billion in the positive
direction. However, the 38.4 KHz clock uses an increment value which can
only support up to 230,769,157 before it starts overflowing.

To understand where these values come from, consider that frequency
adjustments have the form of:

new_incval = base_incval + (base_incval * adjustment) / (unit of adjustment)

The maximum adjustment is reported in terms of parts per billion:
new_incval = base_incval + (base_incval * adjustment) / 1 billion

The largest possible adjustment is thus given by the following:
max_incval = base_incval + (base_incval * max_adj) / 1 billion

Re-arranging to solve for max_adj:
max_adj = (max_incval - base_incval) * 1 billion / base_incval

We also need to ensure that negative adjustments cannot underflow. This can
be achieved simply by ensuring max_adj is always less than 1 billion.

Introduce new macros in e1000.h codifying the maximum adjustment in PPB for
each frequency given its associated increment values. Also clarify where
these values come from by commenting about the above equations.

Replace the switch statement in e1000e_ptp_init with one which mirrors the
increment value switch statement from e1000e_get_base_timinica. For each
device, assign the appropriate maximum adjustment based on its frequency.
Some parts can have one of two frequency modes as determined by
E1000_TSYNCRXCTL_SYSCFI.

Since the new flow directly matches the assignments in
e1000e_get_base_timinca, and uses well defined macro names, it is much
easier to verify that the resulting maximum adjustments are correct. It
also avoids difficult to parse construction such as the "hw->mac.type <
e1000_phc_lpt", and the use of fallthrough which was especially confusing
when combined with a conditional block.

Note that I believe the current increment value configuration used for
24MHz clocks is sub-par, as it leaves at least 3 extra bits available in
the INCVALUE register. However, fixing that requires more careful review of
the clock rate and associated values.

Reported-by: Trey Harrison <harrisondigitalmedia@gmail.com>
Fixes: 68fe1d5da548 ("e1000e: Add Support for 38.4MHZ frequency")
Fixes: d89777bf0e42 ("e1000e: add support for IEEE-1588 PTP")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
Sasha, here's a better solution to what you proposed at [1], which fixes the
issues I reported. It fixes the 24million and 600 million values, fixes the
case statement so that its easier to follow, and introduces macros to avoid
the confusion of the magic numbers.

The 24m and 600m max values appear to have originated all the way back when
the driver first introduced the PTP support. I suspect no one directly
tested whether such a large adjustment would behave correctly. They would
only come up in normal practice rarely (such as if ptp4l when configured to
avoid stepping the clock and only perform frequency slewing, and the remote
clock had a large jump occur).

[1]: https://lore.kernel.org/intel-wired-lan/20231209170753.168989-1-sasha.neftin@intel.com/

 drivers/net/ethernet/intel/e1000e/e1000.h | 20 ++++++++++++++++++++
 drivers/net/ethernet/intel/e1000e/ptp.c   | 22 +++++++++++++++-------
 2 files changed, 35 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h b/drivers/net/ethernet/intel/e1000e/e1000.h
index a187582d2299..9b384818e11a 100644
--- a/drivers/net/ethernet/intel/e1000e/e1000.h
+++ b/drivers/net/ethernet/intel/e1000e/e1000.h
@@ -360,23 +360,43 @@ s32 e1000e_get_base_timinca(struct e1000_adapter *adapter, u32 *timinca);
  * As a result, a shift of INCVALUE_SHIFT_n is used to fit a value of
  * INCVALUE_n into the TIMINCA register allowing 32+8+(24-INCVALUE_SHIFT_n)
  * bits to count nanoseconds leaving the rest for fractional nonseconds.
+ *
+ * Any given INCVALUE also has an associated maximum adjustment value. This
+ * maximum adjustment value is the largest increase (or decrease) which can be
+ * safely applied without overflowing the INCVALUE. Since INCVALUE has
+ * a maximum range of 24 bits, its largest value is 0xFFFFFF.
+ *
+ * To understand where the maximum value comes from, consider the following
+ * equation:
+ *
+ *   new_incval = base_incval + (base_incval * adjustment) / 1billion
+ *
+ * To avoid overflow that means:
+ *   max_incval = base_incval + (base_incval * max_adj) / billion
+ *
+ * Re-arranging:
+ *   max_adj = floor(((max_incval - base_incval) * 1billion) / 1billion)
  */
 #define INCVALUE_96MHZ		125
 #define INCVALUE_SHIFT_96MHZ	17
 #define INCPERIOD_SHIFT_96MHZ	2
 #define INCPERIOD_96MHZ		(12 >> INCPERIOD_SHIFT_96MHZ)
+#define MAX_PPB_96MHZ		23999900 /* 24,999,900 ppb */
 
 #define INCVALUE_25MHZ		40
 #define INCVALUE_SHIFT_25MHZ	18
 #define INCPERIOD_25MHZ		1
+#define MAX_PPB_25MHZ		599999900 /* 599,999,900 ppb */
 
 #define INCVALUE_24MHZ		125
 #define INCVALUE_SHIFT_24MHZ	14
 #define INCPERIOD_24MHZ		3
+#define MAX_PPB_24MHZ		999999999 /* 999,999,999 ppb */
 
 #define INCVALUE_38400KHZ	26
 #define INCVALUE_SHIFT_38400KHZ	19
 #define INCPERIOD_38400KHZ	1
+#define MAX_PPB_38400KHZ	230769100 /* 230,769,100 ppb */
 
 /* Another drawback of scaling the incvalue by a large factor is the
  * 64-bit SYSTIM register overflows more quickly.  This is dealt with
diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index 02d871bc112a..bbcfd529399b 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -280,8 +280,17 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
 
 	switch (hw->mac.type) {
 	case e1000_pch2lan:
+		adapter->ptp_clock_info.max_adj = MAX_PPB_96MHZ;
+		break;
 	case e1000_pch_lpt:
+		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)
+			adapter->ptp_clock_info.max_adj = MAX_PPB_96MHZ;
+		else
+			adapter->ptp_clock_info.max_adj = MAX_PPB_25MHZ;
+		break;
 	case e1000_pch_spt:
+		adapter->ptp_clock_info.max_adj = MAX_PPB_24MHZ;
+		break;
 	case e1000_pch_cnp:
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
@@ -289,15 +298,14 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
 	case e1000_pch_lnp:
 	case e1000_pch_ptp:
 	case e1000_pch_nvp:
-		if ((hw->mac.type < e1000_pch_lpt) ||
-		    (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)) {
-			adapter->ptp_clock_info.max_adj = 24000000 - 1;
-			break;
-		}
-		fallthrough;
+		if (er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_SYSCFI)
+			adapter->ptp_clock_info.max_adj = MAX_PPB_24MHZ;
+		else
+			adapter->ptp_clock_info.max_adj = MAX_PPB_38400KHZ;
+		break;
 	case e1000_82574:
 	case e1000_82583:
-		adapter->ptp_clock_info.max_adj = 600000000 - 1;
+		adapter->ptp_clock_info.max_adj = MAX_PPB_25MHZ;
 		break;
 	default:
 		break;

base-commit: e307b5a845c5951dabafc48d00b6424ee64716c4
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
