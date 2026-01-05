Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CC4CF24E2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 09:04:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F296A405BE;
	Mon,  5 Jan 2026 08:04:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WV20eSsARa1g; Mon,  5 Jan 2026 08:04:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F0CA4059B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767600295;
	bh=GbuV+WlJIGnBDSgiGfWkwobLQKSrcJmQy/CjWqIHOEI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XgDRaYeYBYNHFxjrgMcoNVHuyoaqJkTCoPVax5a+MUg0dKiDae7gl+q6alGkVzLq+
	 kjO+PevQ+L3zjX19DHJ5ERiOL0Vrr9U8khdyM4fAQQ+oepYjSMQwF40IhuzLtmKNgm
	 whhqZYG6VP1uDD5GyOGrcPrkc87ZvkBSzIfrvI2Cv0fGMOj2O7TMCF5KhIyeB+homj
	 M9xhHULtYg0lOMFk6HSvm9YMPcmhUxcaa/jGtZHPKIBvJMxQ27lTQuFz0J6ls0PDMg
	 JAJNbDkv5oEUBFhPOkGixqduAFRI0M36z6X6+pAchbt+LiZaOdGoDvcd0a5kcG4fqJ
	 kwKbDtQ1NEHPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F0CA4059B;
	Mon,  5 Jan 2026 08:04:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DDA3CE7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 08:04:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3B6780D1F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 08:04:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H_3pbm_KDUn3 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 08:04:52 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 05 Jan 2026 08:04:51 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 09BA380D0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09BA380D0F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 09BA380D0F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 08:04:51 +0000 (UTC)
X-CSE-ConnectionGUID: 5sRWj6iZQ5madR88nOjwkg==
X-CSE-MsgGUID: JVwWVtt4QHKTl3VEPRqBWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="69014478"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="69014478"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 23:57:44 -0800
X-CSE-ConnectionGUID: d0W2AagzQre2iuNhyg5c7w==
X-CSE-MsgGUID: BvkTCkjiSbur3W1IsNMStg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="203304361"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 23:57:42 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Mon,  5 Jan 2026 09:57:38 +0200
Message-Id: <20260105075738.1514341-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767600292; x=1799136292;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5t/xX3hhNpG31mlv1kEbheuAq78a/fOdjgc1tctfJCw=;
 b=gMZHE3MwHQstMSiHzWlidel3r+49kI8UwvBcioeKqWMTHs9y2mZl5AJ3
 El5245y8WIhyXJyPWprRANSbGnaMOoG6HlNV0P2MTtnutO89JRrtjKqso
 FVQ47rSXpFG+fpBHz4WWVe1rlTSka7kInzpqnmu2dZX1oS+UgqGNW3dH+
 IAKzv4M3bj2M9Gi5I+8taqN+ZNXJ9vL6tPfaBdw2oLzW3btzFG72/u9fR
 pzbUAqVZ/bwrrrZfOfalbHw20YJUqu5wIMsuAuwif6TDsOZEZLKeuWVmK
 H9XnBTfT3+Qn9z8Pyn+y7t0F6ORqAEcb5YMy2grxShg50ffBxEGJydHcg
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gMZHE3Mw
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: correct TIMINCA
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
XTAL clock is incorrectly configured to 24 MHz instead of the expected
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
 drivers/net/ethernet/intel/e1000e/netdev.c | 79 ++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 116f3c92b5bc..4ab6897577e5 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3904,6 +3904,82 @@ static void e1000_flush_desc_rings(struct e1000_adapter *adapter)
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
+	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta;
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
+	delta = phc_delta - sys_delta;
+	if (delta > 100000) {
+		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
+		/* Program TIMINCA for 38.4 MHz */
+		timinca = (INCPERIOD_38400KHZ <<
+			   E1000_TIMINCA_INCPERIOD_SHIFT) |
+			  (((INCVALUE_38400KHZ <<
+			     adapter->cc.shift) &
+			   E1000_TIMINCA_INCVALUE_MASK));
+		ew32(TIMINCA, timinca);
+	}
+
+	/* reset the systim ns time counter */
+	spin_lock_irqsave(&adapter->systim_lock, flags);
+	timecounter_init(&adapter->tc, &adapter->cc,
+			 ktime_to_ns(ktime_get_real()));
+	spin_unlock_irqrestore(&adapter->systim_lock, flags);
+
+	/* restore the previous hwtstamp configuration settings */
+	ret_val = e1000e_config_hwtstamp(adapter, &adapter->hwtstamp_config,
+					 &extack);
+	if (ret_val) {
+		if (extack._msg)
+			e_err("%s\n", extack._msg);
+	}
+}
+
 /**
  * e1000e_systim_reset - reset the timesync registers after a hardware reset
  * @adapter: board private structure
@@ -3955,6 +4031,9 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
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

