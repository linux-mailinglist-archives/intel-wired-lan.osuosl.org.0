Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C8C7F380D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 22:20:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D98381008;
	Tue, 21 Nov 2023 21:20:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D98381008
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700601604;
	bh=KsZ3jPzHKY/wWbNzK7pwNdt18cFcJhT9dY6/HelbjMo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9khJFsjlZRgtHqBYNgX8CtEDBmyrF6zQh17iUDQHqKIFloHNC1jHGMkgQfpow6UDa
	 a7UnVXSNdKO1OLCDqpde0Shh8oR5fJgZJVCjoxDXG7s8wbgMt0MClpLXjoz34JiP1M
	 cknh2+IA4AggWQGzjOwbO0llKO1pqdLpfPII0MmvHLwck6w90koS85GuWgZbak8iZl
	 o35+jGV/11YbPzum3GYlfdUdEwqeqEX4IV5PRZq7YjmP/zMfDq8nqY2iL9LazcS1ks
	 evMenPZUmJXBy4ozJazfe8+u3GSpAvtew3qohc5gaJi4UoF6kNlNnpgANimsut5i/R
	 1qEXCW8d0NhtQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P2Ti79lATa-E; Tue, 21 Nov 2023 21:20:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DB3280C68;
	Tue, 21 Nov 2023 21:20:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DB3280C68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA4DE1BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8889860F6B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8889860F6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5TEu-ENUx4C4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 814D46079B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 814D46079B
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423022096"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="423022096"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716630557"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="716630557"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:38 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 13:19:17 -0800
Message-Id: <20231121211921.19834-10-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231121211921.19834-1-jesse.brandeburg@intel.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601582; x=1732137582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wCI97umszFosOUstdrGpy/9OytBe/CCpXzExrEbRMTo=;
 b=IgOUxJ/JcJ+SexXHCgzwbnEXakTxAXbqQ9iVSHc/NSeu/rzpfv5IWqh4
 t6beNGhTz0W5Gnu2YRtwtD3ICm5wzWRPTYcw5sNBWT+xJr8nvLCXW5THI
 YdjrnoRA2U1NbUZwIAr7xioLHplKwDJ7y9YGWiq49mmez4IryCR+t/pW3
 fNHlsGciNdpW2tREriC8EYH77Yq438SUf4kcnZxv/ht4XfoR+YVYdvA1v
 kSmS6OAvxAfzLv4Qq6K2q6f8DlcKJeZHtX12JSLhW7EMfWqRYipHXIXYh
 vhOTh0BfpIEGraGwj3+hk3CCakf5Utbz5gw2cPELmtaN9h+gtt7FRCRf1
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IgOUxJ/J
Subject: [Intel-wired-lan] [PATCH iwl-next v1 09/13] intel: legacy: field
 get conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Refactor several older Intel drivers to use FIELD_GET(), which reduces
lines of code and adds clarity of intent.

This code was generated by the following coccinelle/spatch script and
then manually repaired.

@get@
constant shift,mask;
expression a;
@@
-((a & mask) >> shift)
+FIELD_GET(mask, a)

and applied via:
spatch --sp-file field_prep.cocci --in-place --dir \
 drivers/net/ethernet/intel/

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/e1000/e1000_hw.c   | 45 ++++++++-----------
 .../net/ethernet/intel/e1000e/80003es2lan.c   |  3 +-
 drivers/net/ethernet/intel/e1000e/82571.c     |  3 +-
 drivers/net/ethernet/intel/e1000e/ethtool.c   |  7 ++-
 drivers/net/ethernet/intel/e1000e/ich8lan.c   | 18 +++-----
 drivers/net/ethernet/intel/e1000e/mac.c       |  8 ++--
 drivers/net/ethernet/intel/e1000e/netdev.c    | 11 ++---
 drivers/net/ethernet/intel/e1000e/phy.c       | 17 +++----
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c   |  3 +-
 drivers/net/ethernet/intel/fm10k/fm10k_vf.c   |  9 ++--
 drivers/net/ethernet/intel/igb/e1000_82575.c  | 29 +++++-------
 drivers/net/ethernet/intel/igb/e1000_i210.c   | 15 ++++---
 drivers/net/ethernet/intel/igb/e1000_mac.c    |  7 ++-
 drivers/net/ethernet/intel/igb/e1000_nvm.c    | 14 +++---
 drivers/net/ethernet/intel/igb/e1000_phy.c    |  9 ++--
 drivers/net/ethernet/intel/igb/igb_ethtool.c  |  8 ++--
 drivers/net/ethernet/intel/igb/igb_main.c     |  4 +-
 drivers/net/ethernet/intel/igbvf/mbx.c        |  1 +
 drivers/net/ethernet/intel/igbvf/netdev.c     |  5 +--
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 30 ++++++-------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |  8 ++--
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |  8 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  8 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 19 ++++----
 25 files changed, 123 insertions(+), 168 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index 4576511c99f5..f9328f2e669f 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -3261,8 +3261,7 @@ static s32 e1000_phy_igp_get_info(struct e1000_hw *hw,
 		return ret_val;
 
 	phy_info->mdix_mode =
-	    (e1000_auto_x_mode) ((phy_data & IGP01E1000_PSSR_MDIX) >>
-				 IGP01E1000_PSSR_MDIX_SHIFT);
+	    (e1000_auto_x_mode)FIELD_GET(IGP01E1000_PSSR_MDIX, phy_data);
 
 	if ((phy_data & IGP01E1000_PSSR_SPEED_MASK) ==
 	    IGP01E1000_PSSR_SPEED_1000MBPS) {
@@ -3273,11 +3272,11 @@ static s32 e1000_phy_igp_get_info(struct e1000_hw *hw,
 		if (ret_val)
 			return ret_val;
 
-		phy_info->local_rx = ((phy_data & SR_1000T_LOCAL_RX_STATUS) >>
-				      SR_1000T_LOCAL_RX_STATUS_SHIFT) ?
+		phy_info->local_rx = FIELD_GET(SR_1000T_LOCAL_RX_STATUS,
+					       phy_data) ?
 		    e1000_1000t_rx_status_ok : e1000_1000t_rx_status_not_ok;
-		phy_info->remote_rx = ((phy_data & SR_1000T_REMOTE_RX_STATUS) >>
-				       SR_1000T_REMOTE_RX_STATUS_SHIFT) ?
+		phy_info->remote_rx = FIELD_GET(SR_1000T_REMOTE_RX_STATUS,
+						phy_data) ?
 		    e1000_1000t_rx_status_ok : e1000_1000t_rx_status_not_ok;
 
 		/* Get cable length */
@@ -3327,14 +3326,12 @@ static s32 e1000_phy_m88_get_info(struct e1000_hw *hw,
 		return ret_val;
 
 	phy_info->extended_10bt_distance =
-	    ((phy_data & M88E1000_PSCR_10BT_EXT_DIST_ENABLE) >>
-	     M88E1000_PSCR_10BT_EXT_DIST_ENABLE_SHIFT) ?
+	    FIELD_GET(M88E1000_PSCR_10BT_EXT_DIST_ENABLE, phy_data) ?
 	    e1000_10bt_ext_dist_enable_lower :
 	    e1000_10bt_ext_dist_enable_normal;
 
 	phy_info->polarity_correction =
-	    ((phy_data & M88E1000_PSCR_POLARITY_REVERSAL) >>
-	     M88E1000_PSCR_POLARITY_REVERSAL_SHIFT) ?
+	    FIELD_GET(M88E1000_PSCR_POLARITY_REVERSAL, phy_data) ?
 	    e1000_polarity_reversal_disabled : e1000_polarity_reversal_enabled;
 
 	/* Check polarity status */
@@ -3348,27 +3345,25 @@ static s32 e1000_phy_m88_get_info(struct e1000_hw *hw,
 		return ret_val;
 
 	phy_info->mdix_mode =
-	    (e1000_auto_x_mode) ((phy_data & M88E1000_PSSR_MDIX) >>
-				 M88E1000_PSSR_MDIX_SHIFT);
+	    (e1000_auto_x_mode)FIELD_GET(M88E1000_PSSR_MDIX, phy_data);
 
 	if ((phy_data & M88E1000_PSSR_SPEED) == M88E1000_PSSR_1000MBS) {
 		/* Cable Length Estimation and Local/Remote Receiver Information
 		 * are only valid at 1000 Mbps.
 		 */
 		phy_info->cable_length =
-		    (e1000_cable_length) ((phy_data &
-					   M88E1000_PSSR_CABLE_LENGTH) >>
-					  M88E1000_PSSR_CABLE_LENGTH_SHIFT);
+		    (e1000_cable_length)FIELD_GET(M88E1000_PSSR_CABLE_LENGTH,
+						  phy_data);
 
 		ret_val = e1000_read_phy_reg(hw, PHY_1000T_STATUS, &phy_data);
 		if (ret_val)
 			return ret_val;
 
-		phy_info->local_rx = ((phy_data & SR_1000T_LOCAL_RX_STATUS) >>
-				      SR_1000T_LOCAL_RX_STATUS_SHIFT) ?
+		phy_info->local_rx = FIELD_GET(SR_1000T_LOCAL_RX_STATUS,
+					       phy_data) ?
 		    e1000_1000t_rx_status_ok : e1000_1000t_rx_status_not_ok;
-		phy_info->remote_rx = ((phy_data & SR_1000T_REMOTE_RX_STATUS) >>
-				       SR_1000T_REMOTE_RX_STATUS_SHIFT) ?
+		phy_info->remote_rx = FIELD_GET(SR_1000T_REMOTE_RX_STATUS,
+						phy_data) ?
 		    e1000_1000t_rx_status_ok : e1000_1000t_rx_status_not_ok;
 	}
 
@@ -3516,7 +3511,7 @@ s32 e1000_init_eeprom_params(struct e1000_hw *hw)
 		if (ret_val)
 			return ret_val;
 		eeprom_size =
-		    (eeprom_size & EEPROM_SIZE_MASK) >> EEPROM_SIZE_SHIFT;
+		    FIELD_GET(EEPROM_SIZE_MASK, eeprom_size);
 		/* 256B eeprom size was not supported in earlier hardware, so we
 		 * bump eeprom_size up one to ensure that "1" (which maps to
 		 * 256B) is never the result used in the shifting logic below.
@@ -4892,8 +4887,7 @@ static s32 e1000_get_cable_length(struct e1000_hw *hw, u16 *min_length,
 					     &phy_data);
 		if (ret_val)
 			return ret_val;
-		cable_length = (phy_data & M88E1000_PSSR_CABLE_LENGTH) >>
-		    M88E1000_PSSR_CABLE_LENGTH_SHIFT;
+		cable_length = FIELD_GET(M88E1000_PSSR_CABLE_LENGTH, phy_data);
 
 		/* Convert the enum value to ranged values */
 		switch (cable_length) {
@@ -5002,8 +4996,7 @@ static s32 e1000_check_polarity(struct e1000_hw *hw,
 					     &phy_data);
 		if (ret_val)
 			return ret_val;
-		*polarity = ((phy_data & M88E1000_PSSR_REV_POLARITY) >>
-			     M88E1000_PSSR_REV_POLARITY_SHIFT) ?
+		*polarity = FIELD_GET(M88E1000_PSSR_REV_POLARITY, phy_data) ?
 		    e1000_rev_polarity_reversed : e1000_rev_polarity_normal;
 
 	} else if (hw->phy_type == e1000_phy_igp) {
@@ -5073,8 +5066,8 @@ static s32 e1000_check_downshift(struct e1000_hw *hw)
 		if (ret_val)
 			return ret_val;
 
-		hw->speed_downgraded = (phy_data & M88E1000_PSSR_DOWNSHIFT) >>
-		    M88E1000_PSSR_DOWNSHIFT_SHIFT;
+		hw->speed_downgraded = FIELD_GET(M88E1000_PSSR_DOWNSHIFT,
+						 phy_data);
 	}
 
 	return E1000_SUCCESS;
diff --git a/drivers/net/ethernet/intel/e1000e/80003es2lan.c b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
index 31fce3e4e8af..4eb1ceaf865a 100644
--- a/drivers/net/ethernet/intel/e1000e/80003es2lan.c
+++ b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
@@ -92,8 +92,7 @@ static s32 e1000_init_nvm_params_80003es2lan(struct e1000_hw *hw)
 
 	nvm->type = e1000_nvm_eeprom_spi;
 
-	size = (u16)((eecd & E1000_EECD_SIZE_EX_MASK) >>
-		     E1000_EECD_SIZE_EX_SHIFT);
+	size = (u16)FIELD_GET(E1000_EECD_SIZE_EX_MASK, eecd);
 
 	/* Added to a constant, "size" becomes the left-shift value
 	 * for setting word_size.
diff --git a/drivers/net/ethernet/intel/e1000e/82571.c b/drivers/net/ethernet/intel/e1000e/82571.c
index 0b1e890dd583..969f855a79ee 100644
--- a/drivers/net/ethernet/intel/e1000e/82571.c
+++ b/drivers/net/ethernet/intel/e1000e/82571.c
@@ -157,8 +157,7 @@ static s32 e1000_init_nvm_params_82571(struct e1000_hw *hw)
 		fallthrough;
 	default:
 		nvm->type = e1000_nvm_eeprom_spi;
-		size = (u16)((eecd & E1000_EECD_SIZE_EX_MASK) >>
-			     E1000_EECD_SIZE_EX_SHIFT);
+		size = (u16)FIELD_GET(E1000_EECD_SIZE_EX_MASK, eecd);
 		/* Added to a constant, "size" becomes the left-shift value
 		 * for setting word_size.
 		 */
diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 9835e6a90d56..fc0f98ea6133 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -654,8 +654,8 @@ static void e1000_get_drvinfo(struct net_device *netdev,
 	 */
 	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
 		 "%d.%d-%d",
-		 (adapter->eeprom_vers & 0xF000) >> 12,
-		 (adapter->eeprom_vers & 0x0FF0) >> 4,
+		 FIELD_GET(0xF000, adapter->eeprom_vers),
+		 FIELD_GET(0x0FF0, adapter->eeprom_vers),
 		 (adapter->eeprom_vers & 0x000F));
 
 	strscpy(drvinfo->bus_info, pci_name(adapter->pdev),
@@ -925,8 +925,7 @@ static int e1000_reg_test(struct e1000_adapter *adapter, u64 *data)
 	}
 
 	if (mac->type >= e1000_pch_lpt)
-		wlock_mac = (er32(FWSM) & E1000_FWSM_WLOCK_MAC_MASK) >>
-		    E1000_FWSM_WLOCK_MAC_SHIFT;
+		wlock_mac = FIELD_GET(E1000_FWSM_WLOCK_MAC_MASK, er32(FWSM));
 
 	for (i = 0; i < mac->rar_entry_count; i++) {
 		if (mac->type >= e1000_pch_lpt) {
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 39e9fc601bf5..a2788fd5f8bb 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1072,13 +1072,11 @@ static s32 e1000_platform_pm_pch_lpt(struct e1000_hw *hw, bool link)
 
 		lat_enc_d = (lat_enc & E1000_LTRV_VALUE_MASK) *
 			     (1U << (E1000_LTRV_SCALE_FACTOR *
-			     ((lat_enc & E1000_LTRV_SCALE_MASK)
-			     >> E1000_LTRV_SCALE_SHIFT)));
+			     FIELD_GET(E1000_LTRV_SCALE_MASK, lat_enc)));
 
 		max_ltr_enc_d = (max_ltr_enc & E1000_LTRV_VALUE_MASK) *
-				 (1U << (E1000_LTRV_SCALE_FACTOR *
-				 ((max_ltr_enc & E1000_LTRV_SCALE_MASK)
-				 >> E1000_LTRV_SCALE_SHIFT)));
+			(1U << (E1000_LTRV_SCALE_FACTOR *
+				FIELD_GET(E1000_LTRV_SCALE_MASK, max_ltr_enc)));
 
 		if (lat_enc_d > max_ltr_enc_d)
 			lat_enc = max_ltr_enc;
@@ -2075,8 +2073,7 @@ static s32 e1000_write_smbus_addr(struct e1000_hw *hw)
 {
 	u16 phy_data;
 	u32 strap = er32(STRAP);
-	u32 freq = (strap & E1000_STRAP_SMT_FREQ_MASK) >>
-	    E1000_STRAP_SMT_FREQ_SHIFT;
+	u32 freq = FIELD_GET(E1000_STRAP_SMT_FREQ_MASK, strap);
 	s32 ret_val;
 
 	strap &= E1000_STRAP_SMBUS_ADDRESS_MASK;
@@ -2562,8 +2559,7 @@ void e1000_copy_rx_addrs_to_phy_ich8lan(struct e1000_hw *hw)
 		hw->phy.ops.write_reg_page(hw, BM_RAR_H(i),
 					   (u16)(mac_reg & 0xFFFF));
 		hw->phy.ops.write_reg_page(hw, BM_RAR_CTRL(i),
-					   (u16)((mac_reg & E1000_RAH_AV)
-						 >> 16));
+					   FIELD_GET(E1000_RAH_AV, mac_reg));
 	}
 
 	e1000_disable_phy_wakeup_reg_access_bm(hw, &phy_reg);
@@ -3205,7 +3201,7 @@ static s32 e1000_valid_nvm_bank_detect_ich8lan(struct e1000_hw *hw, u32 *bank)
 							 &nvm_dword);
 		if (ret_val)
 			return ret_val;
-		sig_byte = (u8)((nvm_dword & 0xFF00) >> 8);
+		sig_byte = FIELD_GET(0xFF00, nvm_dword);
 		if ((sig_byte & E1000_ICH_NVM_VALID_SIG_MASK) ==
 		    E1000_ICH_NVM_SIG_VALUE) {
 			*bank = 0;
@@ -3218,7 +3214,7 @@ static s32 e1000_valid_nvm_bank_detect_ich8lan(struct e1000_hw *hw, u32 *bank)
 							 &nvm_dword);
 		if (ret_val)
 			return ret_val;
-		sig_byte = (u8)((nvm_dword & 0xFF00) >> 8);
+		sig_byte = FIELD_GET(0xFF00, nvm_dword);
 		if ((sig_byte & E1000_ICH_NVM_VALID_SIG_MASK) ==
 		    E1000_ICH_NVM_SIG_VALUE) {
 			*bank = 1;
diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
index 5df7ad93f3d7..5abf063236a8 100644
--- a/drivers/net/ethernet/intel/e1000e/mac.c
+++ b/drivers/net/ethernet/intel/e1000e/mac.c
@@ -25,9 +25,9 @@ s32 e1000e_get_bus_info_pcie(struct e1000_hw *hw)
 		pci_read_config_word(adapter->pdev,
 				     cap_offset + PCIE_LINK_STATUS,
 				     &pcie_link_status);
-		bus->width = (enum e1000_bus_width)((pcie_link_status &
-						     PCIE_LINK_WIDTH_MASK) >>
-						    PCIE_LINK_WIDTH_SHIFT);
+		bus->width =
+			(enum e1000_bus_width)FIELD_GET(PCIE_LINK_WIDTH_MASK,
+							pcie_link_status);
 	}
 
 	mac->ops.set_lan_id(hw);
@@ -52,7 +52,7 @@ void e1000_set_lan_id_multi_port_pcie(struct e1000_hw *hw)
 	 * for the device regardless of function swap state.
 	 */
 	reg = er32(STATUS);
-	bus->func = (reg & E1000_STATUS_FUNC_MASK) >> E1000_STATUS_FUNC_SHIFT;
+	bus->func = FIELD_GET(E1000_STATUS_FUNC_MASK, reg);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index f536c856727c..af5d9d97a0d6 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -1788,8 +1788,7 @@ static irqreturn_t e1000_intr_msi(int __always_unused irq, void *data)
 		adapter->corr_errors +=
 		    pbeccsts & E1000_PBECCSTS_CORR_ERR_CNT_MASK;
 		adapter->uncorr_errors +=
-		    (pbeccsts & E1000_PBECCSTS_UNCORR_ERR_CNT_MASK) >>
-		    E1000_PBECCSTS_UNCORR_ERR_CNT_SHIFT;
+		    FIELD_GET(E1000_PBECCSTS_UNCORR_ERR_CNT_MASK, pbeccsts);
 
 		/* Do the reset outside of interrupt context */
 		schedule_work(&adapter->reset_task);
@@ -1868,8 +1867,7 @@ static irqreturn_t e1000_intr(int __always_unused irq, void *data)
 		adapter->corr_errors +=
 		    pbeccsts & E1000_PBECCSTS_CORR_ERR_CNT_MASK;
 		adapter->uncorr_errors +=
-		    (pbeccsts & E1000_PBECCSTS_UNCORR_ERR_CNT_MASK) >>
-		    E1000_PBECCSTS_UNCORR_ERR_CNT_SHIFT;
+		    FIELD_GET(E1000_PBECCSTS_UNCORR_ERR_CNT_MASK, pbeccsts);
 
 		/* Do the reset outside of interrupt context */
 		schedule_work(&adapter->reset_task);
@@ -5031,8 +5029,7 @@ static void e1000e_update_stats(struct e1000_adapter *adapter)
 		adapter->corr_errors +=
 		    pbeccsts & E1000_PBECCSTS_CORR_ERR_CNT_MASK;
 		adapter->uncorr_errors +=
-		    (pbeccsts & E1000_PBECCSTS_UNCORR_ERR_CNT_MASK) >>
-		    E1000_PBECCSTS_UNCORR_ERR_CNT_SHIFT;
+		    FIELD_GET(E1000_PBECCSTS_UNCORR_ERR_CNT_MASK, pbeccsts);
 	}
 }
 
@@ -6249,7 +6246,7 @@ static int e1000_init_phy_wakeup(struct e1000_adapter *adapter, u32 wufc)
 		phy_reg |= BM_RCTL_MPE;
 	phy_reg &= ~(BM_RCTL_MO_MASK);
 	if (mac_reg & E1000_RCTL_MO_3)
-		phy_reg |= (((mac_reg & E1000_RCTL_MO_3) >> E1000_RCTL_MO_SHIFT)
+		phy_reg |= (FIELD_GET(E1000_RCTL_MO_3, mac_reg)
 			    << BM_RCTL_MO_SHIFT);
 	if (mac_reg & E1000_RCTL_BAM)
 		phy_reg |= BM_RCTL_BAM;
diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index 2498f021eb02..5e329156d1ba 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -154,10 +154,9 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
 		e_dbg("MDI Read PHY Reg Address %d Error\n", offset);
 		return -E1000_ERR_PHY;
 	}
-	if (((mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT) != offset) {
+	if (FIELD_GET(E1000_MDIC_REG_MASK, mdic) != offset) {
 		e_dbg("MDI Read offset error - requested %d, returned %d\n",
-		      offset,
-		      (mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT);
+		      offset, FIELD_GET(E1000_MDIC_REG_MASK, mdic));
 		return -E1000_ERR_PHY;
 	}
 	*data = (u16)mdic;
@@ -167,7 +166,6 @@ s32 e1000e_read_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 *data)
 	 */
 	if (hw->mac.type == e1000_pch2lan)
 		udelay(100);
-
 	return 0;
 }
 
@@ -218,10 +216,9 @@ s32 e1000e_write_phy_reg_mdic(struct e1000_hw *hw, u32 offset, u16 data)
 		e_dbg("MDI Write PHY Red Address %d Error\n", offset);
 		return -E1000_ERR_PHY;
 	}
-	if (((mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT) != offset) {
+	if (FIELD_GET(E1000_MDIC_REG_MASK, mdic) != offset) {
 		e_dbg("MDI Write offset error - requested %d, returned %d\n",
-		      offset,
-		      (mdic & E1000_MDIC_REG_MASK) >> E1000_MDIC_REG_SHIFT);
+		      offset, FIELD_GET(E1000_MDIC_REG_MASK, mdic));
 		return -E1000_ERR_PHY;
 	}
 
@@ -1792,8 +1789,7 @@ s32 e1000e_get_cable_length_m88(struct e1000_hw *hw)
 	if (ret_val)
 		return ret_val;
 
-	index = ((phy_data & M88E1000_PSSR_CABLE_LENGTH) >>
-		 M88E1000_PSSR_CABLE_LENGTH_SHIFT);
+	index = FIELD_GET(M88E1000_PSSR_CABLE_LENGTH, phy_data);
 
 	if (index >= M88E1000_CABLE_LENGTH_TABLE_SIZE - 1)
 		return -E1000_ERR_PHY;
@@ -3233,8 +3229,7 @@ s32 e1000_get_cable_length_82577(struct e1000_hw *hw)
 	if (ret_val)
 		return ret_val;
 
-	length = ((phy_data & I82577_DSTATUS_CABLE_LENGTH) >>
-		  I82577_DSTATUS_CABLE_LENGTH_SHIFT);
+	length = FIELD_GET(I82577_DSTATUS_CABLE_LENGTH, phy_data);
 
 	if (length == E1000_CABLE_LENGTH_UNDEFINED)
 		return -E1000_ERR_PHY;
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
index 1eea0ec5dbcf..98861cc6df7c 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
@@ -1575,8 +1575,7 @@ static s32 fm10k_get_fault_pf(struct fm10k_hw *hw, int type,
 	if (func & FM10K_FAULT_FUNC_PF)
 		fault->func = 0;
 	else
-		fault->func = 1 + ((func & FM10K_FAULT_FUNC_VF_MASK) >>
-				   FM10K_FAULT_FUNC_VF_SHIFT);
+		fault->func = 1 + FIELD_GET(FM10K_FAULT_FUNC_VF_MASK, func);
 
 	/* record fault type */
 	fault->type = func & FM10K_FAULT_FUNC_TYPE_MASK;
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_vf.c b/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
index c50928ec14ff..7fb1961f2921 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_vf.c
@@ -127,15 +127,14 @@ static s32 fm10k_init_hw_vf(struct fm10k_hw *hw)
 	hw->mac.max_queues = i;
 
 	/* fetch default VLAN and ITR scale */
-	hw->mac.default_vid = (fm10k_read_reg(hw, FM10K_TXQCTL(0)) &
-			       FM10K_TXQCTL_VID_MASK) >> FM10K_TXQCTL_VID_SHIFT;
+	hw->mac.default_vid = FIELD_GET(FM10K_TXQCTL_VID_MASK,
+					fm10k_read_reg(hw, FM10K_TXQCTL(0)));
 	/* Read the ITR scale from TDLEN. See the definition of
 	 * FM10K_TDLEN_ITR_SCALE_SHIFT for more information about how TDLEN is
 	 * used here.
 	 */
-	hw->mac.itr_scale = (fm10k_read_reg(hw, FM10K_TDLEN(0)) &
-			     FM10K_TDLEN_ITR_SCALE_MASK) >>
-			    FM10K_TDLEN_ITR_SCALE_SHIFT;
+	hw->mac.itr_scale = FIELD_GET(FM10K_TDLEN_ITR_SCALE_MASK,
+				      fm10k_read_reg(hw, FM10K_TDLEN(0)));
 
 	return 0;
 
diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.c b/drivers/net/ethernet/intel/igb/e1000_82575.c
index 8d6e44ee1895..64dfc362d1dc 100644
--- a/drivers/net/ethernet/intel/igb/e1000_82575.c
+++ b/drivers/net/ethernet/intel/igb/e1000_82575.c
@@ -222,8 +222,7 @@ static s32 igb_init_phy_params_82575(struct e1000_hw *hw)
 	}
 
 	/* set lan id */
-	hw->bus.func = (rd32(E1000_STATUS) & E1000_STATUS_FUNC_MASK) >>
-			E1000_STATUS_FUNC_SHIFT;
+	hw->bus.func = FIELD_GET(E1000_STATUS_FUNC_MASK, rd32(E1000_STATUS));
 
 	/* Set phy->phy_addr and phy->id. */
 	ret_val = igb_get_phy_id_82575(hw);
@@ -262,8 +261,8 @@ static s32 igb_init_phy_params_82575(struct e1000_hw *hw)
 			if (ret_val)
 				goto out;
 
-			data = (data & E1000_M88E1112_MAC_CTRL_1_MODE_MASK) >>
-			       E1000_M88E1112_MAC_CTRL_1_MODE_SHIFT;
+			data = FIELD_GET(E1000_M88E1112_MAC_CTRL_1_MODE_MASK,
+					 data);
 			if (data == E1000_M88E1112_AUTO_COPPER_SGMII ||
 			    data == E1000_M88E1112_AUTO_COPPER_BASEX)
 				hw->mac.ops.check_for_link =
@@ -330,8 +329,7 @@ static s32 igb_init_nvm_params_82575(struct e1000_hw *hw)
 	u32 eecd = rd32(E1000_EECD);
 	u16 size;
 
-	size = (u16)((eecd & E1000_EECD_SIZE_EX_MASK) >>
-		     E1000_EECD_SIZE_EX_SHIFT);
+	size = FIELD_GET(E1000_EECD_SIZE_EX_MASK, eecd);
 
 	/* Added to a constant, "size" becomes the left-shift value
 	 * for setting word_size.
@@ -2798,7 +2796,7 @@ static s32 igb_get_thermal_sensor_data_generic(struct e1000_hw *hw)
 		return 0;
 
 	hw->nvm.ops.read(hw, ets_offset, 1, &ets_cfg);
-	if (((ets_cfg & NVM_ETS_TYPE_MASK) >> NVM_ETS_TYPE_SHIFT)
+	if (FIELD_GET(NVM_ETS_TYPE_MASK, ets_cfg)
 	    != NVM_ETS_TYPE_EMC)
 		return E1000_NOT_IMPLEMENTED;
 
@@ -2808,10 +2806,8 @@ static s32 igb_get_thermal_sensor_data_generic(struct e1000_hw *hw)
 
 	for (i = 1; i < num_sensors; i++) {
 		hw->nvm.ops.read(hw, (ets_offset + i), 1, &ets_sensor);
-		sensor_index = ((ets_sensor & NVM_ETS_DATA_INDEX_MASK) >>
-				NVM_ETS_DATA_INDEX_SHIFT);
-		sensor_location = ((ets_sensor & NVM_ETS_DATA_LOC_MASK) >>
-				   NVM_ETS_DATA_LOC_SHIFT);
+		sensor_index = FIELD_GET(NVM_ETS_DATA_INDEX_MASK, ets_sensor);
+		sensor_location = FIELD_GET(NVM_ETS_DATA_LOC_MASK, ets_sensor);
 
 		if (sensor_location != 0)
 			hw->phy.ops.read_i2c_byte(hw,
@@ -2859,20 +2855,17 @@ static s32 igb_init_thermal_sensor_thresh_generic(struct e1000_hw *hw)
 		return 0;
 
 	hw->nvm.ops.read(hw, ets_offset, 1, &ets_cfg);
-	if (((ets_cfg & NVM_ETS_TYPE_MASK) >> NVM_ETS_TYPE_SHIFT)
+	if (FIELD_GET(NVM_ETS_TYPE_MASK, ets_cfg)
 	    != NVM_ETS_TYPE_EMC)
 		return E1000_NOT_IMPLEMENTED;
 
-	low_thresh_delta = ((ets_cfg & NVM_ETS_LTHRES_DELTA_MASK) >>
-			    NVM_ETS_LTHRES_DELTA_SHIFT);
+	low_thresh_delta = FIELD_GET(NVM_ETS_LTHRES_DELTA_MASK, ets_cfg);
 	num_sensors = (ets_cfg & NVM_ETS_NUM_SENSORS_MASK);
 
 	for (i = 1; i <= num_sensors; i++) {
 		hw->nvm.ops.read(hw, (ets_offset + i), 1, &ets_sensor);
-		sensor_index = ((ets_sensor & NVM_ETS_DATA_INDEX_MASK) >>
-				NVM_ETS_DATA_INDEX_SHIFT);
-		sensor_location = ((ets_sensor & NVM_ETS_DATA_LOC_MASK) >>
-				   NVM_ETS_DATA_LOC_SHIFT);
+		sensor_index = FIELD_GET(NVM_ETS_DATA_INDEX_MASK, ets_sensor);
+		sensor_location = FIELD_GET(NVM_ETS_DATA_LOC_MASK, ets_sensor);
 		therm_limit = ets_sensor & NVM_ETS_DATA_HTHRESH_MASK;
 
 		hw->phy.ops.write_i2c_byte(hw,
diff --git a/drivers/net/ethernet/intel/igb/e1000_i210.c b/drivers/net/ethernet/intel/igb/e1000_i210.c
index 53b396fd194a..503b239868e8 100644
--- a/drivers/net/ethernet/intel/igb/e1000_i210.c
+++ b/drivers/net/ethernet/intel/igb/e1000_i210.c
@@ -473,7 +473,7 @@ s32 igb_read_invm_version(struct e1000_hw *hw,
 		/* Check if we have second version location used */
 		else if ((i == 1) &&
 			 ((*record & E1000_INVM_VER_FIELD_TWO) == 0)) {
-			version = (*record & E1000_INVM_VER_FIELD_ONE) >> 3;
+			version = FIELD_GET(E1000_INVM_VER_FIELD_ONE, *record);
 			status = 0;
 			break;
 		}
@@ -483,8 +483,8 @@ s32 igb_read_invm_version(struct e1000_hw *hw,
 		else if ((((*record & E1000_INVM_VER_FIELD_ONE) == 0) &&
 			 ((*record & 0x3) == 0)) || (((*record & 0x3) != 0) &&
 			 (i != 1))) {
-			version = (*next_record & E1000_INVM_VER_FIELD_TWO)
-				  >> 13;
+			version = FIELD_GET(E1000_INVM_VER_FIELD_TWO,
+					    *next_record);
 			status = 0;
 			break;
 		}
@@ -493,15 +493,15 @@ s32 igb_read_invm_version(struct e1000_hw *hw,
 		 */
 		else if (((*record & E1000_INVM_VER_FIELD_TWO) == 0) &&
 			 ((*record & 0x3) == 0)) {
-			version = (*record & E1000_INVM_VER_FIELD_ONE) >> 3;
+			version = FIELD_GET(E1000_INVM_VER_FIELD_ONE, *record);
 			status = 0;
 			break;
 		}
 	}
 
 	if (!status) {
-		invm_ver->invm_major = (version & E1000_INVM_MAJOR_MASK)
-					>> E1000_INVM_MAJOR_SHIFT;
+		invm_ver->invm_major = FIELD_GET(E1000_INVM_MAJOR_MASK,
+						 version);
 		invm_ver->invm_minor = version & E1000_INVM_MINOR_MASK;
 	}
 	/* Read Image Type */
@@ -520,7 +520,8 @@ s32 igb_read_invm_version(struct e1000_hw *hw,
 			 ((*record & E1000_INVM_IMGTYPE_FIELD) == 0)) ||
 			 ((((*record & 0x3) != 0) && (i != 1)))) {
 			invm_ver->invm_img_type =
-				(*next_record & E1000_INVM_IMGTYPE_FIELD) >> 23;
+				FIELD_GET(E1000_INVM_IMGTYPE_FIELD,
+					  *next_record);
 			status = 0;
 			break;
 		}
diff --git a/drivers/net/ethernet/intel/igb/e1000_mac.c b/drivers/net/ethernet/intel/igb/e1000_mac.c
index caf91c6f52b4..00131636c4cf 100644
--- a/drivers/net/ethernet/intel/igb/e1000_mac.c
+++ b/drivers/net/ethernet/intel/igb/e1000_mac.c
@@ -50,13 +50,12 @@ s32 igb_get_bus_info_pcie(struct e1000_hw *hw)
 			break;
 		}
 
-		bus->width = (enum e1000_bus_width)((pcie_link_status &
-						     PCI_EXP_LNKSTA_NLW) >>
-						     PCI_EXP_LNKSTA_NLW_SHIFT);
+		bus->width = (enum e1000_bus_width)FIELD_GET(PCI_EXP_LNKSTA_NLW,
+							     pcie_link_status);
 	}
 
 	reg = rd32(E1000_STATUS);
-	bus->func = (reg & E1000_STATUS_FUNC_MASK) >> E1000_STATUS_FUNC_SHIFT;
+	bus->func = FIELD_GET(E1000_STATUS_FUNC_MASK, reg);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.c b/drivers/net/ethernet/intel/igb/e1000_nvm.c
index 0da57e89593a..2dcd64d6dec3 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.c
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.c
@@ -708,10 +708,10 @@ void igb_get_fw_version(struct e1000_hw *hw, struct e1000_fw_version *fw_vers)
 		 */
 		if ((etrack_test &  NVM_MAJOR_MASK) != NVM_ETRACK_VALID) {
 			hw->nvm.ops.read(hw, NVM_VERSION, 1, &fw_version);
-			fw_vers->eep_major = (fw_version & NVM_MAJOR_MASK)
-					      >> NVM_MAJOR_SHIFT;
-			fw_vers->eep_minor = (fw_version & NVM_MINOR_MASK)
-					      >> NVM_MINOR_SHIFT;
+			fw_vers->eep_major = FIELD_GET(NVM_MAJOR_MASK,
+						       fw_version);
+			fw_vers->eep_minor = FIELD_GET(NVM_MINOR_MASK,
+						       fw_version);
 			fw_vers->eep_build = (fw_version & NVM_IMAGE_ID_MASK);
 			goto etrack_id;
 		}
@@ -753,15 +753,13 @@ void igb_get_fw_version(struct e1000_hw *hw, struct e1000_fw_version *fw_vers)
 		return;
 	}
 	hw->nvm.ops.read(hw, NVM_VERSION, 1, &fw_version);
-	fw_vers->eep_major = (fw_version & NVM_MAJOR_MASK)
-			      >> NVM_MAJOR_SHIFT;
+	fw_vers->eep_major = FIELD_GET(NVM_MAJOR_MASK, fw_version);
 
 	/* check for old style version format in newer images*/
 	if ((fw_version & NVM_NEW_DEC_MASK) == 0x0) {
 		eeprom_verl = (fw_version & NVM_COMB_VER_MASK);
 	} else {
-		eeprom_verl = (fw_version & NVM_MINOR_MASK)
-				>> NVM_MINOR_SHIFT;
+		eeprom_verl = FIELD_GET(NVM_MINOR_MASK, fw_version);
 	}
 	/* Convert minor value to hex before assigning to output struct
 	 * Val to be converted will not be higher than 99, per tool output
diff --git a/drivers/net/ethernet/intel/igb/e1000_phy.c b/drivers/net/ethernet/intel/igb/e1000_phy.c
index c84e7356cdb1..cd65008c7ef5 100644
--- a/drivers/net/ethernet/intel/igb/e1000_phy.c
+++ b/drivers/net/ethernet/intel/igb/e1000_phy.c
@@ -1682,8 +1682,7 @@ s32 igb_get_cable_length_m88(struct e1000_hw *hw)
 	if (ret_val)
 		goto out;
 
-	index = (phy_data & M88E1000_PSSR_CABLE_LENGTH) >>
-		M88E1000_PSSR_CABLE_LENGTH_SHIFT;
+	index = FIELD_GET(M88E1000_PSSR_CABLE_LENGTH, phy_data);
 	if (index >= ARRAY_SIZE(e1000_m88_cable_length_table) - 1) {
 		ret_val = -E1000_ERR_PHY;
 		goto out;
@@ -1796,8 +1795,7 @@ s32 igb_get_cable_length_m88_gen2(struct e1000_hw *hw)
 		if (ret_val)
 			goto out;
 
-		index = (phy_data & M88E1000_PSSR_CABLE_LENGTH) >>
-			M88E1000_PSSR_CABLE_LENGTH_SHIFT;
+		index = FIELD_GET(M88E1000_PSSR_CABLE_LENGTH, phy_data);
 		if (index >= ARRAY_SIZE(e1000_m88_cable_length_table) - 1) {
 			ret_val = -E1000_ERR_PHY;
 			goto out;
@@ -2578,8 +2576,7 @@ s32 igb_get_cable_length_82580(struct e1000_hw *hw)
 	if (ret_val)
 		goto out;
 
-	length = (phy_data & I82580_DSTATUS_CABLE_LENGTH) >>
-		 I82580_DSTATUS_CABLE_LENGTH_SHIFT;
+	length = FIELD_GET(I82580_DSTATUS_CABLE_LENGTH, phy_data);
 
 	if (length == E1000_CABLE_LENGTH_UNDEFINED)
 		ret_val = -E1000_ERR_PHY;
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index f03977f2323e..3ba23fb87551 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -2434,7 +2434,7 @@ static int igb_get_ts_info(struct net_device *dev,
 	}
 }
 
-#define ETHER_TYPE_FULL_MASK ((__force __be16)~0)
+#define ETHER_TYPE_FULL_MASK cpu_to_be16(FIELD_MAX(U16_MAX))
 static int igb_get_ethtool_nfc_entry(struct igb_adapter *adapter,
 				     struct ethtool_rxnfc *cmd)
 {
@@ -2732,8 +2732,8 @@ static int igb_rxnfc_write_vlan_prio_filter(struct igb_adapter *adapter,
 	u32 vlapqf;
 
 	vlapqf = rd32(E1000_VLAPQF);
-	vlan_priority = (ntohs(input->filter.vlan_tci) & VLAN_PRIO_MASK)
-				>> VLAN_PRIO_SHIFT;
+	vlan_priority = FIELD_GET(VLAN_PRIO_MASK,
+				  ntohs(input->filter.vlan_tci));
 	queue_index = (vlapqf >> (vlan_priority * 4)) & E1000_VLAPQF_QUEUE_MASK;
 
 	/* check whether this vlan prio is already set */
@@ -2816,7 +2816,7 @@ static void igb_clear_vlan_prio_filter(struct igb_adapter *adapter,
 	u8 vlan_priority;
 	u32 vlapqf;
 
-	vlan_priority = (vlan_tci & VLAN_PRIO_MASK) >> VLAN_PRIO_SHIFT;
+	vlan_priority = FIELD_GET(VLAN_PRIO_MASK, vlan_tci);
 
 	vlapqf = rd32(E1000_VLAPQF);
 	vlapqf &= ~E1000_VLAPQF_P_VALID(vlan_priority);
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 897eb36bb609..4df8d4153aa5 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -7295,7 +7295,7 @@ static int igb_set_vf_promisc(struct igb_adapter *adapter, u32 *msgbuf, u32 vf)
 static int igb_set_vf_multicasts(struct igb_adapter *adapter,
 				  u32 *msgbuf, u32 vf)
 {
-	int n = (msgbuf[0] & E1000_VT_MSGINFO_MASK) >> E1000_VT_MSGINFO_SHIFT;
+	int n = FIELD_GET(E1000_VT_MSGINFO_MASK, msgbuf[0]);
 	u16 *hash_list = (u16 *)&msgbuf[1];
 	struct vf_data_storage *vf_data = &adapter->vf_data[vf];
 	int i;
@@ -7555,7 +7555,7 @@ static int igb_ndo_set_vf_vlan(struct net_device *netdev, int vf,
 
 static int igb_set_vf_vlan_msg(struct igb_adapter *adapter, u32 *msgbuf, u32 vf)
 {
-	int add = (msgbuf[0] & E1000_VT_MSGINFO_MASK) >> E1000_VT_MSGINFO_SHIFT;
+	int add = FIELD_GET(E1000_VT_MSGINFO_MASK, msgbuf[0]);
 	int vid = (msgbuf[1] & E1000_VLVF_VLANID_MASK);
 	int ret;
 
diff --git a/drivers/net/ethernet/intel/igbvf/mbx.c b/drivers/net/ethernet/intel/igbvf/mbx.c
index a3cd7ac48d4b..d15282ee5ea8 100644
--- a/drivers/net/ethernet/intel/igbvf/mbx.c
+++ b/drivers/net/ethernet/intel/igbvf/mbx.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright(c) 2009 - 2018 Intel Corporation. */
 
+#include <linux/bitfield.h>
 #include "mbx.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index e6c1fbee049e..bce78781a7df 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -273,9 +273,8 @@ static bool igbvf_clean_rx_irq(struct igbvf_adapter *adapter,
 		 * that case, it fills the header buffer and spills the rest
 		 * into the page.
 		 */
-		hlen = (le16_to_cpu(rx_desc->wb.lower.lo_dword.hs_rss.hdr_info)
-		       & E1000_RXDADV_HDRBUFLEN_MASK) >>
-		       E1000_RXDADV_HDRBUFLEN_SHIFT;
+		hlen = FIELD_GET(E1000_RXDADV_HDRBUFLEN_MASK,
+				 le16_to_cpu(rx_desc->wb.lower.lo_dword.hs_rss.hdr_info));
 		if (hlen > adapter->rx_ps_hdr_size)
 			hlen = adapter->rx_ps_hdr_size;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 878dd8dff528..7d7bd44448c4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -684,7 +684,7 @@ void ixgbe_set_lan_id_multi_port_pcie(struct ixgbe_hw *hw)
 	u32 reg;
 
 	reg = IXGBE_READ_REG(hw, IXGBE_STATUS);
-	bus->func = (reg & IXGBE_STATUS_LAN_ID) >> IXGBE_STATUS_LAN_ID_SHIFT;
+	bus->func = FIELD_GET(IXGBE_STATUS_LAN_ID, reg);
 	bus->lan_id = bus->func;
 
 	/* check for a port swap */
@@ -695,8 +695,8 @@ void ixgbe_set_lan_id_multi_port_pcie(struct ixgbe_hw *hw)
 	/* Get MAC instance from EEPROM for configuring CS4227 */
 	if (hw->device_id == IXGBE_DEV_ID_X550EM_A_SFP) {
 		hw->eeprom.ops.read(hw, IXGBE_EEPROM_CTRL_4, &ee_ctrl_4);
-		bus->instance_id = (ee_ctrl_4 & IXGBE_EE_CTRL_4_INST_ID) >>
-				   IXGBE_EE_CTRL_4_INST_ID_SHIFT;
+		bus->instance_id = FIELD_GET(IXGBE_EE_CTRL_4_INST_ID,
+					     ee_ctrl_4);
 	}
 }
 
@@ -870,10 +870,9 @@ s32 ixgbe_init_eeprom_params_generic(struct ixgbe_hw *hw)
 			 * SPI EEPROM is assumed here.  This code would need to
 			 * change if a future EEPROM is not SPI.
 			 */
-			eeprom_size = (u16)((eec & IXGBE_EEC_SIZE) >>
-					    IXGBE_EEC_SIZE_SHIFT);
+			eeprom_size = FIELD_GET(IXGBE_EEC_SIZE, eec);
 			eeprom->word_size = BIT(eeprom_size +
-						 IXGBE_EEPROM_WORD_SIZE_SHIFT);
+						IXGBE_EEPROM_WORD_SIZE_SHIFT);
 		}
 
 		if (eec & IXGBE_EEC_ADDR_SIZE)
@@ -3946,10 +3945,10 @@ s32 ixgbe_get_thermal_sensor_data_generic(struct ixgbe_hw *hw)
 		if (status)
 			return status;
 
-		sensor_index = ((ets_sensor & IXGBE_ETS_DATA_INDEX_MASK) >>
-				IXGBE_ETS_DATA_INDEX_SHIFT);
-		sensor_location = ((ets_sensor & IXGBE_ETS_DATA_LOC_MASK) >>
-				   IXGBE_ETS_DATA_LOC_SHIFT);
+		sensor_index = FIELD_GET(IXGBE_ETS_DATA_INDEX_MASK,
+					 ets_sensor);
+		sensor_location = FIELD_GET(IXGBE_ETS_DATA_LOC_MASK,
+					    ets_sensor);
 
 		if (sensor_location != 0) {
 			status = hw->phy.ops.read_i2c_byte(hw,
@@ -3993,8 +3992,7 @@ s32 ixgbe_init_thermal_sensor_thresh_generic(struct ixgbe_hw *hw)
 	if (status)
 		return status;
 
-	low_thresh_delta = ((ets_cfg & IXGBE_ETS_LTHRES_DELTA_MASK) >>
-			     IXGBE_ETS_LTHRES_DELTA_SHIFT);
+	low_thresh_delta = FIELD_GET(IXGBE_ETS_LTHRES_DELTA_MASK, ets_cfg);
 	num_sensors = (ets_cfg & IXGBE_ETS_NUM_SENSORS_MASK);
 	if (num_sensors > IXGBE_MAX_SENSORS)
 		num_sensors = IXGBE_MAX_SENSORS;
@@ -4008,10 +4006,10 @@ s32 ixgbe_init_thermal_sensor_thresh_generic(struct ixgbe_hw *hw)
 			       ets_offset + 1 + i);
 			continue;
 		}
-		sensor_index = ((ets_sensor & IXGBE_ETS_DATA_INDEX_MASK) >>
-				IXGBE_ETS_DATA_INDEX_SHIFT);
-		sensor_location = ((ets_sensor & IXGBE_ETS_DATA_LOC_MASK) >>
-				   IXGBE_ETS_DATA_LOC_SHIFT);
+		sensor_index = FIELD_GET(IXGBE_ETS_DATA_INDEX_MASK,
+					 ets_sensor);
+		sensor_location = FIELD_GET(IXGBE_ETS_DATA_LOC_MASK,
+					    ets_sensor);
 		therm_limit = ets_sensor & IXGBE_ETS_DATA_HTHRESH_MASK;
 
 		hw->phy.ops.write_i2c_byte(hw,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 94bde2cad0f4..227415d61efc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -11371,7 +11371,7 @@ static pci_ers_result_t ixgbe_io_error_detected(struct pci_dev *pdev,
 	if ((pf_func & 1) == (pdev->devfn & 1)) {
 		unsigned int device_id;
 
-		vf = (req_id & 0x7F) >> 1;
+		vf = FIELD_GET(0x7F, req_id);
 		e_dev_err("VF %d has caused a PCIe error\n", vf);
 		e_dev_err("TLP: dw0: %8.8x\tdw1: %8.8x\tdw2: "
 				"%8.8x\tdw3: %8.8x\n",
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 689470c1e8ad..ca31638c6fb8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -276,9 +276,8 @@ s32 ixgbe_identify_phy_generic(struct ixgbe_hw *hw)
 		return 0;
 
 	if (hw->phy.nw_mng_if_sel) {
-		phy_addr = (hw->phy.nw_mng_if_sel &
-			    IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD) >>
-			   IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD_SHIFT;
+		phy_addr = FIELD_GET(IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD,
+				     hw->phy.nw_mng_if_sel);
 		if (ixgbe_probe_phy(hw, phy_addr))
 			return 0;
 		else
@@ -1448,8 +1447,7 @@ s32 ixgbe_reset_phy_nl(struct ixgbe_hw *hw)
 		ret_val = hw->eeprom.ops.read(hw, data_offset, &eword);
 		if (ret_val)
 			goto err_eeprom;
-		control = (eword & IXGBE_CONTROL_MASK_NL) >>
-			   IXGBE_CONTROL_SHIFT_NL;
+		control = FIELD_GET(IXGBE_CONTROL_MASK_NL, eword);
 		edata = eword & IXGBE_DATA_MASK_NL;
 		switch (control) {
 		case IXGBE_DELAY_NL:
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 9cfdfa8a4355..f8c6ca9fea82 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -363,8 +363,7 @@ int ixgbe_pci_sriov_configure(struct pci_dev *dev, int num_vfs)
 static int ixgbe_set_vf_multicasts(struct ixgbe_adapter *adapter,
 				   u32 *msgbuf, u32 vf)
 {
-	int entries = (msgbuf[0] & IXGBE_VT_MSGINFO_MASK)
-		       >> IXGBE_VT_MSGINFO_SHIFT;
+	int entries = FIELD_GET(IXGBE_VT_MSGINFO_MASK, msgbuf[0]);
 	u16 *hash_list = (u16 *)&msgbuf[1];
 	struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];
 	struct ixgbe_hw *hw = &adapter->hw;
@@ -969,7 +968,7 @@ static int ixgbe_set_vf_mac_addr(struct ixgbe_adapter *adapter,
 static int ixgbe_set_vf_vlan_msg(struct ixgbe_adapter *adapter,
 				 u32 *msgbuf, u32 vf)
 {
-	u32 add = (msgbuf[0] & IXGBE_VT_MSGINFO_MASK) >> IXGBE_VT_MSGINFO_SHIFT;
+	u32 add = FIELD_GET(IXGBE_VT_MSGINFO_MASK, msgbuf[0]);
 	u32 vid = (msgbuf[1] & IXGBE_VLVF_VLANID_MASK);
 	u8 tcs = adapter->hw_tcs;
 
@@ -992,8 +991,7 @@ static int ixgbe_set_vf_macvlan_msg(struct ixgbe_adapter *adapter,
 				    u32 *msgbuf, u32 vf)
 {
 	u8 *new_mac = ((u8 *)(&msgbuf[1]));
-	int index = (msgbuf[0] & IXGBE_VT_MSGINFO_MASK) >>
-		    IXGBE_VT_MSGINFO_SHIFT;
+	int index = FIELD_GET(IXGBE_VT_MSGINFO_MASK, msgbuf[0]);
 	int err;
 
 	if (adapter->vfinfo[vf].pf_set_mac && !adapter->vfinfo[vf].trusted &&
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index d5cfb51ff648..e127070a59f4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -187,16 +187,16 @@ s32 ixgbe_start_hw_X540(struct ixgbe_hw *hw)
 s32 ixgbe_init_eeprom_params_X540(struct ixgbe_hw *hw)
 {
 	struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
-	u32 eec;
-	u16 eeprom_size;
 
 	if (eeprom->type == ixgbe_eeprom_uninitialized) {
+		u16 eeprom_size;
+		u32 eec;
+
 		eeprom->semaphore_delay = 10;
 		eeprom->type = ixgbe_flash;
 
 		eec = IXGBE_READ_REG(hw, IXGBE_EEC(hw));
-		eeprom_size = (u16)((eec & IXGBE_EEC_SIZE) >>
-				    IXGBE_EEC_SIZE_SHIFT);
+		eeprom_size = FIELD_GET(IXGBE_EEC_SIZE, eec);
 		eeprom->word_size = BIT(eeprom_size +
 					IXGBE_EEPROM_WORD_SIZE_SHIFT);
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index aa4bf6c9a2f7..b3509b617a4e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -628,16 +628,16 @@ static s32 ixgbe_fc_autoneg_fw(struct ixgbe_hw *hw)
 static s32 ixgbe_init_eeprom_params_X550(struct ixgbe_hw *hw)
 {
 	struct ixgbe_eeprom_info *eeprom = &hw->eeprom;
-	u32 eec;
-	u16 eeprom_size;
 
 	if (eeprom->type == ixgbe_eeprom_uninitialized) {
+		u16 eeprom_size;
+		u32 eec;
+
 		eeprom->semaphore_delay = 10;
 		eeprom->type = ixgbe_flash;
 
 		eec = IXGBE_READ_REG(hw, IXGBE_EEC(hw));
-		eeprom_size = (u16)((eec & IXGBE_EEC_SIZE) >>
-				    IXGBE_EEC_SIZE_SHIFT);
+		eeprom_size = FIELD_GET(IXGBE_EEC_SIZE, eec);
 		eeprom->word_size = BIT(eeprom_size +
 					IXGBE_EEPROM_WORD_SIZE_SHIFT);
 
@@ -712,8 +712,7 @@ static s32 ixgbe_read_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
 	ret = ixgbe_iosf_wait(hw, &command);
 
 	if ((command & IXGBE_SB_IOSF_CTRL_RESP_STAT_MASK) != 0) {
-		error = (command & IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK) >>
-			 IXGBE_SB_IOSF_CTRL_CMPL_ERR_SHIFT;
+		error = FIELD_GET(IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK, command);
 		hw_dbg(hw, "Failed to read, error %x\n", error);
 		return IXGBE_ERR_PHY;
 	}
@@ -1412,8 +1411,7 @@ static s32 ixgbe_write_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
 	ret = ixgbe_iosf_wait(hw, &command);
 
 	if ((command & IXGBE_SB_IOSF_CTRL_RESP_STAT_MASK) != 0) {
-		error = (command & IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK) >>
-			 IXGBE_SB_IOSF_CTRL_CMPL_ERR_SHIFT;
+		error = FIELD_GET(IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK, command);
 		hw_dbg(hw, "Failed to write, error %x\n", error);
 		return IXGBE_ERR_PHY;
 	}
@@ -3222,9 +3220,8 @@ static void ixgbe_read_mng_if_sel_x550em(struct ixgbe_hw *hw)
 	 */
 	if (hw->mac.type == ixgbe_mac_x550em_a &&
 	    hw->phy.nw_mng_if_sel & IXGBE_NW_MNG_IF_SEL_MDIO_ACT) {
-		hw->phy.mdio.prtad = (hw->phy.nw_mng_if_sel &
-				      IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD) >>
-				     IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD_SHIFT;
+		hw->phy.mdio.prtad = FIELD_GET(IXGBE_NW_MNG_IF_SEL_MDIO_PHY_ADD,
+					       hw->phy.nw_mng_if_sel);
 	}
 }
 
-- 
2.39.3


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

