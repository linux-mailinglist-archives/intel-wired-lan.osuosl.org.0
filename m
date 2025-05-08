Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A89BAAAFA3C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 14:41:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CD4160F7E;
	Thu,  8 May 2025 12:41:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3lOUPD7LkK_Q; Thu,  8 May 2025 12:40:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9D2260F0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746708059;
	bh=g1Xpk10Z4TilPXftq/GV02P93ie/rWo92HHqsmALAnM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4KXfvHAMTDVSG8TUQCMBynQug02mb7T6eQ4n44tGrPiD2nZO6xvQHI+zxTGZoScTD
	 EhSL97BKGImQlCmCfe98luGQZwQno4hcLuua/Bfgd5kgso9Be1lt4MRZhDvj8v/fKW
	 CW70UvBM61Wic+Yls87jGm+mbP7wRNHpA5EW1lg+a7XDa302ttvXjqGHDm+lbm31dq
	 57CK/VClSVE0zhPGGSqCWz4TDXzgwbZtVutUZ0iOwyfDNFtoj3iOt8NG0/ZOPLHiMX
	 QkFjH5HMgkHvoPXNCd6/E4ufT+8NkPFxq+1HRAkDTfWm/s6M0e0l2Sj4CDLeItgpN2
	 6HyTf2ZcXjI0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9D2260F0A;
	Thu,  8 May 2025 12:40:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2090B15A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 12:40:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0694980E42
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 12:40:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OVcZ3CTy-hjJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 12:40:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6A69D80E29
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A69D80E29
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A69D80E29
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 12:40:57 +0000 (UTC)
X-CSE-ConnectionGUID: s9u0zF1TQtS1Xp+hmtaiXw==
X-CSE-MsgGUID: XBYQxgTUT2SmC5LBF/hBVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="52296272"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="52296272"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 05:40:57 -0700
X-CSE-ConnectionGUID: qh8DcA4fSTKSUFHjxHORmg==
X-CSE-MsgGUID: CAqFeICrSe6nQmZ0P1Q32A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="136222846"
Received: from admindev-x299-aorus-gaming-3-pro.igk.intel.com ([10.91.3.52])
 by orviesa006.jf.intel.com with ESMTP; 08 May 2025 05:40:56 -0700
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Thu,  8 May 2025 14:52:52 +0200
Message-Id: <20250508125252.3997364-1-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746708057; x=1778244057;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tVdtAT/kH+mStjUnlE9dTlp+0FxEPXh/nV2NzyVxSdk=;
 b=bqFozd3hnM9UQoFtZrQA2koHBKRrKTbo5kO0x+mjzYbMczJqQHDVnLvF
 FK0jCF72BfOVzlaudXWMOBclO8N854AVE9R/7wyiyl8t3GmXKh6mnGTdv
 ouYiAcyEvzf0EiiVrGN7t1dGNa5G91J56lC+q7+XbMBfik8vtdb/7xWMh
 LBKhq36xQOucv3U2tMg4o9h98CjuAchXA6LM2sjGIOdR83rhoiI2vV2wS
 F47mqVlUovW+UkH8NBfPcSC7wIEuW1fQa+89WaJymFYC3rezcuFglPT8Z
 K0116iIcQeiq7hnrldN0M4+3AkJeWaOAaOQAVq2hbIYCt/o1s3YSPZ1O1
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bqFozd3h
Subject: [Intel-wired-lan] [PATCH iwl-net] ice/ptp: Fix reporting of
 crosstimestamp
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

Set use_nsecs=true as timestamp is reported in ns. Lack of this result
in smaller timestamp error window which case error during phc2sys
execution on some platforms:
phc2sys[1768.256]: ioctl PTP_SYS_OFFSET_PRECISE: Invalid argument

Previously function convert_art_to_tsc was converting ts to the cycles
instead of ns.

Testing hints (ethX is PF netdev):
phc2sys -s ethX -c CLOCK_REALTIME  -O 37 -m

Fixes: d4bea547ebb57 (ice/ptp: Remove convert_art_to_tsc())
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 1fd1ae03eb90..11ed48a62b53 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2307,6 +2307,7 @@ static int ice_capture_crosststamp(ktime_t *device,
 	ts = ((u64)ts_hi << 32) | ts_lo;
 	system->cycles = ts;
 	system->cs_id = CSID_X86_ART;
+	system->use_nsecs = true;
 
 	/* Read Device source clock time */
 	ts_lo = rd32(hw, cfg->dev_time_l[tmr_idx]);

base-commit: 7e5af365e38059ed585917623c1ba3a6c04a8c10
-- 
2.34.1

