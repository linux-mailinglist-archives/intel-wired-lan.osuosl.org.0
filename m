Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WK7vHamGAWpOcQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 09:35:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6EF5094C0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 09:35:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D33F60858;
	Mon, 11 May 2026 07:35:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5qzIdcDQWgJK; Mon, 11 May 2026 07:35:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E313C60859
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778484901;
	bh=D+v+mpH5HXyLJyBkteipcWAQdRwFbrWSJc/6uXuUDAI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nsC5oxi2IStNClZJVno7CTFN4+xbaBkxtxVAKfVXfFDxlbKbmep6r/mSANYZ5mNvZ
	 zToWSd8fu9bsw7HcBeVKwWa53gz9SQNK4UoGwaZ54DQOT7rEpOwvP8PFGYMKbVMp2o
	 tRB2CISjGHc63Jxca5SMz4ZRpSyZ+1uTSQR6dh2ZBhZyyKtxAxoRExwmu1q7ksDOJ1
	 uwp8H0bPUQshuJmtR39FRYKPhWi4iq2/LOmp6iKEGYSm4LGt1FLNQ1AD9yWVgpXVjR
	 DqNE5CSmqGueG2p/ErgKcuxEAByGC8mYOmcW9a4S5xlBVthzjOC3rtJxCvh8skIDKG
	 xX8OiMcoEhbzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E313C60859;
	Mon, 11 May 2026 07:35:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 65700272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 07:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AC9C840C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 07:34:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 58Ewn7U6KJ1k for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 07:34:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5DB77840C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DB77840C5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5DB77840C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 07:34:57 +0000 (UTC)
X-CSE-ConnectionGUID: HgghhdaMSE2LgKazfUc+lQ==
X-CSE-MsgGUID: 3GUMcPkCQhmwyc5Il6KAbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="102030054"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="102030054"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 00:34:57 -0700
X-CSE-ConnectionGUID: zn7NNtibSluMa6GYVt0IrQ==
X-CSE-MsgGUID: sE7shOsJSwi1A6usA1va/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="241735131"
Received: from pae-d-dell-r7525-263.igk.intel.com ([172.28.191.240])
 by orviesa004.jf.intel.com with ESMTP; 11 May 2026 00:34:56 -0700
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, aleksandr.loktionov@intel.com,
 arkadiusz.kubalewski@intel.com,
 Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Mon, 11 May 2026 09:36:34 +0200
Message-ID: <20260511073657.1073780-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778484898; x=1810020898;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=V/FqnKuLf5ly7IGnIqtIrW8gjqh4B9YtBRmcrjcAOKg=;
 b=lI8EAFcDD918fQJu9pgIWA7bAH3lv1ko7wvP+m8mepqvVlOpEZ8VMYgc
 VBOuSWAfWLycZBR/HfQdAYPLihiWsA3DVktcdAgxXLwCm1xkdf+IB07EH
 1/fDoPlDCzPjtEdaQK6QaWAvj7hhqv3cKQoGx31x5jxInGCMqNiDJ1rPK
 3Cb5waMgyCHfydvBgNFlKCHrl5Grz0krg51RY667MpmREZTY5Zmhts2xk
 3jdzQViq+a5Ch35n93dhTLSKS86eEzBfhShOvHr4rl1eNmVnRqiN2Z9wW
 9EKHPE/QNeyiaRtHGJ/HixErp0L88OB5VD1m5QHRXcd6fVeIoK661fFdX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lI8EAFcD
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: add rx timestamp tracepoint
 for debugging
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
X-Rspamd-Queue-Id: 9E6EF5094C0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Add ice_rx_hwtstamp trace event to help debug PTP rx timestamp issues.
The trace captures cached_time, ts_high, and the extended ts_ns value in
ice_ptp_get_rx_hwts().

Enable with:
echo 1 > /sys/kernel/debug/tracing/events/ice/ice_rx_hwtstamp/enable
cat /sys/kernel/debug/tracing/trace_pipe

Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c   |  2 ++
 drivers/net/ethernet/intel/ice/ice_trace.h | 18 ++++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 691f05c62d4e..07e621813ff5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2333,6 +2333,8 @@ u64 ice_ptp_get_rx_hwts(const union ice_32b_rx_flex_desc *rx_desc,
 	ts_high = le32_to_cpu(rx_desc->wb.flex_ts.ts_high);
 	ts_ns = ice_ptp_extend_32b_ts(cached_time, ts_high);
 
+	ice_trace(rx_hwtstamp, cached_time, ts_high, ts_ns);
+
 	return ts_ns;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_trace.h b/drivers/net/ethernet/intel/ice/ice_trace.h
index 4f35ef8d6b29..3cb8c6ea03cf 100644
--- a/drivers/net/ethernet/intel/ice/ice_trace.h
+++ b/drivers/net/ethernet/intel/ice/ice_trace.h
@@ -241,6 +241,24 @@ DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_fw_req);
 DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_fw_done);
 DEFINE_TX_TSTAMP_OP_EVENT(ice_tx_tstamp_complete);
 
+/* Trace event for Rx timestamp */
+TRACE_EVENT(ice_rx_hwtstamp,
+	    TP_PROTO(u64 cached_time, u32 ts_high, u64 ts_ns),
+
+	    TP_ARGS(cached_time, ts_high, ts_ns),
+
+	    TP_STRUCT__entry(__field(u64, cached_time)
+			     __field(u32, ts_high)
+			     __field(u64, ts_ns)),
+
+	    TP_fast_assign(__entry->cached_time = cached_time;
+			   __entry->ts_high = ts_high;
+			   __entry->ts_ns = ts_ns;),
+
+	    TP_printk("cached_time=%llu ts_high=%u ts_ns=%llu",
+		      __entry->cached_time, __entry->ts_high, __entry->ts_ns)
+);
+
 DECLARE_EVENT_CLASS(ice_esw_br_fdb_template,
 		    TP_PROTO(struct ice_esw_br_fdb_entry *fdb),
 		    TP_ARGS(fdb),

base-commit: 5c0d2ac5900d689d422a31cd45073175150c0a39
-- 
2.43.0

