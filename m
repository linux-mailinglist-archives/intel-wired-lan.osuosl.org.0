Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A894ACF7A94
	for <lists+intel-wired-lan@lfdr.de>; Tue, 06 Jan 2026 11:03:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C60FB8130B;
	Tue,  6 Jan 2026 10:03:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O2qkz3pYtWh2; Tue,  6 Jan 2026 10:03:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2953C812F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767693822;
	bh=jSb2OYdJtpKAfQts6LguslBkUBsGM0l/U9xvlyPJifE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=08St8HrsqPGNddESgXiE3ApH3sMPMJxWKF/eF00r2U7IZv+5jqdrdA7HK9a9jQQUD
	 eiSZzylaGvAfIia+8KU5r/0+hfhAm8DfGTVIZnyEIylxI581+nggSbCU+2jrDw27Q3
	 /4wJZ6f+jYWeMwXuFzCh2EFcH4GJxhfBiS5fFLxJ0UR7+eTe7iFYv7nX9W9oM1ku2I
	 yJ7wmxPLE6Lss8VFSYgISL63WC1QTuPGSwYYoaQjppW+kMjpeVB27ZVTZXxFnoZbR4
	 7bsO0KhDzCG5eMb3nLO4eWeMYDp4kC9yDu22gAAM+d4tv+SZibo0g37mjsj4cWZbGS
	 oy/7df2/bPFcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2953C812F1;
	Tue,  6 Jan 2026 10:03:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id DB53C2A3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:03:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B713640185
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:03:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XSOHtt6_W1Y5 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jan 2026 10:03:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D2C22400B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2C22400B4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D2C22400B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jan 2026 10:03:39 +0000 (UTC)
X-CSE-ConnectionGUID: 74phauFyQfuusi5bRMNb+Q==
X-CSE-MsgGUID: 7/7C4iWeRUakorAUx15msw==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68993759"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68993759"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 02:03:39 -0800
X-CSE-ConnectionGUID: Hx0DuYACQb+1QBD2mGHkGQ==
X-CSE-MsgGUID: nDT6hl4fSg6oNZHVIxVxDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="203585220"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 02:03:37 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Tue,  6 Jan 2026 12:03:31 +0200
Message-Id: <20260106100331.1576758-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767693820; x=1799229820;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5ybJSR4lnIApWjrLPbPlCKR4LZOnVpHacMcFdFXFhDk=;
 b=Cm8txLs61lV7Iak273ffOFvuINzDCQYBe3m1yX9a/1j6VWOWuR5/WzMH
 O247QsIif0FGya4mJYdlOQD/1nwnfPmMRkvC9WU9DpC9bYjKtt6C7qyXl
 m8r1L2q0VGrFUrUA/SUt5BTPNVjJBeQ0wDKkqx36kCYAheI7Ad97XNH0b
 wSNwsXpTSgRV2jn2JJn19VyFr/ppM+9tVv13xldcIIDjvun0+J5h0FKhz
 IwAL/mZkD80s+W4CzAmNYh8zilPGnHll1ILvVLNX62xip/PvyoxOK8TVu
 2ERKPlNDjLcwd/94o+vMOM2M2OghtPVDg5belqD4MqU/pk0jsNThEbRq7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Cm8txLs6
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct TIMINCA
 on ADP/TGP systems with wrong XTAL frequency
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware
XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
38.4 MHz. This causes the PHC to run significantly faster than system
time, breaking PTP synchronization.

To mitigate this at runtime, measure PHC vs system time over ~1 ms using
cross-timestamps. If the PHC increment differs from system time beyond
the expected tolerance (currently >100 uSecs), reprogram TIMINCA for the
38.4 MHz profile and reinitialize the timecounter.

Tested on an affected system using phc_ctl:
Without fix:
sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
clock time: 16.000541250 (expected ~10s)

With fix:
sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
clock time: 9.984407212 (expected ~10s)

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v2: avoid resetting the systim and rephrase commit message
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 80 ++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 116f3c92b5bc..edb72054d0d9 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3904,6 +3904,83 @@ static void e1000_flush_desc_rings(struct e1000_adapter *adapter)
 		e1000_flush_rx_ring(adapter);
 }
 
+/**
+ * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and system
+ * clock delta.
+ *
+ * Measures the time difference between the PHC (Precision Hardware Clock)
+ * and the system clock over a 1 millisecond interval. If the delta
+ * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
+ *
+ * @adapter: Pointer to the private adapter structure
+ **/
+static void e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter)
+{
+	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta_ns;
+	struct ptp_system_timestamp sys_start = {}, sys_end = {};
+	struct ptp_clock_info *info = &adapter->ptp_clock_info;
+	struct timespec64 phc_start, phc_end;
+	struct e1000_hw *hw = &adapter->hw;
+	struct netlink_ext_ack extack = {};
+	unsigned long flags;
+	u32 timinca;
+	s32 ret_val;
+
+	/* Capture start */
+	if (info->gettimex64(info, &phc_start, &sys_start)) {
+		e_dbg("PHC gettimex(start) failed\n");
+		return;
+	}
+
+	/* Small interval to measure increment */
+	usleep_range(1000, 1100);
+
+	/* Capture end */
+	if (info->gettimex64(info, &phc_end, &sys_end)) {
+		e_dbg("PHC gettimex(end) failed\n");
+		return;
+	}
+
+	/* Compute deltas */
+	phc_delta = timespec64_to_ns(&phc_end) -
+		    timespec64_to_ns(&phc_start);
+
+	sys_start_ns = (timespec64_to_ns(&sys_start.pre_ts) +
+			timespec64_to_ns(&sys_start.post_ts)) >> 1;
+
+	sys_end_ns = (timespec64_to_ns(&sys_end.pre_ts) +
+		      timespec64_to_ns(&sys_end.post_ts)) >> 1;
+
+	sys_delta = sys_end_ns - sys_start_ns;
+
+	delta_ns = phc_delta - sys_delta;
+	if (delta_ns > 100000) {
+		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
+		/* Program TIMINCA for 38.4 MHz */
+		timinca = (INCPERIOD_38400KHZ <<
+			   E1000_TIMINCA_INCPERIOD_SHIFT) |
+			  (((INCVALUE_38400KHZ <<
+			     adapter->cc.shift) &
+			   E1000_TIMINCA_INCVALUE_MASK));
+		ew32(TIMINCA, timinca);
+
+		/* reset the systim ns time counter */
+		spin_lock_irqsave(&adapter->systim_lock, flags);
+		timecounter_init(&adapter->tc, &adapter->cc,
+				 ktime_to_ns(ktime_get_real()));
+		spin_unlock_irqrestore(&adapter->systim_lock, flags);
+
+		/* restore the previous hwtstamp configuration settings */
+		ret_val = e1000e_config_hwtstamp(adapter,
+						 &adapter->hwtstamp_config,
+						 &extack);
+		if (ret_val) {
+			if (extack._msg)
+				e_err("%s\n", extack._msg);
+		}
+	}
+}
+
 /**
  * e1000e_systim_reset - reset the timesync registers after a hardware reset
  * @adapter: board private structure
@@ -3955,6 +4032,9 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
 		if (extack._msg)
 			e_err("%s\n", extack._msg);
 	}
+
+	if (hw->mac.type == e1000_pch_adp || hw->mac.type == e1000_pch_tgp)
+		return e1000e_xtal_tgp_workaround(adapter);
 }
 
 /**
-- 
2.34.1

