Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A75469B3C34
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Oct 2024 21:49:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6051881133;
	Mon, 28 Oct 2024 20:49:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JxixZEvfk-XO; Mon, 28 Oct 2024 20:49:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B20BD81118
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730148562;
	bh=NeI8+rRKGk2YJORFW2wIhXis4+IwlsH0z+wxCmUfGR0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hlYt3GVfZCvdMfI1hhRUq9JEmfNAyaJ9mgjrR6c1lprZ2KeMG2p5VqDFSNWxyHwMW
	 4P06wVCkEwNYqFjxjGMDvEdBRcTVosMGgmwJauqfiauHqQJ31uqB8DCR5UP3kkzDVh
	 NrSZ0NODYuGpC/bJy6FehLc4mSrCy+hM7INtofKR3zTZgqpzZMV5AYjCp+DgeW0LSM
	 uomyLiflYxa3n+TmeHKRPy2svtqm49w7HU/19XLqcLydmpFSsl7dFcK6DZt3lT8Rwn
	 HaLyxHdoa+o6UYSTAhwAD9QkTlnxgTu7NHlS6J+bLOtwNwcqUOq+3rg61WLzOGyZWa
	 872UAcCi62RUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B20BD81118;
	Mon, 28 Oct 2024 20:49:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3305F112A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:49:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 20CEF6077B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:49:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yEksGlruY432 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Oct 2024 20:49:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5C9EF60707
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C9EF60707
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C9EF60707
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Oct 2024 20:49:20 +0000 (UTC)
X-CSE-ConnectionGUID: jKlxWbSESPGnmIoAI8TW0g==
X-CSE-MsgGUID: xZV+wBVaSSuk12tqjjbaQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33685550"
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="33685550"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 13:49:20 -0700
X-CSE-ConnectionGUID: b3UvyK7mQHWPi5/6i+/kfA==
X-CSE-MsgGUID: ddxUVmhqT6aroPde34E2fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="86529899"
Received: from unknown (HELO gklab-003-001.igk.intel.com) ([10.211.3.1])
 by orviesa005.jf.intel.com with ESMTP; 28 Oct 2024 13:49:18 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Mon, 28 Oct 2024 21:45:40 +0100
Message-Id: <20241028204543.606371-2-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20241028204543.606371-1-grzegorz.nitka@intel.com>
References: <20241028204543.606371-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730148560; x=1761684560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7ghW+xE+c9QLCqFh2ZVaOVAhXdPDBirVKjPLZGFGUE0=;
 b=I8nLzaYyqR1k7ypnIZYxx+g+f3QUWHkN+C6SvO2QMuiKUnPo9ryEOSRP
 +8GzRJfgkg4UCKKv9qGg6EBGcnWz4fsMFNOKm2e0GT5a7x0megz+WrMP/
 GIL1hqAH/cJAIBoCheN/qnHcCXy/pCjcLjH01teX/OFRdlU3BIga93jGJ
 qtYoA5AMtIZ6zgdBbf/D/SWBeMvaFsJ82xpkSgd0q9+5htOnM15quvgkq
 nmDaZEVx84ipjMCnaCpR+MQ/qveU+apQGjta5AXdtekPr8bO0eCazgxr6
 o0jCRNDPehN56LzFOnmnzjE88a3F/zNiokU3hNXKR0YWmAbazrjErN2K6
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I8nLzaYy
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 1/4] ice: Fix E825
 initialization
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

From: Karol Kolacinski <karol.kolacinski@intel.com>

Current implementation checks revision of all PHYs on all PFs, which is
incorrect and may result in initialization failure. Check only the
revision of the current PHY.

Fixes: 7cab44f1c35f ("ice: Introduce ETH56G PHY model for E825C products")
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V1 -> V2: Removed net-next hunks,
	  add 'return' on PHY revision read failure
V1 -> V2: Removed net-next hunks

 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 22 +++++++++------------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index ec8db830ac73..d27b2f52b5ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2663,14 +2663,15 @@ static bool ice_is_muxed_topo(struct ice_hw *hw)
 }
 
 /**
- * ice_ptp_init_phy_e825c - initialize PHY parameters
+ * ice_ptp_init_phy_e825 - initialize PHY parameters
  * @hw: pointer to the HW struct
  */
-static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
+static void ice_ptp_init_phy_e825(struct ice_hw *hw)
 {
 	struct ice_ptp_hw *ptp = &hw->ptp;
 	struct ice_eth56g_params *params;
-	u8 phy;
+	u32 phy_rev;
+	int err;
 
 	ptp->phy_model = ICE_PHY_ETH56G;
 	params = &ptp->phy.eth56g;
@@ -2684,15 +2685,10 @@ static void ice_ptp_init_phy_e825c(struct ice_hw *hw)
 	ptp->num_lports = params->num_phys * ptp->ports_per_phy;
 
 	ice_sb_access_ena_eth56g(hw, true);
-	for (phy = 0; phy < params->num_phys; phy++) {
-		u32 phy_rev;
-		int err;
-
-		err = ice_read_phy_eth56g(hw, phy, PHY_REG_REVISION, &phy_rev);
-		if (err || phy_rev != PHY_REVISION_ETH56G) {
-			ptp->phy_model = ICE_PHY_UNSUP;
-			return;
-		}
+	err = ice_read_phy_eth56g(hw, hw->pf_id, PHY_REG_REVISION, &phy_rev);
+	if (err || phy_rev != PHY_REVISION_ETH56G) {
+		ptp->phy_model = ICE_PHY_UNSUP;
+		return;
 	}
 
 	ptp->is_2x50g_muxed_topo = ice_is_muxed_topo(hw);
@@ -5394,7 +5390,7 @@ void ice_ptp_init_hw(struct ice_hw *hw)
 	else if (ice_is_e810(hw))
 		ice_ptp_init_phy_e810(ptp);
 	else if (ice_is_e825c(hw))
-		ice_ptp_init_phy_e825c(hw);
+		ice_ptp_init_phy_e825(hw);
 	else
 		ptp->phy_model = ICE_PHY_UNSUP;
 }
-- 
2.39.3

