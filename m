Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NeRM3Rb12kCNAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 09:55:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 938E63C7564
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Apr 2026 09:55:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC0CD4087A;
	Thu,  9 Apr 2026 07:55:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MN0j8cY7pR0H; Thu,  9 Apr 2026 07:55:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 604D440933
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775721329;
	bh=IYa4YKAXuQi8DiosGXxjBjYfZrJ8/mD458SDehiJr+I=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JYmblkcC2tCDExZkUZwdAZAciFOzO86xl/Ew8VrmHWQSXM+wQo6o1P9wbdrY8CKec
	 /w9gDBoUd1RqZF3SvXOX3qBinE+JtZvZp8EfEcXCK0e5WF4AY1szSVMtOht44oMdCz
	 F1q7jYb5u5u1osKg1/OWUg5SIKXHtk3RnE90lnVLt4QT7FnC52IpXcAL/D6W76J75o
	 aTrFiRzIjtUP4TxS33zmGa+Yjhx3qdPytReIn+Z7P5dEdvA9KBYINedf/KBSsLyg+E
	 DOKJV3DOWwfVyR/mVFDcCQjGu2sWzk4M1aKwj9e6jdmuV8AeZ3S7Ad1ckYaP1SZEGJ
	 sFvUw5rrVD2uA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 604D440933;
	Thu,  9 Apr 2026 07:55:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 926321D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 07:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7844681D46
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 07:55:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lfr7SXrC40OH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2026 07:55:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AD25181CEF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD25181CEF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD25181CEF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2026 07:55:26 +0000 (UTC)
X-CSE-ConnectionGUID: AY5Z3YUNRyGiZ9+rUYnP+w==
X-CSE-MsgGUID: bwvFR0/8RZ2+BfEcLSS2xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="99346304"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="99346304"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 00:55:26 -0700
X-CSE-ConnectionGUID: IWD2CF2fTrqWGyKgTGudOg==
X-CSE-MsgGUID: BV+lYnXdTIu9DNNXNk9UBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="228628765"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 09 Apr 2026 00:55:24 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Simon Horman <horms@kernel.org>, Paul Menzel <pmenzel@molgen.mpg.de>
Date: Thu,  9 Apr 2026 09:55:23 +0200
Message-ID: <20260409075523.3728506-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775721327; x=1807257327;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/5ZJ1FafXGgB0BH35EwTR8rcplGlVRfAu4DR25wM9Wo=;
 b=a5cCZARnwdSBMn2WbeCiw7MEumrBhNDwb44Py5HPqpd6d35VTshO8rbG
 2xqduUftiAg6B7BdFf0GB5mLH/Xy5uLGjy1jUuYT+RZC5RDQ38805yb/+
 UTf8Lpof1BEf9N2pV5fK5Ry1R9VbeOatcy3Nh/jV0O8pGKH9viaCcQsHe
 6gyf1TumF6bDa/DrN86eA4CvfSIgK0uov3IEP9PWq8QPyJGYZFgD618zT
 GrROCCaSjLtGLS/Wd060hZkuSlVjtSHAMurVo83d/Ijsgl/NmlArkzUge
 ubm2o/Uj8kO+fEPfMK2NRU320FMmrHkjByQAZDXSiSBXQ1rwkSW2Piw7Z
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a5cCZARn
Subject: [Intel-wired-lan] [PATCH iwl-next v2] igb: use ktime_get_real
 helpers in igb_ptp_reset()
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 938E63C7564
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace ktime_to_ns(ktime_get_real()) with the direct equivalent
ktime_get_real_ns() and ktime_to_timespec64(ktime_get_real()) with
ktime_get_real_ts64() in igb_ptp_reset().  Using the combined helpers
makes the intent clearer.

Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Suggested-by: Simon Horman <horms@kernel.org>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2 removed the inaccurate claim, + Pauls RB
---
 drivers/net/ethernet/intel/igb/igb_ptp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index bd85d02..638d824 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -1500,12 +1500,13 @@ void igb_ptp_reset(struct igb_adapter *adapter)
 
 	/* Re-initialize the timer. */
 	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211)) {
-		struct timespec64 ts = ktime_to_timespec64(ktime_get_real());
+		struct timespec64 ts;
 
+		ktime_get_real_ts64(&ts);
 		igb_ptp_write_i210(adapter, &ts);
 	} else {
 		timecounter_init(&adapter->tc, &adapter->cc,
-				 ktime_to_ns(ktime_get_real()));
+				 ktime_get_real_ns());
 	}
 out:
 	spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
-- 
2.52.0

