Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670A5776135
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 15:36:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03663414C7;
	Wed,  9 Aug 2023 13:36:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03663414C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691588174;
	bh=Qm5AN+PKxfLZu/GOZFChofQbb8egTvCdHga60zt/asg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o41nRlvAuytX9RuZiLmnihN1wlNTxpFuHurqW8I86pEtYX95mQ+OREzyv1shSwa+h
	 MA9ToFmggIfF8iaxzFcLAqr3KFxgW8hw5DkXYs8dT4s5cVx9EFTwbOfqUwv2rWh2RQ
	 sfeSNHnA1ooudt41EC6pd6Y0uJXr9ce68PapL2MBFMijmqIujQJ2c+uijUXmM6mQD9
	 KWhm2zOCGAhPMfi7gqL9BbxTc2D1xFcQN3+IIryps8rQmvIRA1q+4zaJFLWGuzzSe4
	 6/Pn1pHPplZGHB3nOpvu2kuIbB0TJmcsL2L0pApTiGcmWTtZNH5w/jrk/qm1g8scrJ
	 tl98Wq+9KOspw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eUjy6JjX-XTR; Wed,  9 Aug 2023 13:36:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFAA340E44;
	Wed,  9 Aug 2023 13:36:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFAA340E44
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 687151BF842
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D10D60E96
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D10D60E96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RrpR58Uc8SIw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 13:35:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97F8760EFF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 13:35:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97F8760EFF
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="402086876"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="402086876"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 06:35:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="725401526"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="725401526"
Received: from s240.igk.intel.com (HELO DevelopmentVM.nql.local)
 ([10.102.18.202])
 by orsmga007.jf.intel.com with ESMTP; 09 Aug 2023 06:35:29 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  9 Aug 2023 15:39:12 +0200
Message-Id: <20230809133913.2652736-7-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230809133913.2652736-1-jan.sokolowski@intel.com>
References: <20230809133913.2652736-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691588147; x=1723124147;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5H7/2MC+cEqBmmnSousuucRzI3CmVUKSjJ06sj01Yr4=;
 b=gEROtDzCE8bjBjqqtZC9sGRReDx+bIyPo7oAgcXX++uPcUK5h0tbR5iH
 njvDllAHo+5ZcjAzl5xB1b+Au6mFi1S3GIdgc0M97hHAOcDMlc/kl4GH+
 5ZUuqkIvcpIu1GatgtBcL5gZimDAvLjFYW76Y+wHY60SxmKiZSi85i8Av
 OSw4356/IqTkxw8oQ0/mhgz7OtcnESGvuEjo52yNtyQ0js88Xqa9NgNdJ
 rhWYIHQuuADXqxdXgUkDxchJPqZnHtOjDkYhp1XyttB78ePQ1Stt1C5Qs
 TYRjkd7ggVx49aNZB3DaH4ky9JKS9brkEBXGPNXRnpqhVFFNgjZiqoOS4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gEROtDzC
Subject: [Intel-wired-lan] [PATCH iwl-next v3 6/7] ice: refactor ice_ptp_hw
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

As following methods are not used outside ice_ptp_hw,
they can be made static:
ice_read_phy_reg_e822
ice_write_phy_reg_e822
ice_ptp_prep_port_adj_e822

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
