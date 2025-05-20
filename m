Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C62C9ABD230
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 10:42:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 557856084B;
	Tue, 20 May 2025 08:42:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uGprnvC2jSwe; Tue, 20 May 2025 08:42:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7710060E2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747730550;
	bh=MKamFSeXV5quLct11FIREpCPn+S3rR8e33X0K1RJxJA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YXyK9qk2eTGmOBqpSg6iSIi8bEgfxFVMAcu88Y9eY7gOaCb18+mPNV4d5U9v7WNeK
	 mmEPj2a2ew6DuyCkLJUHlLPjxXXv+PqxE3Sr24iARatSJnnK/2TFYQ3XZp5Jrw39D5
	 kwiKtBYMJXRitkHkP0zatL0nII2gi2SGwD5TnDo8gOxRNa9OwjcFb4Wh7g+IkP88HN
	 3bBrzNtcy78DjYir5h9ru2lEr2INQEoROyPcypk+Si1m+h5KuAo1Zp98FfgOUEjB7e
	 DEZuptcuEeyrm+wzuglhDL5pNWoRGT/sOTLkUksdScZX/yF4+Pn2aBZaLbXCRjdk3l
	 Jr9vLTdvR7VIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7710060E2F;
	Tue, 20 May 2025 08:42:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DB39ED4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C150F40267
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:42:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id evZD9MnyTAaL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 08:42:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6E4E540227
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E4E540227
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6E4E540227
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 08:42:27 +0000 (UTC)
X-CSE-ConnectionGUID: 4bZRYS4GReK3moL+tziNfw==
X-CSE-MsgGUID: UjiIe5R8RhCA07y7ZN27ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="37270477"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="37270477"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:42:27 -0700
X-CSE-ConnectionGUID: PQHVbds1QNieHIhf0zbgLA==
X-CSE-MsgGUID: Ge8aUrcrS3yfNDSM4SLwdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144742753"
Received: from admindev-x299-aorus-gaming-3-pro.igk.intel.com ([10.91.3.52])
 by orviesa005.jf.intel.com with ESMTP; 20 May 2025 01:42:25 -0700
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 richardcochran@gmail.com, Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Tue, 20 May 2025 10:42:16 +0200
Message-Id: <20250520084216.326210-1-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747730547; x=1779266547;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rchwuanThsE5B2k89HcYlZ9D24IM1yxl1+aLijatFB4=;
 b=GmwWeQo1PV3ieM2tQbUiF+Wq+HozPbqThFSO+Lte8QE+TBEYTjfN0r3l
 +MlZkKAHkIXKqr0zZBV7NBtV6DYrlwrRPSh/6dhqJUIdajJgVftVQQIyd
 okfahxGHW2Tr/wDLcXysDcpOg1rMI0eW4P74y/HK8Xs+rpb3eaMoolqDD
 k4cSyzz6yaIZ12ee+iQHZvALqYfR1g/jkvSg1o2HgU1saNbMDJjspx2Wr
 EwTxU+S66KWElJuIKQl1463+0Dp5/O5OnwkcygZFmn/dMsi4kvX70S+7A
 zMSu4SvIVkMT80VbeazbDlCmvUaGbF6H4jqp0zJXXulwyZZqFrmjVpiLM
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GmwWeQo1
Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice/ptp: fix crosstimestamp
 reporting
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
in smaller timestamp error window which cause error during phc2sys
execution on E825 NICs:
phc2sys[1768.256]: ioctl PTP_SYS_OFFSET_PRECISE: Invalid argument

This problem was introduced in the cited commit which omitted setting
use_nsecs to true when converting the ice driver to use
convert_base_to_cs().

Testing hints (ethX is PF netdev):
phc2sys -s ethX -c CLOCK_REALTIME  -O 37 -m
phc2sys[1769.256]: CLOCK_REALTIME phc offset -5 s0 freq      -0 delay    0

Fixes: d4bea547ebb57 ("ice/ptp: Remove convert_art_to_tsc()")
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
V3 -> V4 Updated commit message
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

