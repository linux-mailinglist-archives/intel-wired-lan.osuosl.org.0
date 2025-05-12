Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2EAAB30C0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 09:47:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DF7381D3D;
	Mon, 12 May 2025 07:47:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cQzwe3XSqL-k; Mon, 12 May 2025 07:47:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71EE881456
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747036069;
	bh=UuF6297oVNl2PdACZRyzyGQq1CNMST3O/wk+L54KT5U=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fKOk3rJr/lvGzSO7S1GyLHafdJ4Y3bCE0ilwRYWZjFQ0GCIbK8aj8KK83x2SHnUrK
	 ulYrY+GS8vy3PUT1AYcjPQve/F1wpR8eG/FgXoWG/7yxNUmglLPL7LFs2y9S2oKGqO
	 xQHI2Ux7lVdWaMj1p7/eilugp9HcwPqZsiC3xrIzfLAPFsmeqt57EhC/iVKfwCkpJS
	 dQajnkEKw/nqJnvvqLcauDfG+aHaWYJUjxwwC6R7MsAJv+jqQoqD7E9DANGBhat3Uk
	 sCukFND7SNvKlEhLiueLyoutpsWsJ7x64n4TcwG29Dq+AgH+T1l2dd3XnCSz35fpYV
	 V+ZYMg4okU7Nw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71EE881456;
	Mon, 12 May 2025 07:47:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id A2564154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 07:47:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9392F60D64
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 07:47:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NtKsGuxl37Gs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 07:47:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D125460641
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D125460641
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D125460641
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 07:47:46 +0000 (UTC)
X-CSE-ConnectionGUID: KBlpCOLwS/W23MpdQDOxjQ==
X-CSE-MsgGUID: FoKkORYISf61HzSfmKWnqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="48067544"
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="48067544"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 00:47:46 -0700
X-CSE-ConnectionGUID: UNW/2Mi5TQikGZzTEuw6fw==
X-CSE-MsgGUID: RItBEACQToSf3rGTBj/Fqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="160542785"
Received: from admindev-x299-aorus-gaming-3-pro.igk.intel.com ([10.91.3.52])
 by fmviesa002.fm.intel.com with ESMTP; 12 May 2025 00:47:45 -0700
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: richardcochran@gmail.com, Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Mon, 12 May 2025 09:47:21 +0200
Message-Id: <20250512074721.4118376-1-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747036067; x=1778572067;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WqleS/OKmCcHMX2vyNm4n8qJQcB92yIGAXeem8mAVpY=;
 b=CTlvCNsP491zMA7GZXMlBuuwG1eq7wbA8VBEN1uu0NOewY+hpgvzg6of
 RlYNqrbnAn3S92IK3XeT6E51AWCWdkh4aQxEDmix91vtVoZFT98qLeQv7
 tYZfXs5C4hsaxYsjflFvdcjOouxEuPZMdSAh2Qmn7k973oPLjsIqnlMMY
 0OtK++SFfsv/OLq+QDW0WVZYrGyi9gP7HvFCGqAMl0MMJzaIqCIRe/Ooz
 VI5J0EP0RS44utH77h3IJWeO+1Vjb80DEsTpQGWE86MFREPQqS179kY/S
 rCJSb82erpPp/xng+ov5T/jJPBT5lswOt+6LgLZyurOWRxefPzXF78aBM
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CTlvCNsP
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice/ptp: Fix reporting of
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

