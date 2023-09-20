Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F2E7A8B36
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Sep 2023 20:09:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B530083C28;
	Wed, 20 Sep 2023 18:09:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B530083C28
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695233364;
	bh=vHsMas3sp5NKth+GF6JuJN/QPl6hfdZRDW+546O70T8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GMIESEQSXyK0Cs2AMzdgjx75iNGpVPxs4qUAiH6sDQYGAHBCpqR/eXpy0DQAoq186
	 3aHZ9r6AGXAeBMEpiPWDRpinNM+69IbcANL8nB0PrVCnPZItnVbiud+Z8tDue3OGk7
	 e2tOPqw2wd9uAETR2L1by2OI3qPv+ZG4rPHdwq1XssDwqgSEyvcKv5XnknTY3u83vx
	 R0Q6li+ShfqbNzLGdlOih1x8/73Kre+FxbMum6/IDS9ZuqbdtNYarcq+UduDUI1AsM
	 Oo/qUxb37j8uq6HaSp4D6jS8Zafu/iBQ0H+dXojGEm5tpNtbtN1nm1JsPcj1QFKZs3
	 DNA+t2asgedcw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4HfxuaTEGRDD; Wed, 20 Sep 2023 18:09:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A289283B82;
	Wed, 20 Sep 2023 18:09:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A289283B82
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE0651BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A222B83B82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A222B83B82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o-338KhRV1cG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Sep 2023 18:09:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B82CA83B94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Sep 2023 18:09:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B82CA83B94
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="359685161"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="359685161"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 11:09:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="870469682"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="870469682"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga004.jf.intel.com with ESMTP; 20 Sep 2023 11:09:09 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 20 Sep 2023 20:07:43 +0200
Message-ID: <20230920180745.1607563-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
References: <20230920180745.1607563-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695233352; x=1726769352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QkeZCJ+wbV6YBiqruqO3WbNO7KU2wC4MLYBVcJfsgoo=;
 b=O30kftMdhUXNjDUiWf0UdGZjAHpXUxpKa4RmMAuWotabc0d9Ac4i9+ib
 JiVb82GbFEgjjYV+l5HtaUfkk/IaxdCN/2Kxon5CcmR3ByXu2AGxQqqZZ
 UuXxJWqicLRZqLZj+VPymu+sxxZjQ3EgHUSaIoc8a//Cn2yrOvPzrkBUY
 COKU0wQ91NG5zc8JsjiiO5KsuD+gGO2hobJYCm3KPp8zcaa8OakE7N56Q
 +C8Mx04EsUNKA3+gsqwO9LM9uKf52HXrCzbe5FLBPutWyXCqAzZZp3UDl
 /kJQ4UKZrux/TuhuitPzEjV8BCnGK3tfby+YV77xaNZyvwQYpaKr2HcqE
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O30kftMd
Subject: [Intel-wired-lan] [PATCH net-next 1/3] ice: fix undefined
 references to ice_is_*() when !CONFIG_PTP_1588_CLOCK
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
Cc: Michal Michalik <michal.michalik@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Starting the cited commit, ice_lib.c unconditionally refers to three
functions compiled only when CONFIG_PTP_1588_CLOCK is set (as they're
located in ice_ptp_hw.c):

ERROR: modpost: "ice_is_clock_mux_present_e810t"
[drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_is_phy_rclk_present"
[drivers/net/ethernet/intel/ice/ice.ko] undefined!
ERROR: modpost: "ice_is_cgu_present"
[drivers/net/ethernet/intel/ice/ice.ko] undefined!

These three are HW feature tests and it is safe to stub them as
`return false` when PTP support is disabled.

Fixes: 8a3a565ff210 ("ice: add admin commands to access cgu configuration")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202309181001.G72eBLpj-lkp@intel.com
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 25 ++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 6f277e7b06b9..405a72864dc7 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -271,10 +271,33 @@ int ice_read_sma_ctrl_e810t(struct ice_hw *hw, u8 *data);
 int ice_write_sma_ctrl_e810t(struct ice_hw *hw, u8 data);
 int ice_read_pca9575_reg_e810t(struct ice_hw *hw, u8 offset, u8 *data);
 bool ice_is_pca9575_present(struct ice_hw *hw);
+
+#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
+
 bool ice_is_phy_rclk_present(struct ice_hw *hw);
 bool ice_is_clock_mux_present_e810t(struct ice_hw *hw);
-int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx);
 bool ice_is_cgu_present(struct ice_hw *hw);
+
+#else /* !CONFIG_PTP_1588_CLOCK */
+
+static inline bool ice_is_phy_rclk_present(const struct ice_hw *hw)
+{
+	return false;
+}
+
+static inline bool ice_is_clock_mux_present_e810t(const struct ice_hw *hw)
+{
+	return false;
+}
+
+static inline bool ice_is_cgu_present(const struct ice_hw *hw)
+{
+	return false;
+}
+
+#endif /* !CONFIG_PTP_1588_CLOCK */
+
+int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx);
 enum dpll_pin_type ice_cgu_get_pin_type(struct ice_hw *hw, u8 pin, bool input);
 struct dpll_pin_frequency *
 ice_cgu_get_pin_freq_supp(struct ice_hw *hw, u8 pin, bool input, u8 *num);
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
