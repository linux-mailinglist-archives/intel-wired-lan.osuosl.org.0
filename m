Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 112A1843E0F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jan 2024 12:14:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9165D61535;
	Wed, 31 Jan 2024 11:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9165D61535
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706699655;
	bh=K+hrzfC/OG3iZsiMy01WbWkT5EZYc0ikEe9KyKeCHnw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=niQUGaA9pES2EoGQr80o6HxkvxnlsFQmWnPUPJVHUW5h+Tz1fhzzQIj3e/FFGgk7x
	 Fu5teLt7p2Vj+YQElrnv/NldK65GxNNfiopfjZenyIp9Y5deuTzSLrfhz9Y5+BOYLH
	 XGgjWeA2TjQYP1ENH2QT8UKel5J4KxkBp1aR5HPTnN3eV2ZPTTtN/l5MsYXxbltEdV
	 oV/EvOvnCNcIJ5sGjUc7cO0YLIzqe545/zeaRoxfMjKup9x3FrnUwdbPFaLvlLCGMt
	 AJYMi0a2DS6GLU74GAlIWJE6ZDs062b6msMj2CC/pGZ6TNhnuHVcmQtIJ26IktlSKU
	 MI3VV6550fOEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bgJ5qljWgJAF; Wed, 31 Jan 2024 11:14:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 848AF614BA;
	Wed, 31 Jan 2024 11:14:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 848AF614BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 195911BF86C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 11:14:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6F5E82291
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 11:14:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6F5E82291
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FrACO_f9hZz3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jan 2024 11:14:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1504682284
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jan 2024 11:14:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1504682284
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="16949594"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="16949594"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 03:14:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="878762850"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="878762850"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Jan 2024 03:14:01 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Jan 2024 12:04:19 +0100
Message-Id: <20240131110419.29161-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240131110419.29161-1-jedrzej.jagielski@intel.com>
References: <20240131110419.29161-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706699645; x=1738235645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dauvLb8+7cSSPLtnw8Zp9gQ1/HEUQuKf9z7sVWNF1eg=;
 b=PH/FX/jsIssjQQVg6rCPcaGXpePFzKzmEQJn2EMKfQW3tjSTZAm8N+Rp
 4FS9CvrLJD8RxpO0hEMjC1umAT9U1Ff/8LnJiNwuyn2xt1etEASgg9Jof
 eCGe5Nn19bOkhqq8O7k2no6Bt1/HZKIfJuFbHAzVno2TIuf/90t1SFa8u
 19UOaA8YTyZ7fYDN8wf0qWcMJIBw45BIXgikClwMTwEcNFogcP5h6aP+R
 uQ7uRJ+OwOkyUH/yOIOb6vhzltDHqS1Ni0DsJJ03U+B00l6S59tFeXfkZ
 UdkJV/xIboWiQIzxBfYNwH6fGryUdrUCvTXVlGmoXGKGGbREo/ibV1Zhw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PH/FX/js
Subject: [Intel-wired-lan] [PATCH iwl-next v5 3/3] ixgbe: Clarify the values
 of the returning status
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
Cc: netdev@vger.kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Converting s32 functions to regular int in the previous patch of the series
caused triggering smatch warnings about missing error code.

New smatch warnings:
drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:2884 ixgbe_get_lcd_t_x550em() warn: missing error code? 'status'
drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:3130 ixgbe_enter_lplu_t_x550em() warn: missing error code? 'status'

Old smatch warnings:
drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c:2890 ixgbe_get_lcd_t_x550em() warn: missing error code? 'status'

Fix it by clearly stating returning error code as 0.

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/r/202401041701.6QKTsZmx-lkp@intel.com/
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index efce4b231493..bee1d2f554d3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -2883,17 +2883,17 @@ static int ixgbe_get_lcd_t_x550em(struct ixgbe_hw *hw,
 	/* If link partner advertised 1G, return 1G */
 	if (an_lp_status & IXGBE_AUTO_NEG_LP_1000BASE_CAP) {
 		*lcd_speed = IXGBE_LINK_SPEED_1GB_FULL;
-		return status;
+		return 0;
 	}
 
 	/* If 10G disabled for LPLU via NVM D10GMP, then return no valid LCD */
 	if ((hw->bus.lan_id && (word & NVM_INIT_CTRL_3_D10GMP_PORT1)) ||
 	    (word & NVM_INIT_CTRL_3_D10GMP_PORT0))
-		return status;
+		return 0;
 
 	/* Link partner not capable of lower speeds, return 10G */
 	*lcd_speed = IXGBE_LINK_SPEED_10GB_FULL;
-	return status;
+	return 0;
 }
 
 /**
@@ -3129,7 +3129,7 @@ static int ixgbe_enter_lplu_t_x550em(struct ixgbe_hw *hw)
 	     (lcd_speed == IXGBE_LINK_SPEED_1GB_FULL)) ||
 	    ((speed == IXGBE_MDIO_AUTO_NEG_VENDOR_STATUS_10GB) &&
 	     (lcd_speed == IXGBE_LINK_SPEED_10GB_FULL)))
-		return status;
+		return 0;
 
 	/* Clear AN completed indication */
 	status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM,
-- 
2.31.1

