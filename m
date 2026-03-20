Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CICMGLHVvGkk3gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:05:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 120D22D5E38
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:05:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5EBE617A5;
	Fri, 20 Mar 2026 05:05:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZDDluQw7GO-n; Fri, 20 Mar 2026 05:05:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53243617A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773983150;
	bh=RbxkWCKjnyLo4sjH7GA5zQ2P4H9UP0gib2PxP9NwLfo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TO1l0BsG/pOIYhWFcPRcIpHYHiQZ9f2/kD60sljoxAPJJDMFbEJ7HFMiu4rF1GWOr
	 3J8Cq805XhfgqycnbxlaPOxcpwxffngiJuPWIoWEsxdeVOAlj7BWlQioNwxC+bllZK
	 QweQjwc8amLTuwxNtCLBizNzG79s8SY5ECOdupxIWJvz33Cvdf00MGX4lfp6GMha+Z
	 85Zr/7WgNJC+2OINjPAMwr0p9LbCFhmIVK7t1M+wDfY0vOS5mnhRooNU3TT9erYURS
	 0Kku1rHICwtKUYsSj9B6rjUdUuLmT3wBVXTFttvWREGuI4NwmEsi81vxn6Vy2XniaP
	 MlYmnhTUd/SCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53243617A1;
	Fri, 20 Mar 2026 05:05:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7490625C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6663841398
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fFof5HxuQP5s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 05:05:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B1E9E40176
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1E9E40176
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B1E9E40176
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:05:47 +0000 (UTC)
X-CSE-ConnectionGUID: NFgQlUdFQ56I1NgDzHQ8XQ==
X-CSE-MsgGUID: ZskzFhmgSZKhYkxJRIebAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="75251813"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="75251813"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 22:05:47 -0700
X-CSE-ConnectionGUID: GhOkh8fsRsy7umJCDo+W2A==
X-CSE-MsgGUID: YqqaZk+oSm2reQOSuI4i/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="222399163"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa010.jf.intel.com with ESMTP; 19 Mar 2026 22:05:46 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Lukasz Czapnik <lukasz.czapnik@intel.com>
Date: Fri, 20 Mar 2026 06:05:44 +0100
Message-ID: <20260320050544.422640-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773983148; x=1805519148;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QtubdldAllXyG0emmWV/zJMO0HuQ0Y0WQHq1vT6skuQ=;
 b=cnQem81JCxtXC6rGVuxLk5/+8Nncl82X9yaovggTnNKCFYtPGlz0n+tP
 ossTqhXXS24QZBpRf3mQ3qEu+LMyj1x60/Kei7grQ05CC25jMWBtuKrer
 WHsgbeCuAzQoWmqnchkJ2QnW2SAh11bFeGUyKlu5U0HkeA4hbp/hTAJgJ
 42SDX4X9I6xtOLEbLc3QUTrCGCUiXEP/kd0n4pM7Rh9PS64IX9YuVt0RY
 6lfHMACm0uXHEnicktMb5UMkN2tVTz3H2dbZEVrfc7bphQcRIkbW/xQjO
 7k1Wypb7U8YQDrlboF3BxwT7s7Ymj7MKM136j1ic/gfzTVTiqoNGVNhb2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cnQem81J
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: prevent integer overflow
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 120D22D5E38
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lukasz Czapnik <lukasz.czapnik@intel.com>

In ice_sched_bw_to_rl_profile(), the loop over 64 bits computes the
scheduler timestamp rate as:

  ts_rate = div64_long((s64)hw->psm_clk_freq,
                       pow_result * ICE_RL_PROF_TS_MULTIPLIER);

where pow_result = BIT_ULL(i). For large values of i, the product
pow_result * ICE_RL_PROF_TS_MULTIPLIER overflows u64 before being used
as the divisor, producing incorrect ts_rate values and potentially
undefined behaviour.

Fix this by pre-computing ts_freq = hw->psm_clk_freq /
ICE_RL_PROF_TS_MULTIPLIER once before the loop and then dividing only
by pow_result inside the loop. The division order avoids the overflow
while preserving the same mathematical result. Declare ts_freq as s64
to match the type domain of the surrounding arithmetic and avoid a
redundant cast at the use site.

While at it, scope the loop variable i to the for statement itself.

Fixes: 1ddef455f4a8 ("ice: Add NDO callback to set the maximum per-queue bitrate")
Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index fff0c1a..edea262c 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -3237,12 +3237,12 @@ static int
 ice_sched_bw_to_rl_profile(struct ice_hw *hw, u32 bw,
 			   struct ice_aqc_rl_profile_elem *profile)
 {
+	s64 ts_freq = hw->psm_clk_freq / ICE_RL_PROF_TS_MULTIPLIER;
 	s64 bytes_per_sec, ts_rate, mv_tmp;
 	int status = -EINVAL;
 	bool found = false;
 	s32 encode = 0;
 	s64 mv = 0;
-	s32 i;
 
 	/* Bw settings range is from 0.5Mb/sec to 100Gb/sec */
 	if (bw < ICE_SCHED_MIN_BW || bw > ICE_SCHED_MAX_BW)
@@ -3255,8 +3255,7 @@ ice_sched_bw_to_rl_profile(struct ice_hw *hw, u32 bw,
-	for (i = 0; i < 64; i++) {
+	for (int i = 0; i < 64; i++) {
 		u64 pow_result = BIT_ULL(i);
 
-		ts_rate = div64_long((s64)hw->psm_clk_freq,
-				     pow_result * ICE_RL_PROF_TS_MULTIPLIER);
+		ts_rate = div64_long(ts_freq, pow_result);
 		if (ts_rate <= 0)
 			continue;
 
-- 
2.52.0

