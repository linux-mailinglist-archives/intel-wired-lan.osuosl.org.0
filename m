Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D819CDE38
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 13:26:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6ACBB40978;
	Fri, 15 Nov 2024 12:26:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W9BSf7xgncLS; Fri, 15 Nov 2024 12:26:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7527940394
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731673592;
	bh=X2Rqv6EIS1Cc3h9tzW8ao+zu7jAnqVSPhjA4nkO4Kgs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QXyEvGGkRdJVselCuJ23/FX93SYOiDO1WQF4Ft7Xe/ArrXTizZUROzsKwnzUSApQS
	 Un7ADAH4NL2gNQZTneOhaiwJZXb3DOVLN1rW1UDh1yOHOxZvP2N5coPk4FmR8jwq74
	 t9JyeU6loJgSZdMV2GcT3nU2omT6T/J0iMwCg/42zVNTgAxLt73RqmhhqZhbcIDtA6
	 p1Iryux/iYEba2UlQA0BgCy3s8BYVdl5l7rX+GgEbyO7Wh81tVPkBFKLlx64U1DX0G
	 vn+cldfk1BdcbKENGSxAIdA0jT19yISlYIFu7tKidY59+Wz85QH3hL5EelE4mQ2g6J
	 cCZlQAfYdv0UQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7527940394;
	Fri, 15 Nov 2024 12:26:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 370281EB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:26:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 19369847AD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:26:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XbEp2AnYteje for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 12:26:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B13681425
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B13681425
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B13681425
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:26:28 +0000 (UTC)
X-CSE-ConnectionGUID: esFX0ECwSCqAi1IbNnAXFg==
X-CSE-MsgGUID: qWM8JHUYTDiCQf37WhxP5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="43076931"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="43076931"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 04:26:28 -0800
X-CSE-ConnectionGUID: iIGnaJcMSlyc7ry0/P1nMQ==
X-CSE-MsgGUID: MgDbaiHxQKKxEGqi7G930g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="126089718"
Received: from pae-dbg-r750-02-263.igk.intel.com ([172.28.191.215])
 by orviesa001.jf.intel.com with ESMTP; 15 Nov 2024 04:26:26 -0800
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Przemyslaw Korba <przemyslaw.korba@intel.com>,
 Simon Horman <horms@kernel.org>
Date: Fri, 15 Nov 2024 13:25:37 +0100
Message-Id: <20241115122536.117595-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731673589; x=1763209589;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yTSI2j1PiELG/RhwT3m9w4NRuiU6Qe0f3dTyG5sC/7E=;
 b=L+WZAjzr32YbA1Qz71NhHKVh0xLPdyNokuFBHgNbmBoIRs8MQDHJ1Sjw
 prleRR0yQS0TOJKl8VpViqjGdivL775kvismlWAGa/kLY7hZBmjbf98hR
 PgyrzmVuG2oKVnzlezqQLk1dGY9YQX/xO9GnHwb0KNhe9j+EMd2oHUAcU
 Ydk/ByV8+M9c6UcbZSbzF2Mu7c6duRnTS9NypIjn0dqRtIIAzFVYvM303
 SSx/AR/u6I1A+tbMDdQ4w0HHHe6wd4n+hVKjvnwHPQipaMa9W7yeSUiCB
 bcdGRyEVF71+RhySty3udOCh2R86HeU2hushUu0qOYnJrT+eC6HnAluVF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L+WZAjzr
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix PHY timestamp
 extraction for ETH56G
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

Fix incorrect PHY timestamp extraction for ETH56G.
It's better to use FIELD_PREP() than manual shift.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
Changelog
v2:
remove legal footer
v1:
https://lore.kernel.org/intel-wired-lan/20241107113257.466286-1-przemyslaw.korba@intel.com
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 3 ++-
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 5 ++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 75c68b0325e7..3d45e4ed90b6 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -1553,7 +1553,8 @@ static int ice_read_ptp_tstamp_eth56g(struct ice_hw *hw, u8 port, u8 idx,
 	 * lower 8 bits in the low register, and the upper 32 bits in the high
 	 * register.
 	 */
-	*tstamp = ((u64)hi) << TS_PHY_HIGH_S | ((u64)lo & TS_PHY_LOW_M);
+	*tstamp = FIELD_PREP(TS_PHY_HIGH_M, hi) |
+		  FIELD_PREP(TS_PHY_LOW_M, lo);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 6cedc1a906af..4c8b84571344 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -663,9 +663,8 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 #define TS_HIGH_M			0xFF
 #define TS_HIGH_S			32
 
-#define TS_PHY_LOW_M			0xFF
-#define TS_PHY_HIGH_M			0xFFFFFFFF
-#define TS_PHY_HIGH_S			8
+#define TS_PHY_LOW_M			GENMASK(7, 0)
+#define TS_PHY_HIGH_M			GENMASK_ULL(39, 8)
 
 #define BYTES_PER_IDX_ADDR_L_U		8
 #define BYTES_PER_IDX_ADDR_L		4

base-commit: 182ff3dabe8f127049c09660346cad492bcc0ceb
-- 
2.31.1

