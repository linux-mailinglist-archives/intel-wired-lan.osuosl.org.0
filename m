Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CCC76B3CA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 13:49:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DA9F340914;
	Tue,  1 Aug 2023 11:49:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA9F340914
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690890596;
	bh=OTPh/JIRFYDAgY5yFz4JvErvFd1FHRqj/+od7lkhmdY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MRBUAmAhTUGzTNi9krYWPz5aCEeAIDY/US6sGga7uLTE+nTbjYNE0HGKIQ9is2UTR
	 VcPsvRSHp2B6AJG8mvWg9e+GXwik7qH9vJxArBAkyRoDFf6vHRVRo8jlUFhbQaebaE
	 Py02bggPRBiANiEjq9isnsCjfz3l1SGYx8GFm++R6lhWosFxhHp/+3RxOkBdH/YyUH
	 iYpxVwIuqRgqNq31qVk0YeOxuFaLoCMmKNgFRbm34kh+r3+OM2f+SF0G+XauQkBqFL
	 aghdHvuu8cgHR8j6a6LDbHbLl6CVrGcTnwnqrZ+IPqVI1y3GKCMYkTmox38zZcVGay
	 RBq0pQpOR+Tog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wSAvbsjzXo8x; Tue,  1 Aug 2023 11:49:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C4EF14014B;
	Tue,  1 Aug 2023 11:49:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4EF14014B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 180171BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DBE524014B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBE524014B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f1mKIM48MeX8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 11:49:27 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4393E4033F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4393E4033F
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="433112522"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="433112522"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 04:49:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="902528658"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="902528658"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga005.jf.intel.com with ESMTP; 01 Aug 2023 04:49:26 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Aug 2023 13:53:09 +0200
Message-Id: <20230801115309.697331-7-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230801115309.697331-1-jan.sokolowski@intel.com>
References: <20230801115309.697331-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690890567; x=1722426567;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5rbs5lAo3dPiD2lJI4nvkw0PDtJpGUi0jHlPkFm7IV0=;
 b=Fr1yhprXwpDtc+ULhCc2xqj6zrmKqYO4LavlUt0p10OCxJsPxGBe+KRI
 ZPYq3fA5jGBpep1C4dHMkOxlEvtnM7PgP0yVgjw2Db+0onoGz4gPfFMCt
 JXqt5fVJgBNvYtQS2P3C9JnJ2f7NjbokwVMtxiahouOAtlkOcsN937Jgn
 pCoNHhqHfZ20ZKeQuLcoazt+MJaBuFXZ32685GTJ4ga5kwdgheh0Y4bcA
 mIh+0+lalBNhkT7bfK749d3hRY6gVQB4x271e9bOIh9+niiaAjnhJwIzo
 ieAHjRTMwzON1UQR/XpNIiZ1laTJqiazlaQMKjJvGP1KZOG6ryvzftHmQ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Fr1yhprX
Subject: [Intel-wired-lan] [PATCH iwl-next v2 6/6] ice: refactor ice_ptp_hw
 to make functions static
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

efactor ice_ptp_hw.c/h in order to make as many methods
as possible static.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 6 +++---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 3 ---
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index dd2fad831924..fd19afaf9c85 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -295,7 +295,7 @@ static bool ice_is_40b_phy_reg_e822(u16 low_addr, u16 *high_addr)
  *
  * Read a PHY register for the given port over the device sideband queue.
  */
-int
+static int
 ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
 {
 	struct ice_sbq_msg_input msg = {0};
@@ -372,7 +372,7 @@ ice_read_64b_phy_reg_e822(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
  *
  * Write a PHY register for the given port over the device sideband queue.
  */
-int
+static int
 ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val)
 {
 	struct ice_sbq_msg_input msg = {0};
@@ -1089,7 +1089,7 @@ ice_ptp_prep_phy_time_e822(struct ice_hw *hw, u32 time)
  *
  * Negative adjustments are supported using 2s complement arithmetic.
  */
-int
+static int
 ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time)
 {
 	u32 l_time, u_time;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 3dc1d6e5468c..4e3c1382c477 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -144,11 +144,8 @@ int ice_ptp_init_phc(struct ice_hw *hw);
 int ice_get_phy_tx_tstamp_ready(struct ice_hw *hw, u8 block, u64 *tstamp_ready);
 
 /* E822 family functions */
-int ice_read_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 *val);
-int ice_write_phy_reg_e822(struct ice_hw *hw, u8 port, u16 offset, u32 val);
 int ice_read_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 *val);
 int ice_write_quad_reg_e822(struct ice_hw *hw, u8 quad, u16 offset, u32 val);
-int ice_ptp_prep_port_adj_e822(struct ice_hw *hw, u8 port, s64 time);
 void ice_ptp_reset_ts_memory_quad_e822(struct ice_hw *hw, u8 quad);
 
 /**
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
