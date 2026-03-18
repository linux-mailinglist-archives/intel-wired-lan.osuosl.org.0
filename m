Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFoSIaBxumnRWQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 10:34:24 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A092B9204
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 10:34:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 054FE83C39;
	Wed, 18 Mar 2026 09:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id haPRzR9pujCN; Wed, 18 Mar 2026 09:34:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6260083B58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773826459;
	bh=JwwNVcaX8FuojrsPgklowATIHjoXUEVNKZZBXpEYmMo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HBMkuEe2IQwm2vLVTpCogBCbx2Gu/4mO0EC57DPX89d4PK3YmcU6PvCQj34yvFeML
	 XD4toYiR+qgX7Cfrp3T/QNSF7pXdGZZ43aRGd7va5FtrM1VMhLLesOyz9FzJuUyF6T
	 ghdZEJgjaPZ8kkB/G9qkbxKYPUDxgFK7QJ2bnBd4mdgOx4ucpyJHuCircZg92Z3XXH
	 h0DwUfSJhLxzlrceaxk7Ul12pEozcMNVtwSFRnoF4kAVAjiIDrmiM5d3YNsNyHu4/5
	 HuZMXWXsO5xrOxlXrqJaNxueGawQSiSheHgftpSChMKfZQOhjLHgLxLKjXiG902bAx
	 EgA40PFCuJ9MA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6260083B58;
	Wed, 18 Mar 2026 09:34:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C7E01BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4EAA0608EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:34:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ymrpi__bCJ69 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 09:34:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B824860784
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B824860784
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B824860784
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 09:34:16 +0000 (UTC)
X-CSE-ConnectionGUID: LhM6uuL9RZazeIo9Z2u/+g==
X-CSE-MsgGUID: UyqZu0+7TxeIrT3kj3Dl4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="74995517"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="74995517"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 02:34:16 -0700
X-CSE-ConnectionGUID: LzrISX69Q/2zycI6pVUeWg==
X-CSE-MsgGUID: fML5KubITaO1/TGDt2I65Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="245596456"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 02:34:14 -0700
From: Dima Ruinskiy <dima.ruinskiy@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: dima.ruinskiy@intel.com,
	anthony.l.nguyen@intel.com
Date: Wed, 18 Mar 2026 11:34:12 +0200
Message-Id: <20260318093412.2628443-1-dima.ruinskiy@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773826457; x=1805362457;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UKbsw+1g7WbCaVzc9oihUKaZkyVa2+w+p179ldV114k=;
 b=Ki79+FOVUL+nuGCcc2ePgvP+qATU0yNs2GBAIaj9KPwTJDrrJz6uoZnz
 pXCgovoJLkytnghz/ca8n77ZD1PuH/askiEd3nZ20NEJrn/ymveaIoh4a
 u7ecof/PsFYtn+GZmpJVEuTK7MFhWQc0SLiDxdhBdxZsWN4B2RXxqvzK7
 031m9erWbDpIb76sk9xwaqf1QRaA36C8OrhXMbjcb3+22u5saZ7L2rk+c
 Yuu+wHnA46elj+eNJHdWAYycyAUcI6G+hgO7v9jI5C+Qdzs9UkB/ZUXdr
 0f3F0SnGQBjRWlvFkAeM8Fe92ejtrpr/1BpDTbA1lVS6CzMbm3fMxHN1u
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ki79+FOV
Subject: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: correct TIMINCA on
 ADP/TGP systems with wrong XTAL frequency
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 69A092B9204
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Vitaly Lifshits <vitaly.lifshits@intel.com>

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

Fixes: fb776f5d57ee ("e1000e: Add support for Tiger Lake")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Co-developed-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
---
v3: fix cc.shift and wrap TIMINCA write in systim_lock
v2: avoid resetting the systim and rephrase commit message
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 78 ++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 9befdacd6730..26fdef6075c8 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3902,6 +3902,81 @@ static void e1000_flush_desc_rings(struct e1000_adapter *adapter)
 		e1000_flush_rx_ring(adapter);
 }
 
+/**
+ * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and system
+ * clock delta.
+ * @adapter: Pointer to the private adapter structure
+ *
+ * Measures the time difference between the PHC (Precision Hardware Clock)
+ * and the system clock over a 1 millisecond interval. If the delta
+ * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
+ */
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
+		spin_lock_irqsave(&adapter->systim_lock, flags);
+		adapter->cc.shift = INCVALUE_SHIFT_38400KHZ;
+		timinca = (INCPERIOD_38400KHZ <<
+			   E1000_TIMINCA_INCPERIOD_SHIFT) |
+			  (((INCVALUE_38400KHZ <<
+			     adapter->cc.shift) &
+			   E1000_TIMINCA_INCVALUE_MASK));
+		ew32(TIMINCA, timinca);
+
+		/* reset the systim ns time counter */
+		timecounter_init(&adapter->tc, &adapter->cc,
+				 ktime_to_ns(ktime_get_real()));
+		spin_unlock_irqrestore(&adapter->systim_lock, flags);
+
+		/* restore the previous hwtstamp configuration settings */
+		ret_val = e1000e_config_hwtstamp(adapter,
+						 &adapter->hwtstamp_config,
+						 &extack);
+		if (ret_val && extack._msg)
+			e_err("%s\n", extack._msg);
+	}
+}
+
 /**
  * e1000e_systim_reset - reset the timesync registers after a hardware reset
  * @adapter: board private structure
@@ -3953,6 +4028,9 @@ static void e1000e_systim_reset(struct e1000_adapter *adapter)
 		if (extack._msg)
 			e_err("%s\n", extack._msg);
 	}
+
+	if (hw->mac.type == e1000_pch_adp || hw->mac.type == e1000_pch_tgp)
+		e1000e_xtal_tgp_workaround(adapter);
 }
 
 /**
-- 
2.34.1

