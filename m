Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB91CCB3E0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Dec 2025 10:47:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 83510837B9;
	Thu, 18 Dec 2025 09:47:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wxfaxUPac2po; Thu, 18 Dec 2025 09:47:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B774E8386F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766051230;
	bh=aFS5LPyBsi7qQGlpGLQ+5gQubplMRyYhhS5C6QLO4j0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TdGwsA32IoMrc5EYOlUysd3WVcnvutAMVFHoqh4r0oP9wjhhY2pPC5Ld++s5fbsUB
	 jAmM/85jEQgrrfQlC6kfERfZYjkkOtfJq8XcDdpUvk/bmoX6pmULxpHFIf3j05/wFv
	 6OoIJLghiOT6pLoD4aUqYqgRTbHR7tOTwvEr4MBMiW7F7tKIXktsR5HabQ39bhXh76
	 Xn8KLEKyJTlHXnon8XCed+z1igQXQChT9YzWYLNuLJnVeSnx67wjjMeQoY3BJkdRyM
	 tes5mU9dZ7Szu7MaAcKlLO1fP70YTuSYuczg1tFhoRZV9hzYMqyy7JNnbH9V81Di8N
	 4bw7DNtfLTflw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B774E8386F;
	Thu, 18 Dec 2025 09:47:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 600732A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 09:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 42119608F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 09:47:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PNcidP1EyN9C for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Dec 2025 09:47:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 28B4E60BC8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28B4E60BC8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28B4E60BC8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Dec 2025 09:47:06 +0000 (UTC)
X-CSE-ConnectionGUID: tZdH5kGPT86+I1SZ9ZvdUw==
X-CSE-MsgGUID: BaPIV+wITmiIm5aP8JPH/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="68155799"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="68155799"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 01:47:05 -0800
X-CSE-ConnectionGUID: IGeDR+cWRGCFTVmHvrH+5g==
X-CSE-MsgGUID: 2nuNSzGPQ12ToZJU0bV3Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="203060583"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa004.jf.intel.com with ESMTP; 18 Dec 2025 01:47:04 -0800
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Dec 2025 10:44:28 +0100
Message-Id: <20251218094428.1762860-1-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766051227; x=1797587227;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2l7sftU6c2VGwi3zbDZTUPbXZ3sqKJV8IEPxc4XG1bE=;
 b=WVnRtPL59Nl2PHzadviEX0omgcrNLyViOb4Tp3/XgnXcv3ycazo7tO8L
 4i2AtG5htUXsJfO90H269Xxyi4SWGhThGEtrLC/80gUO3zKdEMkThaY83
 TLO8Ygtqyan9Q/VVhGzN2eI51l0iU5LYS51eaqOmS07Lq+Rs7dQ3AQBhI
 JO5th8pZ07bXPzkg4VLO3KEOtusDztsjJVyTgFL7bKCDAao1q8TRKGCRl
 b5UR4PURCZDUYyEDMl2qK5l0/n4VZ1zBSkqXcsB6gSPVKLvw2WWzvptL5
 zw5Fc+6QcDFlVi9vJE68nJYLm5sum1YG4HMJR6kM9qtbbPsInK+O9v8Di
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WVnRtPL5
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix 'adjust' timer
 programming for E830 devices
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix incorrect 'adjust the timer' programming sequence for E830 devices
series. Only shadow registers GLTSYN_SHADJ were programmed in the
current implementation. According to the specification [1], write to
command GLTSYN_CMD register is also required with CMD field set to
"Adjust the Time" value, for the timer adjustment to take the effect.

The flow was broken for the adjustment less than S32_MAX/MIN range
(around +/- 2 seconds). For bigger adjustment, non-atomic programming
flow is used, involving set timer programming. Non-atomic flow is
implemented correctly.

Testing hints:
Run command:
	phc_ctl /dev/ptpX get adj 2 get
Expected result:
	Returned timstamps differ at least by 2 seconds

[1] Intel® Ethernet Controller E830 Datasheet rev 1.3, chapter 9.7.5.4
https://cdrdv2.intel.com/v1/dl/getContent/787353?explicitVersion=true

Fixes: f00307522786 ("ice: Implement PTP support for E830 devices")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 35680dbe4a7f..161a0ae8599c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -5381,8 +5381,8 @@ int ice_ptp_write_incval_locked(struct ice_hw *hw, u64 incval)
  */
 int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 {
+	int err = 0;
 	u8 tmr_idx;
-	int err;
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
@@ -5399,8 +5399,8 @@ int ice_ptp_adj_clock(struct ice_hw *hw, s32 adj)
 		err = ice_ptp_prep_phy_adj_e810(hw, adj);
 		break;
 	case ICE_MAC_E830:
-		/* E830 sync PHYs automatically after setting GLTSYN_SHADJ */
-		return 0;
+		/* E830 sync PHYs automatically after setting cmd register */
+		break;
 	case ICE_MAC_GENERIC:
 		err = ice_ptp_prep_phy_adj_e82x(hw, adj);
 		break;

base-commit: 8282ed7f73cf08f99288d3d0131e07f149063fbe
-- 
2.39.3

