Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5526888FBA7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 10:34:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0613B416D3;
	Thu, 28 Mar 2024 09:34:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id If_URu5uZ-39; Thu, 28 Mar 2024 09:34:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2166416DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711618472;
	bh=Xa4mNhwX4VpFt3HAFUtB0x2bUW1MXjI6J1/D4uXfbNg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hjl4hAtXCq3yHgBJjtJDKKSjobcuUXGKKtuKNFWeRVmsqjnSOv8cBlNr65DFh8Q6z
	 oF6iHb0piK13Gcdcbn4XgqS7SEU7CqtKo+oHrqN/AqdWDcwJP0KnmUcZf4yjtB6Jz3
	 ZjY6xlOsBaxdMBMrYO6EIUwIB/iKRcTneC1wCzyeejiNNBgbOnPWMOp/QYjuESSpgN
	 vQnlgrJT6ukwRSXLNcJYrJ7N6YZ+drerOhXd9cA6PR6ejcp/1vuOuDwZoc3WQEYkWN
	 u4lCdH5+jbP9rZK6gFhFpObWVqb9gQGOOP/i1iWZVf88hWsaFY3BmmMN/lFZFSAssJ
	 NLHk10mZsLhsg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F2166416DB;
	Thu, 28 Mar 2024 09:34:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 909921BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 09:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88900811FC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 09:34:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x8PS3kHvFWRM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 09:34:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 89B8881774
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 89B8881774
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 89B8881774
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 09:34:25 +0000 (UTC)
X-CSE-ConnectionGUID: 5VTiBdMeTQOPh1NukhKimw==
X-CSE-MsgGUID: SstGzBX2SEGQ+rQ8p5Vlxg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6952657"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6952657"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 02:34:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21276577"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa005.jf.intel.com with ESMTP; 28 Mar 2024 02:34:23 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Mar 2024 10:25:24 +0100
Message-ID: <20240328093405.336378-20-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240328093405.336378-14-karol.kolacinski@intel.com>
References: <20240328093405.336378-14-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711618466; x=1743154466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ERHAALLSA2vzNMYtvNj4cUg4n40CUGxACTCDlBu/TEw=;
 b=MxsdBhiznfz7oVrcBiNPkGRFkXeQ4A+mjFx399Zz68d2fh1yUJak/Ple
 wxTnshwB6g7QRJMK30DunO8oeAD31bibnqwAciVEseURnlq53FYtBivf4
 tKqDtUIH/wiuM8ezjBDDvbSXNFxHosmue/xFsf/rqE9hUe/BGd2njDZmB
 lH/yAMtQHS8U+HeRT0zhw9ccpjR7+E/6BLXbdRQ7on//zkVGXE0EPd1Bx
 Wxwi48LV+ETIgp5fjG1K0duEthSpUmRCjLYxvHzF+P9VUhVdOXCKrCb68
 kndSNo/SBfkYeo82AhD5d1rCYD+1/VReVQU9OqtY2ocSHvBqVpnNOEF1n
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MxsdBhiz
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 06/12] ice: Introduce
 ice_get_base_incval() helper
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Add a new helper for getting base clock increment value for specific HW.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    |  7 +------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 12 ++++++++++++
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 7980482bbf56..cd2dab7b4c44 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1210,12 +1210,7 @@ static u64 ice_base_incval(struct ice_pf *pf)
 	struct ice_hw *hw = &pf->hw;
 	u64 incval;
 
-	if (ice_is_e810(hw))
-		incval = ICE_PTP_NOMINAL_INCVAL_E810;
-	else if (ice_e82x_time_ref(hw) < NUM_ICE_TIME_REF_FREQ)
-		incval = ice_e82x_nominal_incval(ice_e82x_time_ref(hw));
-	else
-		incval = UNKNOWN_INCVAL_E82X;
+	incval = ice_get_base_incval(hw);
 
 	dev_dbg(ice_pf_to_dev(pf), "PTP: using base increment value of 0x%016llx\n",
 		incval);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 5223e17d2806..d477d334b1d8 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -285,6 +285,18 @@ int ice_get_cgu_rclk_pin_info(struct ice_hw *hw, u8 *base_idx, u8 *pin_num);
 int ice_cgu_get_output_pin_state_caps(struct ice_hw *hw, u8 pin_id,
 				      unsigned long *caps);
 
+static inline u64 ice_get_base_incval(struct ice_hw *hw)
+{
+	switch (hw->ptp.phy_model) {
+	case ICE_PHY_E810:
+		return ICE_PTP_NOMINAL_INCVAL_E810;
+	case ICE_PHY_E82X:
+		return ice_e82x_nominal_incval(ice_e82x_time_ref(hw));
+	default:
+		return 0;
+	}
+}
+
 #define PFTSYN_SEM_BYTES	4
 
 #define ICE_PTP_CLOCK_INDEX_0	0x00
-- 
2.43.0

