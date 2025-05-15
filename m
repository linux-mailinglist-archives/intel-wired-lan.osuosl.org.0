Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 395A4AB866D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 May 2025 14:33:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC7556114D;
	Thu, 15 May 2025 12:33:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GpaHNH5uYKXw; Thu, 15 May 2025 12:33:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45FA061147
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747312421;
	bh=ooK61hDBSJU00rWbCaJb0aWxT9i4TsPe6OheW0ZA01Y=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=10MACZ7oOnIOTN5EFhwN4wB9V2+EWTr9ANE588Bp3FWtaPmyuhQLWot0dG+wKcxqB
	 EA17/gFMnwYsowELqL6dGUBhteR+xmLIeunNXde/AytjYzHpn8017HwzwJUQGZ2d0q
	 v4It3SmEvjhsh1TdgXSJ3a8ig00FO778i49+GlADPnS57MubOXVgEZDShjPMVtS8sa
	 ahn0DzMbAfAWQbzQ5KJSWxlN8A7CcIIbm+wiiitKo2kpzMnWt5ZGnZq+pEcsw8KVHB
	 Oo3kUO1vwFWv1g10NQWimbgvykJdYsGv3cg4nNKE/qtq5xHGyHDAMLkf91r2mwvKg6
	 h723w1yqLqVhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45FA061147;
	Thu, 15 May 2025 12:33:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B4C0413D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 12:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9A9CE83925
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 12:33:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T6My_pYJlv52 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 May 2025 12:33:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3466D80E66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3466D80E66
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3466D80E66
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 May 2025 12:33:37 +0000 (UTC)
X-CSE-ConnectionGUID: ZBnX03VnQten31hAOctOOw==
X-CSE-MsgGUID: /5IZs/goTzu1gweQvaWDiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="74646885"
X-IronPort-AV: E=Sophos;i="6.15,291,1739865600"; d="scan'208";a="74646885"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 05:33:37 -0700
X-CSE-ConnectionGUID: czHv+sB6SY61qvbGgeYHYQ==
X-CSE-MsgGUID: hDCdknInQrKlBNvDORWoeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,291,1739865600"; d="scan'208";a="143309978"
Received: from admindev-x299-aorus-gaming-3-pro.igk.intel.com ([10.91.3.52])
 by orviesa004.jf.intel.com with ESMTP; 15 May 2025 05:33:35 -0700
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 richardcochran@gmail.com, Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Thu, 15 May 2025 14:32:36 +0200
Message-Id: <20250515123236.232338-1-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747312418; x=1778848418;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d8ge57CmNBGpOr47ySBYCPdt/LmqgPo3Abd1sYrRyc4=;
 b=T20X5/L23H9JIYI/kOYayAwGjfhTUvSt5n2haJISqp4zSv76Lpg3wjlb
 0/VcznIpdcv7hRL7N9Y4/Wb/67phwuKO+MCQuwdzwaE3M/af8VxEzC4B4
 QwbKLPyBmM9Ku2WBhb1BXpzkGMIviac9V6FiPtfKD0z6YFUHzP1Vrwljj
 L+NM7oYYtuEjF/dwRu1137XyhpY+Cap/PtzcX4Eo0+K9CHsOgzG3HNzsr
 li4mgcp+4gMPbdhhwoT7oQ8FVI891Wh/W3hAvbQ5DTas8oX/3frFTrba1
 BVdL1z8G3uvld4koJF7OgPUOTiL4hFUUbo8qqq7JrPP7QwfcO8QwkGOHY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T20X5/L2
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice/ptp: fix crosstimestamp
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

Before commit "Provide infrastructure for converting to/from a base clock"
the parameter use_nsec was not required. "Remove convert_art_to_tsc()"
rework shall already contain use_nsecs=true.

Testing hints (ethX is PF netdev):
phc2sys -s ethX -c CLOCK_REALTIME  -O 37 -m
phc2sys[1769.256]: CLOCK_REALTIME phc offset -5 s0 freq      -0 delay    0

Fixes: d4bea547ebb57 ("ice/ptp: Remove convert_art_to_tsc()")
Fixes" 6b2e29977518e ("timekeeping: Provide infrastructure for converting to/from a base clock")
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
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

