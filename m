Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B878B805322
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 12:38:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C02F8243B;
	Tue,  5 Dec 2023 11:38:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C02F8243B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701776295;
	bh=MxGK/0yWvuH0prlwPcVP4KsbJ+j9NLQ51kzxCTEIHak=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cRjU/LiAJE+jrC6wVNqU8o1lOB0bYvLwhxczfiKKzIB77SRgZBQwILgmiEOVoxZQ4
	 XyfqSlkSumQZotvkDaBZpmkBsVYZdNoQD+kLRdPEgA6R9GioG+t69/6m8Pqs2xTqmN
	 ebLqWwTnWCPhh+QEd9apX9FOIaDObu50dxZBrDxe5CaS09BC58yZhAR9T7W1Zq0cft
	 1Hw2HkpTANUhGxqnY7T3c1CQCOWVG3jHKAV7p6lJJI9MnpXpcH9QujXNSqCw3rsXB+
	 eyDcAyYpUvZgOIn7DawVy5e41OsF5vFOkAi/HxwsABvQIL4D3VzfXvD1+R3FSvFmo2
	 4SaFs3I2g1H/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kxkgpRPPZYWL; Tue,  5 Dec 2023 11:38:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3520882435;
	Tue,  5 Dec 2023 11:38:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3520882435
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 555581BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 11:38:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E47D4090E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 11:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E47D4090E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N4ES5ZfTmKjI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 11:38:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 51D5540277
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 11:38:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51D5540277
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="15429384"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="15429384"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 03:38:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="747197100"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="747197100"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orsmga006.jf.intel.com with ESMTP; 05 Dec 2023 03:37:59 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Dec 2023 12:28:40 +0100
Message-Id: <20231205112840.149813-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20231205112840.149813-1-jedrzej.jagielski@intel.com>
References: <20231205112840.149813-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701776283; x=1733312283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g8TijyaOPQ3GGupmrbaoJ6p0161q3/dxeCM8vUbbOWU=;
 b=cFS7Xgm0uZ/v0z5u29+vg9NYJJWtTm9wNTX7wWfEmRSOGeZjAfcptmlW
 21FSx0Ys/xBXZ3WJln4N9bBFkU/WPdRQunak3GF5Pa5xYetze57Eg0tTy
 +1GJrmahlgP1Ia0dfHSl4AU9/2LLKqnZ4ltlugi3pzqSN2cB6wRt2u9JW
 jB0ldHRzRWuLyPZFqoc3U7QFBgV34teTB678qGGzjYVytucbHJfQvBKS6
 +ot8G4CO4shGW5F0/+MTD6rXwlJB8Fr6TFVW0/WITLr782ZN29F0oXhaG
 Ma/bMKtgwn7dfOLefPHIzvHmKTCMwRJv7hxhz/nZy//lEBtMZaRSNBRuC
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cFS7Xgm0
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/2] ixgbe: Refactor returning
 internal error codes
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
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Change returning codes to the kernel ones instead of
the internal ones for the entire ixgbe driver.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |  36 ++---
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  61 ++++----
 .../net/ethernet/intel/ixgbe/ixgbe_common.c   | 145 ++++++++----------
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  26 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |  34 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |   1 -
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |  84 +++++-----
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |   2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  39 -----
 drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  44 +++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 109 ++++++-------
 12 files changed, 266 insertions(+), 317 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
index 100388968e4d..3d56481e16bc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
@@ -123,14 +123,14 @@ static s32 ixgbe_init_phy_ops_82598(struct ixgbe_hw *hw)
 		if (ret_val)
 			return ret_val;
 		if (hw->phy.sfp_type == ixgbe_sfp_type_unknown)
-			return IXGBE_ERR_SFP_NOT_SUPPORTED;
+			return -EOPNOTSUPP;
 
 		/* Check to see if SFP+ module is supported */
 		ret_val = ixgbe_get_sfp_init_sequence_offsets(hw,
 							    &list_offset,
 							    &data_offset);
 		if (ret_val)
-			return IXGBE_ERR_SFP_NOT_SUPPORTED;
+			return -EOPNOTSUPP;
 		break;
 	default:
 		break;
@@ -213,7 +213,7 @@ static s32 ixgbe_get_link_capabilities_82598(struct ixgbe_hw *hw,
 		break;
 
 	default:
-		return IXGBE_ERR_LINK_SETUP;
+		return -EIO;
 	}
 
 	return 0;
@@ -283,7 +283,7 @@ static s32 ixgbe_fc_enable_82598(struct ixgbe_hw *hw)
 
 	/* Validate the water mark configuration */
 	if (!hw->fc.pause_time)
-		return IXGBE_ERR_INVALID_LINK_SETTINGS;
+		return -EINVAL;
 
 	/* Low water mark of zero causes XOFF floods */
 	for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
@@ -292,7 +292,7 @@ static s32 ixgbe_fc_enable_82598(struct ixgbe_hw *hw)
 			if (!hw->fc.low_water[i] ||
 			    hw->fc.low_water[i] >= hw->fc.high_water[i]) {
 				hw_dbg(hw, "Invalid water mark configuration\n");
-				return IXGBE_ERR_INVALID_LINK_SETTINGS;
+				return -EINVAL;
 			}
 		}
 	}
@@ -369,7 +369,7 @@ static s32 ixgbe_fc_enable_82598(struct ixgbe_hw *hw)
 		break;
 	default:
 		hw_dbg(hw, "Flow control param set incorrectly\n");
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 	}
 
 	/* Set 802.3x based flow control settings. */
@@ -438,7 +438,7 @@ static s32 ixgbe_start_mac_link_82598(struct ixgbe_hw *hw,
 				msleep(100);
 			}
 			if (!(links_reg & IXGBE_LINKS_KX_AN_COMP)) {
-				status = IXGBE_ERR_AUTONEG_NOT_COMPLETE;
+				status = -EIO;
 				hw_dbg(hw, "Autonegotiation did not complete.\n");
 			}
 		}
@@ -478,7 +478,7 @@ static s32 ixgbe_validate_link_ready(struct ixgbe_hw *hw)
 
 	if (timeout == IXGBE_VALIDATE_LINK_READY_TIMEOUT) {
 		hw_dbg(hw, "Link was indicated but link is down\n");
-		return IXGBE_ERR_LINK_SETUP;
+		return -EIO;
 	}
 
 	return 0;
@@ -594,7 +594,7 @@ static s32 ixgbe_setup_mac_link_82598(struct ixgbe_hw *hw,
 	speed &= link_capabilities;
 
 	if (speed == IXGBE_LINK_SPEED_UNKNOWN)
-		return IXGBE_ERR_LINK_SETUP;
+		return -EINVAL;
 
 	/* Set KX4/KX support according to speed requested */
 	else if (link_mode == IXGBE_AUTOC_LMS_KX4_AN ||
@@ -701,9 +701,9 @@ static s32 ixgbe_reset_hw_82598(struct ixgbe_hw *hw)
 
 		/* Init PHY and function pointers, perform SFP setup */
 		phy_status = hw->phy.ops.init(hw);
-		if (phy_status == IXGBE_ERR_SFP_NOT_SUPPORTED)
+		if (phy_status == -EOPNOTSUPP)
 			return phy_status;
-		if (phy_status == IXGBE_ERR_SFP_NOT_PRESENT)
+		if (phy_status == -ENOENT)
 			goto mac_reset_top;
 
 		hw->phy.ops.reset(hw);
@@ -727,7 +727,7 @@ static s32 ixgbe_reset_hw_82598(struct ixgbe_hw *hw)
 		udelay(1);
 	}
 	if (ctrl & IXGBE_CTRL_RST) {
-		status = IXGBE_ERR_RESET_FAILED;
+		status = -EIO;
 		hw_dbg(hw, "Reset polling failed to complete.\n");
 	}
 
@@ -789,7 +789,7 @@ static s32 ixgbe_set_vmdq_82598(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
 	/* Make sure we are using a valid rar index range */
 	if (rar >= rar_entries) {
 		hw_dbg(hw, "RAR index %d is out of range.\n", rar);
-		return IXGBE_ERR_INVALID_ARGUMENT;
+		return -EINVAL;
 	}
 
 	rar_high = IXGBE_READ_REG(hw, IXGBE_RAH(rar));
@@ -814,7 +814,7 @@ static s32 ixgbe_clear_vmdq_82598(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
 	/* Make sure we are using a valid rar index range */
 	if (rar >= rar_entries) {
 		hw_dbg(hw, "RAR index %d is out of range.\n", rar);
-		return IXGBE_ERR_INVALID_ARGUMENT;
+		return -EINVAL;
 	}
 
 	rar_high = IXGBE_READ_REG(hw, IXGBE_RAH(rar));
@@ -845,7 +845,7 @@ static s32 ixgbe_set_vfta_82598(struct ixgbe_hw *hw, u32 vlan, u32 vind,
 	u32 vftabyte;
 
 	if (vlan > 4095)
-		return IXGBE_ERR_PARAM;
+		return -EINVAL;
 
 	/* Determine 32-bit word position in array */
 	regindex = (vlan >> 5) & 0x7F;   /* upper seven bits */
@@ -964,7 +964,7 @@ static s32 ixgbe_read_i2c_phy_82598(struct ixgbe_hw *hw, u8 dev_addr,
 		gssr = IXGBE_GSSR_PHY0_SM;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, gssr) != 0)
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 
 	if (hw->phy.type == ixgbe_phy_nl) {
 		/*
@@ -993,7 +993,7 @@ static s32 ixgbe_read_i2c_phy_82598(struct ixgbe_hw *hw, u8 dev_addr,
 
 		if (sfp_stat != IXGBE_I2C_EEPROM_STATUS_PASS) {
 			hw_dbg(hw, "EEPROM read did not pass.\n");
-			status = IXGBE_ERR_SFP_NOT_PRESENT;
+			status = -ENOENT;
 			goto out;
 		}
 
@@ -1003,7 +1003,7 @@ static s32 ixgbe_read_i2c_phy_82598(struct ixgbe_hw *hw, u8 dev_addr,
 
 		*eeprom_data = (u8)(sfp_data >> 8);
 	} else {
-		status = IXGBE_ERR_PHY;
+		status = -EIO;
 	}
 
 out:
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
index 58ea959a4482..339e106a5732 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
@@ -117,7 +117,7 @@ static s32 ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw)
 		ret_val = hw->mac.ops.acquire_swfw_sync(hw,
 							IXGBE_GSSR_MAC_CSR_SM);
 		if (ret_val)
-			return IXGBE_ERR_SWFW_SYNC;
+			return -EBUSY;
 
 		if (hw->eeprom.ops.read(hw, ++data_offset, &data_value))
 			goto setup_sfp_err;
@@ -144,7 +144,7 @@ static s32 ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw)
 
 		if (ret_val) {
 			hw_dbg(hw, " sfp module setup not complete\n");
-			return IXGBE_ERR_SFP_SETUP_NOT_COMPLETE;
+			return -EIO;
 		}
 	}
 
@@ -159,7 +159,7 @@ static s32 ixgbe_setup_sfp_modules_82599(struct ixgbe_hw *hw)
 	usleep_range(hw->eeprom.semaphore_delay * 1000,
 		     hw->eeprom.semaphore_delay * 2000);
 	hw_err(hw, "eeprom read at offset %d failed\n", data_offset);
-	return IXGBE_ERR_SFP_SETUP_NOT_COMPLETE;
+	return -EIO;
 }
 
 /**
@@ -184,7 +184,7 @@ static s32 prot_autoc_read_82599(struct ixgbe_hw *hw, bool *locked,
 		ret_val = hw->mac.ops.acquire_swfw_sync(hw,
 					IXGBE_GSSR_MAC_CSR_SM);
 		if (ret_val)
-			return IXGBE_ERR_SWFW_SYNC;
+			return -EBUSY;
 
 		*locked = true;
 	}
@@ -219,7 +219,7 @@ static s32 prot_autoc_write_82599(struct ixgbe_hw *hw, u32 autoc, bool locked)
 		ret_val = hw->mac.ops.acquire_swfw_sync(hw,
 					IXGBE_GSSR_MAC_CSR_SM);
 		if (ret_val)
-			return IXGBE_ERR_SWFW_SYNC;
+			return -EBUSY;
 
 		locked = true;
 	}
@@ -400,7 +400,7 @@ static s32 ixgbe_get_link_capabilities_82599(struct ixgbe_hw *hw,
 		break;
 
 	default:
-		return IXGBE_ERR_LINK_SETUP;
+		return -EIO;
 	}
 
 	if (hw->phy.multispeed_fiber) {
@@ -541,7 +541,7 @@ static s32 ixgbe_start_mac_link_82599(struct ixgbe_hw *hw,
 				msleep(100);
 			}
 			if (!(links_reg & IXGBE_LINKS_KX_AN_COMP)) {
-				status = IXGBE_ERR_AUTONEG_NOT_COMPLETE;
+				status = -EIO;
 				hw_dbg(hw, "Autoneg did not complete.\n");
 			}
 		}
@@ -794,7 +794,7 @@ static s32 ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
 	speed &= link_capabilities;
 
 	if (speed == IXGBE_LINK_SPEED_UNKNOWN)
-		return IXGBE_ERR_LINK_SETUP;
+		return -EINVAL;
 
 	/* Use stored value (EEPROM defaults) of AUTOC to find KR/KX4 support*/
 	if (hw->mac.orig_link_settings_stored)
@@ -861,8 +861,7 @@ static s32 ixgbe_setup_mac_link_82599(struct ixgbe_hw *hw,
 					msleep(100);
 				}
 				if (!(links_reg & IXGBE_LINKS_KX_AN_COMP)) {
-					status =
-						IXGBE_ERR_AUTONEG_NOT_COMPLETE;
+					status = -EIO;
 					hw_dbg(hw, "Autoneg did not complete.\n");
 				}
 			}
@@ -927,7 +926,7 @@ static s32 ixgbe_reset_hw_82599(struct ixgbe_hw *hw)
 	/* Identify PHY and related function pointers */
 	status = hw->phy.ops.init(hw);
 
-	if (status == IXGBE_ERR_SFP_NOT_SUPPORTED)
+	if (status == -EOPNOTSUPP)
 		return status;
 
 	/* Setup SFP module if there is one present. */
@@ -936,7 +935,7 @@ static s32 ixgbe_reset_hw_82599(struct ixgbe_hw *hw)
 		hw->phy.sfp_setup_needed = false;
 	}
 
-	if (status == IXGBE_ERR_SFP_NOT_SUPPORTED)
+	if (status == -EOPNOTSUPP)
 		return status;
 
 	/* Reset PHY */
@@ -974,7 +973,7 @@ static s32 ixgbe_reset_hw_82599(struct ixgbe_hw *hw)
 	}
 
 	if (ctrl & IXGBE_CTRL_RST_MASK) {
-		status = IXGBE_ERR_RESET_FAILED;
+		status = -EIO;
 		hw_dbg(hw, "Reset polling failed to complete.\n");
 	}
 
@@ -1093,7 +1092,7 @@ static s32 ixgbe_fdir_check_cmd_complete(struct ixgbe_hw *hw, u32 *fdircmd)
 		udelay(10);
 	}
 
-	return IXGBE_ERR_FDIR_CMD_INCOMPLETE;
+	return -EIO;
 }
 
 /**
@@ -1155,7 +1154,7 @@ s32 ixgbe_reinit_fdir_tables_82599(struct ixgbe_hw *hw)
 	}
 	if (i >= IXGBE_FDIR_INIT_DONE_POLL) {
 		hw_dbg(hw, "Flow Director Signature poll time exceeded!\n");
-		return IXGBE_ERR_FDIR_REINIT_FAILED;
+		return -EIO;
 	}
 
 	/* Clear FDIR statistics registers (read to clear) */
@@ -1387,7 +1386,7 @@ s32 ixgbe_fdir_add_signature_filter_82599(struct ixgbe_hw *hw,
 		break;
 	default:
 		hw_dbg(hw, " Error on flow type input\n");
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 	}
 
 	/* configure FDIRCMD register */
@@ -1546,7 +1545,7 @@ s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 		break;
 	default:
 		hw_dbg(hw, " Error on vm pool mask\n");
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 	}
 
 	switch (input_mask->formatted.flow_type & IXGBE_ATR_L4TYPE_MASK) {
@@ -1555,14 +1554,14 @@ s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 		if (input_mask->formatted.dst_port ||
 		    input_mask->formatted.src_port) {
 			hw_dbg(hw, " Error on src/dst port mask\n");
-			return IXGBE_ERR_CONFIG;
+			return -EIO;
 		}
 		break;
 	case IXGBE_ATR_L4TYPE_MASK:
 		break;
 	default:
 		hw_dbg(hw, " Error on flow type mask\n");
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 	}
 
 	switch (ntohs(input_mask->formatted.vlan_id) & 0xEFFF) {
@@ -1583,7 +1582,7 @@ s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 		break;
 	default:
 		hw_dbg(hw, " Error on VLAN mask\n");
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 	}
 
 	switch ((__force u16)input_mask->formatted.flex_bytes & 0xFFFF) {
@@ -1595,7 +1594,7 @@ s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 		break;
 	default:
 		hw_dbg(hw, " Error on flexible byte mask\n");
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 	}
 
 	/* Now mask VM pool and destination IPv6 - bits 5 and 2 */
@@ -1824,7 +1823,7 @@ static s32 ixgbe_identify_phy_82599(struct ixgbe_hw *hw)
 
 	/* Return error if SFP module has been detected but is not supported */
 	if (hw->phy.type == ixgbe_phy_sfp_unsupported)
-		return IXGBE_ERR_SFP_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 
 	return status;
 }
@@ -1863,13 +1862,13 @@ static s32 ixgbe_enable_rx_dma_82599(struct ixgbe_hw *hw, u32 regval)
  *  Verifies that installed the firmware version is 0.6 or higher
  *  for SFI devices. All 82599 SFI devices should have version 0.6 or higher.
  *
- *  Returns IXGBE_ERR_EEPROM_VERSION if the FW is not present or
- *  if the FW version is not supported.
+ *  Return: -EACCES if the FW is not present or if the FW version is
+ *  not supported.
  **/
 static s32 ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw)
 {
-	s32 status = IXGBE_ERR_EEPROM_VERSION;
 	u16 fw_offset, fw_ptp_cfg_offset;
+	s32 status = -EACCES;
 	u16 offset;
 	u16 fw_version = 0;
 
@@ -1883,7 +1882,7 @@ static s32 ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw)
 		goto fw_version_err;
 
 	if (fw_offset == 0 || fw_offset == 0xFFFF)
-		return IXGBE_ERR_EEPROM_VERSION;
+		return -EACCES;
 
 	/* get the offset to the Pass Through Patch Configuration block */
 	offset = fw_offset + IXGBE_FW_PASSTHROUGH_PATCH_CONFIG_PTR;
@@ -1891,7 +1890,7 @@ static s32 ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw)
 		goto fw_version_err;
 
 	if (fw_ptp_cfg_offset == 0 || fw_ptp_cfg_offset == 0xFFFF)
-		return IXGBE_ERR_EEPROM_VERSION;
+		return -EACCES;
 
 	/* get the firmware version */
 	offset = fw_ptp_cfg_offset + IXGBE_FW_PATCH_VERSION_4;
@@ -1905,7 +1904,7 @@ static s32 ixgbe_verify_fw_version_82599(struct ixgbe_hw *hw)
 
 fw_version_err:
 	hw_err(hw, "eeprom read at offset %d failed\n", offset);
-	return IXGBE_ERR_EEPROM_VERSION;
+	return -EACCES;
 }
 
 /**
@@ -2038,7 +2037,7 @@ static s32 ixgbe_reset_pipeline_82599(struct ixgbe_hw *hw)
 
 	if (!(anlp1_reg & IXGBE_ANLP1_AN_STATE_MASK)) {
 		hw_dbg(hw, "auto negotiation not completed\n");
-		ret_val = IXGBE_ERR_RESET_FAILED;
+		ret_val = -EIO;
 		goto reset_pipeline_out;
 	}
 
@@ -2087,7 +2086,7 @@ static s32 ixgbe_read_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
 
 		if (!timeout) {
 			hw_dbg(hw, "Driver can't access resource, acquiring I2C bus timeout.\n");
-			status = IXGBE_ERR_I2C;
+			status = -EIO;
 			goto release_i2c_access;
 		}
 	}
@@ -2141,7 +2140,7 @@ static s32 ixgbe_write_i2c_byte_82599(struct ixgbe_hw *hw, u8 byte_offset,
 
 		if (!timeout) {
 			hw_dbg(hw, "Driver can't access resource, acquiring I2C bus timeout.\n");
-			status = IXGBE_ERR_I2C;
+			status = -EIO;
 			goto release_i2c_access;
 		}
 	}
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 878dd8dff528..67879a760688 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -124,7 +124,7 @@ s32 ixgbe_setup_fc_generic(struct ixgbe_hw *hw)
 	 */
 	if (hw->fc.strict_ieee && hw->fc.requested_mode == ixgbe_fc_rx_pause) {
 		hw_dbg(hw, "ixgbe_fc_rx_pause not valid in strict IEEE mode\n");
-		return IXGBE_ERR_INVALID_LINK_SETTINGS;
+		return -EINVAL;
 	}
 
 	/*
@@ -215,7 +215,7 @@ s32 ixgbe_setup_fc_generic(struct ixgbe_hw *hw)
 		break;
 	default:
 		hw_dbg(hw, "Flow control param set incorrectly\n");
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 	}
 
 	if (hw->mac.type != ixgbe_mac_X540) {
@@ -500,7 +500,7 @@ s32 ixgbe_read_pba_string_generic(struct ixgbe_hw *hw, u8 *pba_num,
 
 	if (pba_num == NULL) {
 		hw_dbg(hw, "PBA string buffer was null\n");
-		return IXGBE_ERR_INVALID_ARGUMENT;
+		return -EINVAL;
 	}
 
 	ret_val = hw->eeprom.ops.read(hw, IXGBE_PBANUM0_PTR, &data);
@@ -526,7 +526,7 @@ s32 ixgbe_read_pba_string_generic(struct ixgbe_hw *hw, u8 *pba_num,
 		/* we will need 11 characters to store the PBA */
 		if (pba_num_size < 11) {
 			hw_dbg(hw, "PBA string buffer too small\n");
-			return IXGBE_ERR_NO_SPACE;
+			return -ENOSPC;
 		}
 
 		/* extract hex string from data and pba_ptr */
@@ -563,13 +563,13 @@ s32 ixgbe_read_pba_string_generic(struct ixgbe_hw *hw, u8 *pba_num,
 
 	if (length == 0xFFFF || length == 0) {
 		hw_dbg(hw, "NVM PBA number section invalid length\n");
-		return IXGBE_ERR_PBA_SECTION;
+		return -EIO;
 	}
 
 	/* check if pba_num buffer is big enough */
 	if (pba_num_size  < (((u32)length * 2) - 1)) {
 		hw_dbg(hw, "PBA string buffer too small\n");
-		return IXGBE_ERR_NO_SPACE;
+		return -ENOSPC;
 	}
 
 	/* trim pba length from start of string */
@@ -805,7 +805,7 @@ s32 ixgbe_led_on_generic(struct ixgbe_hw *hw, u32 index)
 	u32 led_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);
 
 	if (index > 3)
-		return IXGBE_ERR_PARAM;
+		return -EINVAL;
 
 	/* To turn on the LED, set mode to ON. */
 	led_reg &= ~IXGBE_LED_MODE_MASK(index);
@@ -826,7 +826,7 @@ s32 ixgbe_led_off_generic(struct ixgbe_hw *hw, u32 index)
 	u32 led_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);
 
 	if (index > 3)
-		return IXGBE_ERR_PARAM;
+		return -EINVAL;
 
 	/* To turn off the LED, set mode to OFF. */
 	led_reg &= ~IXGBE_LED_MODE_MASK(index);
@@ -904,11 +904,8 @@ s32 ixgbe_write_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 
 	hw->eeprom.ops.init_params(hw);
 
-	if (words == 0)
-		return IXGBE_ERR_INVALID_ARGUMENT;
-
-	if (offset + words > hw->eeprom.word_size)
-		return IXGBE_ERR_EEPROM;
+	if (words == 0 || (offset + words > hw->eeprom.word_size))
+		return -EINVAL;
 
 	/*
 	 * The EEPROM page size cannot be queried from the chip. We do lazy
@@ -962,7 +959,7 @@ static s32 ixgbe_write_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
 
 	if (ixgbe_ready_eeprom(hw) != 0) {
 		ixgbe_release_eeprom(hw);
-		return IXGBE_ERR_EEPROM;
+		return -EIO;
 	}
 
 	for (i = 0; i < words; i++) {
@@ -1028,7 +1025,7 @@ s32 ixgbe_write_eeprom_generic(struct ixgbe_hw *hw, u16 offset, u16 data)
 	hw->eeprom.ops.init_params(hw);
 
 	if (offset >= hw->eeprom.word_size)
-		return IXGBE_ERR_EEPROM;
+		return -EINVAL;
 
 	return ixgbe_write_eeprom_buffer_bit_bang(hw, offset, 1, &data);
 }
@@ -1050,11 +1047,8 @@ s32 ixgbe_read_eeprom_buffer_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 
 	hw->eeprom.ops.init_params(hw);
 
-	if (words == 0)
-		return IXGBE_ERR_INVALID_ARGUMENT;
-
-	if (offset + words > hw->eeprom.word_size)
-		return IXGBE_ERR_EEPROM;
+	if (words == 0 || (offset + words > hw->eeprom.word_size))
+		return -EINVAL;
 
 	/*
 	 * We cannot hold synchronization semaphores for too long
@@ -1099,7 +1093,7 @@ static s32 ixgbe_read_eeprom_buffer_bit_bang(struct ixgbe_hw *hw, u16 offset,
 
 	if (ixgbe_ready_eeprom(hw) != 0) {
 		ixgbe_release_eeprom(hw);
-		return IXGBE_ERR_EEPROM;
+		return -EIO;
 	}
 
 	for (i = 0; i < words; i++) {
@@ -1142,7 +1136,7 @@ s32 ixgbe_read_eeprom_bit_bang_generic(struct ixgbe_hw *hw, u16 offset,
 	hw->eeprom.ops.init_params(hw);
 
 	if (offset >= hw->eeprom.word_size)
-		return IXGBE_ERR_EEPROM;
+		return -EINVAL;
 
 	return ixgbe_read_eeprom_buffer_bit_bang(hw, offset, 1, data);
 }
@@ -1165,11 +1159,8 @@ s32 ixgbe_read_eerd_buffer_generic(struct ixgbe_hw *hw, u16 offset,
 
 	hw->eeprom.ops.init_params(hw);
 
-	if (words == 0)
-		return IXGBE_ERR_INVALID_ARGUMENT;
-
-	if (offset >= hw->eeprom.word_size)
-		return IXGBE_ERR_EEPROM;
+	if (words == 0 || offset >= hw->eeprom.word_size)
+		return -EINVAL;
 
 	for (i = 0; i < words; i++) {
 		eerd = ((offset + i) << IXGBE_EEPROM_RW_ADDR_SHIFT) |
@@ -1262,11 +1253,8 @@ s32 ixgbe_write_eewr_buffer_generic(struct ixgbe_hw *hw, u16 offset,
 
 	hw->eeprom.ops.init_params(hw);
 
-	if (words == 0)
-		return IXGBE_ERR_INVALID_ARGUMENT;
-
-	if (offset >= hw->eeprom.word_size)
-		return IXGBE_ERR_EEPROM;
+	if (words == 0 || offset >= hw->eeprom.word_size)
+		return -EINVAL;
 
 	for (i = 0; i < words; i++) {
 		eewr = ((offset + i) << IXGBE_EEPROM_RW_ADDR_SHIFT) |
@@ -1328,7 +1316,7 @@ static s32 ixgbe_poll_eerd_eewr_done(struct ixgbe_hw *hw, u32 ee_reg)
 		}
 		udelay(5);
 	}
-	return IXGBE_ERR_EEPROM;
+	return -EIO;
 }
 
 /**
@@ -1344,7 +1332,7 @@ static s32 ixgbe_acquire_eeprom(struct ixgbe_hw *hw)
 	u32 i;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM) != 0)
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 
 	eec = IXGBE_READ_REG(hw, IXGBE_EEC(hw));
 
@@ -1366,7 +1354,7 @@ static s32 ixgbe_acquire_eeprom(struct ixgbe_hw *hw)
 		hw_dbg(hw, "Could not acquire EEPROM grant\n");
 
 		hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);
-		return IXGBE_ERR_EEPROM;
+		return -EIO;
 	}
 
 	/* Setup EEPROM for Read/Write */
@@ -1419,7 +1407,7 @@ static s32 ixgbe_get_eeprom_semaphore(struct ixgbe_hw *hw)
 		swsm = IXGBE_READ_REG(hw, IXGBE_SWSM(hw));
 		if (swsm & IXGBE_SWSM_SMBI) {
 			hw_dbg(hw, "Software semaphore SMBI between device drivers not granted.\n");
-			return IXGBE_ERR_EEPROM;
+			return -EIO;
 		}
 	}
 
@@ -1447,7 +1435,7 @@ static s32 ixgbe_get_eeprom_semaphore(struct ixgbe_hw *hw)
 	if (i >= timeout) {
 		hw_dbg(hw, "SWESMBI Software EEPROM semaphore not granted.\n");
 		ixgbe_release_eeprom_semaphore(hw);
-		return IXGBE_ERR_EEPROM;
+		return -EIO;
 	}
 
 	return 0;
@@ -1503,7 +1491,7 @@ static s32 ixgbe_ready_eeprom(struct ixgbe_hw *hw)
 	 */
 	if (i >= IXGBE_EEPROM_MAX_RETRY_SPI) {
 		hw_dbg(hw, "SPI EEPROM Status error\n");
-		return IXGBE_ERR_EEPROM;
+		return -EIO;
 	}
 
 	return 0;
@@ -1715,7 +1703,7 @@ s32 ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw)
 	for (i = IXGBE_PCIE_ANALOG_PTR; i < IXGBE_FW_PTR; i++) {
 		if (hw->eeprom.ops.read(hw, i, &pointer)) {
 			hw_dbg(hw, "EEPROM read failed\n");
-			return IXGBE_ERR_EEPROM;
+			return -EIO;
 		}
 
 		/* If the pointer seems invalid */
@@ -1724,7 +1712,7 @@ s32 ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw)
 
 		if (hw->eeprom.ops.read(hw, pointer, &length)) {
 			hw_dbg(hw, "EEPROM read failed\n");
-			return IXGBE_ERR_EEPROM;
+			return -EIO;
 		}
 
 		if (length == 0xFFFF || length == 0)
@@ -1733,7 +1721,7 @@ s32 ixgbe_calc_eeprom_checksum_generic(struct ixgbe_hw *hw)
 		for (j = pointer + 1; j <= pointer + length; j++) {
 			if (hw->eeprom.ops.read(hw, j, &word)) {
 				hw_dbg(hw, "EEPROM read failed\n");
-				return IXGBE_ERR_EEPROM;
+				return -EIO;
 			}
 			checksum += word;
 		}
@@ -1786,7 +1774,7 @@ s32 ixgbe_validate_eeprom_checksum_generic(struct ixgbe_hw *hw,
 	 * calculated checksum
 	 */
 	if (read_checksum != checksum)
-		status = IXGBE_ERR_EEPROM_CHECKSUM;
+		status = -EIO;
 
 	/* If the user cares, return the calculated checksum */
 	if (checksum_val)
@@ -1845,7 +1833,7 @@ s32 ixgbe_set_rar_generic(struct ixgbe_hw *hw, u32 index, u8 *addr, u32 vmdq,
 	/* Make sure we are using a valid rar index range */
 	if (index >= rar_entries) {
 		hw_dbg(hw, "RAR index %d is out of range.\n", index);
-		return IXGBE_ERR_INVALID_ARGUMENT;
+		return -EINVAL;
 	}
 
 	/* setup VMDq pool selection before this RAR gets enabled */
@@ -1897,7 +1885,7 @@ s32 ixgbe_clear_rar_generic(struct ixgbe_hw *hw, u32 index)
 	/* Make sure we are using a valid rar index range */
 	if (index >= rar_entries) {
 		hw_dbg(hw, "RAR index %d is out of range.\n", index);
-		return IXGBE_ERR_INVALID_ARGUMENT;
+		return -EINVAL;
 	}
 
 	/*
@@ -2146,7 +2134,7 @@ s32 ixgbe_fc_enable_generic(struct ixgbe_hw *hw)
 
 	/* Validate the water mark configuration. */
 	if (!hw->fc.pause_time)
-		return IXGBE_ERR_INVALID_LINK_SETTINGS;
+		return -EINVAL;
 
 	/* Low water mark of zero causes XOFF floods */
 	for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
@@ -2155,7 +2143,7 @@ s32 ixgbe_fc_enable_generic(struct ixgbe_hw *hw)
 			if (!hw->fc.low_water[i] ||
 			    hw->fc.low_water[i] >= hw->fc.high_water[i]) {
 				hw_dbg(hw, "Invalid water mark configuration\n");
-				return IXGBE_ERR_INVALID_LINK_SETTINGS;
+				return -EINVAL;
 			}
 		}
 	}
@@ -2212,7 +2200,7 @@ s32 ixgbe_fc_enable_generic(struct ixgbe_hw *hw)
 		break;
 	default:
 		hw_dbg(hw, "Flow control param set incorrectly\n");
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 	}
 
 	/* Set 802.3x based flow control settings. */
@@ -2269,7 +2257,7 @@ s32 ixgbe_negotiate_fc(struct ixgbe_hw *hw, u32 adv_reg, u32 lp_reg,
 		       u32 adv_sym, u32 adv_asm, u32 lp_sym, u32 lp_asm)
 {
 	if ((!(adv_reg)) ||  (!(lp_reg)))
-		return IXGBE_ERR_FC_NOT_NEGOTIATED;
+		return -EINVAL;
 
 	if ((adv_reg & adv_sym) && (lp_reg & lp_sym)) {
 		/*
@@ -2321,7 +2309,7 @@ static s32 ixgbe_fc_autoneg_fiber(struct ixgbe_hw *hw)
 	linkstat = IXGBE_READ_REG(hw, IXGBE_PCS1GLSTA);
 	if ((!!(linkstat & IXGBE_PCS1GLSTA_AN_COMPLETE) == 0) ||
 	    (!!(linkstat & IXGBE_PCS1GLSTA_AN_TIMED_OUT) == 1))
-		return IXGBE_ERR_FC_NOT_NEGOTIATED;
+		return -EIO;
 
 	pcs_anadv_reg = IXGBE_READ_REG(hw, IXGBE_PCS1GANA);
 	pcs_lpab_reg = IXGBE_READ_REG(hw, IXGBE_PCS1GANLP);
@@ -2353,12 +2341,12 @@ static s32 ixgbe_fc_autoneg_backplane(struct ixgbe_hw *hw)
 	 */
 	links = IXGBE_READ_REG(hw, IXGBE_LINKS);
 	if ((links & IXGBE_LINKS_KX_AN_COMP) == 0)
-		return IXGBE_ERR_FC_NOT_NEGOTIATED;
+		return -EIO;
 
 	if (hw->mac.type == ixgbe_mac_82599EB) {
 		links2 = IXGBE_READ_REG(hw, IXGBE_LINKS2);
 		if ((links2 & IXGBE_LINKS2_AN_SUPPORTED) == 0)
-			return IXGBE_ERR_FC_NOT_NEGOTIATED;
+			return -EIO;
 	}
 	/*
 	 * Read the 10g AN autoc and LP ability registers and resolve
@@ -2407,8 +2395,8 @@ static s32 ixgbe_fc_autoneg_copper(struct ixgbe_hw *hw)
  **/
 void ixgbe_fc_autoneg(struct ixgbe_hw *hw)
 {
-	s32 ret_val = IXGBE_ERR_FC_NOT_NEGOTIATED;
 	ixgbe_link_speed speed;
+	s32 ret_val = -EIO;
 	bool link_up;
 
 	/*
@@ -2510,7 +2498,7 @@ static u32 ixgbe_pcie_timeout_poll(struct ixgbe_hw *hw)
  *  @hw: pointer to hardware structure
  *
  *  Disables PCI-Express primary access and verifies there are no pending
- *  requests. IXGBE_ERR_PRIMARY_REQUESTS_PENDING is returned if primary disable
+ *  requests. -EALREADY is returned if primary disable
  *  bit hasn't caused the primary requests to be disabled, else 0
  *  is returned signifying primary requests disabled.
  **/
@@ -2575,7 +2563,7 @@ static s32 ixgbe_disable_pcie_primary(struct ixgbe_hw *hw)
 	}
 
 	hw_dbg(hw, "PCIe transaction pending bit also did not clear.\n");
-	return IXGBE_ERR_PRIMARY_REQUESTS_PENDING;
+	return -EALREADY;
 }
 
 /**
@@ -2600,7 +2588,7 @@ s32 ixgbe_acquire_swfw_sync(struct ixgbe_hw *hw, u32 mask)
 		 * SW_FW_SYNC bits (not just NVM)
 		 */
 		if (ixgbe_get_eeprom_semaphore(hw))
-			return IXGBE_ERR_SWFW_SYNC;
+			return -EBUSY;
 
 		gssr = IXGBE_READ_REG(hw, IXGBE_GSSR);
 		if (!(gssr & (fwmask | swmask))) {
@@ -2620,7 +2608,7 @@ s32 ixgbe_acquire_swfw_sync(struct ixgbe_hw *hw, u32 mask)
 		ixgbe_release_swfw_sync(hw, gssr & (fwmask | swmask));
 
 	usleep_range(5000, 10000);
-	return IXGBE_ERR_SWFW_SYNC;
+	return -EBUSY;
 }
 
 /**
@@ -2757,7 +2745,7 @@ s32 ixgbe_blink_led_start_generic(struct ixgbe_hw *hw, u32 index)
 	s32 ret_val;
 
 	if (index > 3)
-		return IXGBE_ERR_PARAM;
+		return -EINVAL;
 
 	/*
 	 * Link must be up to auto-blink the LEDs;
@@ -2803,7 +2791,7 @@ s32 ixgbe_blink_led_stop_generic(struct ixgbe_hw *hw, u32 index)
 	s32 ret_val;
 
 	if (index > 3)
-		return IXGBE_ERR_PARAM;
+		return -EINVAL;
 
 	ret_val = hw->mac.ops.prot_autoc_read(hw, &locked, &autoc_reg);
 	if (ret_val)
@@ -2963,7 +2951,7 @@ s32 ixgbe_clear_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
 	/* Make sure we are using a valid rar index range */
 	if (rar >= rar_entries) {
 		hw_dbg(hw, "RAR index %d is out of range.\n", rar);
-		return IXGBE_ERR_INVALID_ARGUMENT;
+		return -EINVAL;
 	}
 
 	mpsar_lo = IXGBE_READ_REG(hw, IXGBE_MPSAR_LO(rar));
@@ -3014,7 +3002,7 @@ s32 ixgbe_set_vmdq_generic(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
 	/* Make sure we are using a valid rar index range */
 	if (rar >= rar_entries) {
 		hw_dbg(hw, "RAR index %d is out of range.\n", rar);
-		return IXGBE_ERR_INVALID_ARGUMENT;
+		return -EINVAL;
 	}
 
 	if (vmdq < 32) {
@@ -3091,7 +3079,7 @@ static s32 ixgbe_find_vlvf_slot(struct ixgbe_hw *hw, u32 vlan, bool vlvf_bypass)
 	 * will simply bypass the VLVF if there are no entries present in the
 	 * VLVF that contain our VLAN
 	 */
-	first_empty_slot = vlvf_bypass ? IXGBE_ERR_NO_SPACE : 0;
+	first_empty_slot = vlvf_bypass ? -ENOSPC : 0;
 
 	/* add VLAN enable bit for comparison */
 	vlan |= IXGBE_VLVF_VIEN;
@@ -3115,7 +3103,7 @@ static s32 ixgbe_find_vlvf_slot(struct ixgbe_hw *hw, u32 vlan, bool vlvf_bypass)
 	if (!first_empty_slot)
 		hw_dbg(hw, "No space in VLVF.\n");
 
-	return first_empty_slot ? : IXGBE_ERR_NO_SPACE;
+	return first_empty_slot ? : -ENOSPC;
 }
 
 /**
@@ -3135,7 +3123,7 @@ s32 ixgbe_set_vfta_generic(struct ixgbe_hw *hw, u32 vlan, u32 vind,
 	s32 vlvf_index;
 
 	if ((vlan > 4095) || (vind > 63))
-		return IXGBE_ERR_PARAM;
+		return -EINVAL;
 
 	/*
 	 * this is a 2 part operation - first the VFTA, then the
@@ -3611,7 +3599,8 @@ u8 ixgbe_calculate_checksum(u8 *buffer, u32 length)
  *
  *  Communicates with the manageability block. On success return 0
  *  else returns semaphore error when encountering an error acquiring
- *  semaphore or IXGBE_ERR_HOST_INTERFACE_COMMAND when command fails.
+ *  semaphore, -EINVAL when incorrect patameters passed or -EIO when
+ *  command fails.
  *
  *  This function assumes that the IXGBE_GSSR_SW_MNG_SM semaphore is held
  *  by the caller.
@@ -3624,7 +3613,7 @@ s32 ixgbe_hic_unlocked(struct ixgbe_hw *hw, u32 *buffer, u32 length,
 
 	if (!length || length > IXGBE_HI_MAX_BLOCK_BYTE_LENGTH) {
 		hw_dbg(hw, "Buffer length failure buffersize-%d.\n", length);
-		return IXGBE_ERR_HOST_INTERFACE_COMMAND;
+		return -EINVAL;
 	}
 
 	/* Set bit 9 of FWSTS clearing FW reset indication */
@@ -3635,13 +3624,13 @@ s32 ixgbe_hic_unlocked(struct ixgbe_hw *hw, u32 *buffer, u32 length,
 	hicr = IXGBE_READ_REG(hw, IXGBE_HICR);
 	if (!(hicr & IXGBE_HICR_EN)) {
 		hw_dbg(hw, "IXGBE_HOST_EN bit disabled.\n");
-		return IXGBE_ERR_HOST_INTERFACE_COMMAND;
+		return -EIO;
 	}
 
 	/* Calculate length in DWORDs. We must be DWORD aligned */
 	if (length % sizeof(u32)) {
 		hw_dbg(hw, "Buffer length failure, not aligned to dword");
-		return IXGBE_ERR_INVALID_ARGUMENT;
+		return -EINVAL;
 	}
 
 	dword_len = length >> 2;
@@ -3666,7 +3655,7 @@ s32 ixgbe_hic_unlocked(struct ixgbe_hw *hw, u32 *buffer, u32 length,
 	/* Check command successful completion. */
 	if ((timeout && i == timeout) ||
 	    !(IXGBE_READ_REG(hw, IXGBE_HICR) & IXGBE_HICR_SV))
-		return IXGBE_ERR_HOST_INTERFACE_COMMAND;
+		return -EIO;
 
 	return 0;
 }
@@ -3686,7 +3675,7 @@ s32 ixgbe_hic_unlocked(struct ixgbe_hw *hw, u32 *buffer, u32 length,
  *  in these cases.
  *
  *  Communicates with the manageability block.  On success return 0
- *  else return IXGBE_ERR_HOST_INTERFACE_COMMAND.
+ *  else return -EIO or -EINVAL.
  **/
 s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
 				 u32 length, u32 timeout,
@@ -3701,7 +3690,7 @@ s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
 
 	if (!length || length > IXGBE_HI_MAX_BLOCK_BYTE_LENGTH) {
 		hw_dbg(hw, "Buffer length failure buffersize-%d.\n", length);
-		return IXGBE_ERR_HOST_INTERFACE_COMMAND;
+		return -EINVAL;
 	}
 	/* Take management host interface semaphore */
 	status = hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_SW_MNG_SM);
@@ -3731,7 +3720,7 @@ s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
 
 	if (length < round_up(buf_len, 4) + hdr_size) {
 		hw_dbg(hw, "Buffer not large enough for reply message.\n");
-		status = IXGBE_ERR_HOST_INTERFACE_COMMAND;
+		status = -EIO;
 		goto rel_out;
 	}
 
@@ -3762,8 +3751,8 @@ s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, void *buffer,
  *
  *  Sends driver version number to firmware through the manageability
  *  block.  On success return 0
- *  else returns IXGBE_ERR_SWFW_SYNC when encountering an error acquiring
- *  semaphore or IXGBE_ERR_HOST_INTERFACE_COMMAND when command fails.
+ *  else returns -EBUSY when encountering an error acquiring
+ *  semaphore or -EIO when command fails.
  **/
 s32 ixgbe_set_fw_drv_ver_generic(struct ixgbe_hw *hw, u8 maj, u8 min,
 				 u8 build, u8 sub, __always_unused u16 len,
@@ -3799,7 +3788,7 @@ s32 ixgbe_set_fw_drv_ver_generic(struct ixgbe_hw *hw, u8 maj, u8 min,
 		    FW_CEM_RESP_STATUS_SUCCESS)
 			ret_val = 0;
 		else
-			ret_val = IXGBE_ERR_HOST_INTERFACE_COMMAND;
+			ret_val = -EIO;
 
 		break;
 	}
@@ -3897,14 +3886,14 @@ static s32 ixgbe_get_ets_data(struct ixgbe_hw *hw, u16 *ets_cfg,
 		return status;
 
 	if ((*ets_offset == 0x0000) || (*ets_offset == 0xFFFF))
-		return IXGBE_NOT_IMPLEMENTED;
+		return -ENOSYS;
 
 	status = hw->eeprom.ops.read(hw, *ets_offset, ets_cfg);
 	if (status)
 		return status;
 
 	if ((*ets_cfg & IXGBE_ETS_TYPE_MASK) != IXGBE_ETS_TYPE_EMC_SHIFTED)
-		return IXGBE_NOT_IMPLEMENTED;
+		return -ENOSYS;
 
 	return 0;
 }
@@ -3927,7 +3916,7 @@ s32 ixgbe_get_thermal_sensor_data_generic(struct ixgbe_hw *hw)
 
 	/* Only support thermal sensors attached to physical port 0 */
 	if ((IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_LAN_ID_1))
-		return IXGBE_NOT_IMPLEMENTED;
+		return -ENOSYS;
 
 	status = ixgbe_get_ets_data(hw, &ets_cfg, &ets_offset);
 	if (status)
@@ -3987,7 +3976,7 @@ s32 ixgbe_init_thermal_sensor_thresh_generic(struct ixgbe_hw *hw)
 
 	/* Only support thermal sensors attached to physical port 0 */
 	if ((IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_LAN_ID_1))
-		return IXGBE_NOT_IMPLEMENTED;
+		return -ENOSYS;
 
 	status = ixgbe_get_ets_data(hw, &ets_cfg, &ets_offset);
 	if (status)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 0bbad4a5cc2f..9f2820a08b72 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3370,7 +3370,7 @@ static int ixgbe_get_module_eeprom(struct net_device *dev,
 {
 	struct ixgbe_adapter *adapter = netdev_priv(dev);
 	struct ixgbe_hw *hw = &adapter->hw;
-	s32 status = IXGBE_ERR_PHY_ADDR_INVALID;
+	s32 status = -EFAULT;
 	u8 databyte = 0xFF;
 	int i = 0;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 57e7e044fb85..33a42138f6b0 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -5514,7 +5514,7 @@ static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
 {
 	u32 speed;
 	bool autoneg, link_up = false;
-	int ret = IXGBE_ERR_LINK_SETUP;
+	int ret = -EIO;
 
 	if (hw->mac.ops.check_link)
 		ret = hw->mac.ops.check_link(hw, &speed, &link_up, false);
@@ -5985,13 +5985,13 @@ void ixgbe_reset(struct ixgbe_adapter *adapter)
 	err = hw->mac.ops.init_hw(hw);
 	switch (err) {
 	case 0:
-	case IXGBE_ERR_SFP_NOT_PRESENT:
-	case IXGBE_ERR_SFP_NOT_SUPPORTED:
+	case -ENOENT:
+	case -EOPNOTSUPP:
 		break;
-	case IXGBE_ERR_PRIMARY_REQUESTS_PENDING:
+	case -EALREADY:
 		e_dev_err("primary disable timed out\n");
 		break;
-	case IXGBE_ERR_EEPROM_VERSION:
+	case -EACCES:
 		/* We are running on a pre-production device, log a warning */
 		e_dev_warn("This device is a pre-production adapter/LOM. "
 			   "Please be aware there may be issues associated with "
@@ -7831,10 +7831,10 @@ static void ixgbe_sfp_detection_subtask(struct ixgbe_adapter *adapter)
 	adapter->sfp_poll_time = jiffies + IXGBE_SFP_POLL_JIFFIES - 1;
 
 	err = hw->phy.ops.identify_sfp(hw);
-	if (err == IXGBE_ERR_SFP_NOT_SUPPORTED)
+	if (err == -EOPNOTSUPP)
 		goto sfp_out;
 
-	if (err == IXGBE_ERR_SFP_NOT_PRESENT) {
+	if (err == -ENOENT) {
 		/* If no cable is present, then we need to reset
 		 * the next time we find a good cable. */
 		adapter->flags2 |= IXGBE_FLAG2_SFP_NEEDS_RESET;
@@ -7860,7 +7860,7 @@ static void ixgbe_sfp_detection_subtask(struct ixgbe_adapter *adapter)
 	else
 		err = hw->mac.ops.setup_sfp(hw);
 
-	if (err == IXGBE_ERR_SFP_NOT_SUPPORTED)
+	if (err == -EOPNOTSUPP)
 		goto sfp_out;
 
 	adapter->flags |= IXGBE_FLAG_NEED_LINK_CONFIG;
@@ -7869,8 +7869,8 @@ static void ixgbe_sfp_detection_subtask(struct ixgbe_adapter *adapter)
 sfp_out:
 	clear_bit(__IXGBE_IN_SFP_INIT, &adapter->state);
 
-	if ((err == IXGBE_ERR_SFP_NOT_SUPPORTED) &&
-	    (adapter->netdev->reg_state == NETREG_REGISTERED)) {
+	if (err == -EOPNOTSUPP &&
+	    adapter->netdev->reg_state == NETREG_REGISTERED) {
 		e_dev_err("failed to initialize because an unsupported "
 			  "SFP+ module type was detected.\n");
 		e_dev_err("Reload the driver after installing a "
@@ -10925,9 +10925,9 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	err = hw->mac.ops.reset_hw(hw);
 	hw->phy.reset_if_overtemp = false;
 	ixgbe_set_eee_capable(adapter);
-	if (err == IXGBE_ERR_SFP_NOT_PRESENT) {
+	if (err == -ENOENT) {
 		err = 0;
-	} else if (err == IXGBE_ERR_SFP_NOT_SUPPORTED) {
+	} else if (err == -EOPNOTSUPP) {
 		e_dev_err("failed to load because an unsupported SFP+ or QSFP module type was detected.\n");
 		e_dev_err("Reload the driver after installing a supported module.\n");
 		goto err_sw_init;
@@ -11146,7 +11146,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	/* reset the hardware with the new settings */
 	err = hw->mac.ops.start_hw(hw);
-	if (err == IXGBE_ERR_EEPROM_VERSION) {
+	if (err == -EACCES) {
 		/* We are running on a pre-production device, log a warning */
 		e_dev_warn("This device is a pre-production adapter/LOM. "
 			   "Please be aware there may be issues associated "
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c
index 5679293e53f7..fe7ef5773369 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c
@@ -24,7 +24,7 @@ s32 ixgbe_read_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size, u16 mbx_id)
 		size = mbx->size;
 
 	if (!mbx->ops)
-		return IXGBE_ERR_MBX;
+		return -EIO;
 
 	return mbx->ops->read(hw, msg, size, mbx_id);
 }
@@ -43,10 +43,10 @@ s32 ixgbe_write_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size, u16 mbx_id)
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 
 	if (size > mbx->size)
-		return IXGBE_ERR_MBX;
+		return -EINVAL;
 
 	if (!mbx->ops)
-		return IXGBE_ERR_MBX;
+		return -EIO;
 
 	return mbx->ops->write(hw, msg, size, mbx_id);
 }
@@ -63,7 +63,7 @@ s32 ixgbe_check_for_msg(struct ixgbe_hw *hw, u16 mbx_id)
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 
 	if (!mbx->ops)
-		return IXGBE_ERR_MBX;
+		return -EIO;
 
 	return mbx->ops->check_for_msg(hw, mbx_id);
 }
@@ -80,7 +80,7 @@ s32 ixgbe_check_for_ack(struct ixgbe_hw *hw, u16 mbx_id)
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 
 	if (!mbx->ops)
-		return IXGBE_ERR_MBX;
+		return -EIO;
 
 	return mbx->ops->check_for_ack(hw, mbx_id);
 }
@@ -97,7 +97,7 @@ s32 ixgbe_check_for_rst(struct ixgbe_hw *hw, u16 mbx_id)
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 
 	if (!mbx->ops)
-		return IXGBE_ERR_MBX;
+		return -EIO;
 
 	return mbx->ops->check_for_rst(hw, mbx_id);
 }
@@ -115,12 +115,12 @@ static s32 ixgbe_poll_for_msg(struct ixgbe_hw *hw, u16 mbx_id)
 	int countdown = mbx->timeout;
 
 	if (!countdown || !mbx->ops)
-		return IXGBE_ERR_MBX;
+		return -EIO;
 
 	while (mbx->ops->check_for_msg(hw, mbx_id)) {
 		countdown--;
 		if (!countdown)
-			return IXGBE_ERR_MBX;
+			return -EIO;
 		udelay(mbx->usec_delay);
 	}
 
@@ -140,12 +140,12 @@ static s32 ixgbe_poll_for_ack(struct ixgbe_hw *hw, u16 mbx_id)
 	int countdown = mbx->timeout;
 
 	if (!countdown || !mbx->ops)
-		return IXGBE_ERR_MBX;
+		return -EIO;
 
 	while (mbx->ops->check_for_ack(hw, mbx_id)) {
 		countdown--;
 		if (!countdown)
-			return IXGBE_ERR_MBX;
+			return -EIO;
 		udelay(mbx->usec_delay);
 	}
 
@@ -169,7 +169,7 @@ static s32 ixgbe_read_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size,
 	s32 ret_val;
 
 	if (!mbx->ops)
-		return IXGBE_ERR_MBX;
+		return -EIO;
 
 	ret_val = ixgbe_poll_for_msg(hw, mbx_id);
 	if (ret_val)
@@ -197,7 +197,7 @@ static s32 ixgbe_write_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size,
 
 	/* exit if either we can't write or there isn't a defined timeout */
 	if (!mbx->ops || !mbx->timeout)
-		return IXGBE_ERR_MBX;
+		return -EIO;
 
 	/* send msg */
 	ret_val = mbx->ops->write(hw, msg, size, mbx_id);
@@ -217,7 +217,7 @@ static s32 ixgbe_check_for_bit_pf(struct ixgbe_hw *hw, u32 mask, s32 index)
 		return 0;
 	}
 
-	return IXGBE_ERR_MBX;
+	return -EIO;
 }
 
 /**
@@ -238,7 +238,7 @@ static s32 ixgbe_check_for_msg_pf(struct ixgbe_hw *hw, u16 vf_number)
 		return 0;
 	}
 
-	return IXGBE_ERR_MBX;
+	return -EIO;
 }
 
 /**
@@ -259,7 +259,7 @@ static s32 ixgbe_check_for_ack_pf(struct ixgbe_hw *hw, u16 vf_number)
 		return 0;
 	}
 
-	return IXGBE_ERR_MBX;
+	return -EIO;
 }
 
 /**
@@ -295,7 +295,7 @@ static s32 ixgbe_check_for_rst_pf(struct ixgbe_hw *hw, u16 vf_number)
 		return 0;
 	}
 
-	return IXGBE_ERR_MBX;
+	return -EIO;
 }
 
 /**
@@ -317,7 +317,7 @@ static s32 ixgbe_obtain_mbx_lock_pf(struct ixgbe_hw *hw, u16 vf_number)
 	if (p2v_mailbox & IXGBE_PFMAILBOX_PFU)
 		return 0;
 
-	return IXGBE_ERR_MBX;
+	return -EIO;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
index 8f4316b19278..6434c190e7a4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
@@ -7,7 +7,6 @@
 #include "ixgbe_type.h"
 
 #define IXGBE_VFMAILBOX_SIZE        16 /* 16 32 bit words - 64 bytes */
-#define IXGBE_ERR_MBX               -100
 
 #define IXGBE_VFMAILBOX             0x002FC
 #define IXGBE_VFMBMEM               0x00200
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index b2c8bc63fbb7..716a8630fdc6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -102,7 +102,7 @@ s32 ixgbe_read_i2c_combined_generic_int(struct ixgbe_hw *hw, u8 addr,
 	csum = ~csum;
 	do {
 		if (lock && hw->mac.ops.acquire_swfw_sync(hw, swfw_mask))
-			return IXGBE_ERR_SWFW_SYNC;
+			return -EBUSY;
 		ixgbe_i2c_start(hw);
 		/* Device Address and write indication */
 		if (ixgbe_out_i2c_byte_ack(hw, addr))
@@ -150,7 +150,7 @@ s32 ixgbe_read_i2c_combined_generic_int(struct ixgbe_hw *hw, u8 addr,
 			hw_dbg(hw, "I2C byte read combined error.\n");
 	} while (retry < max_retry);
 
-	return IXGBE_ERR_I2C;
+	return -EIO;
 }
 
 /**
@@ -179,7 +179,7 @@ s32 ixgbe_write_i2c_combined_generic_int(struct ixgbe_hw *hw, u8 addr,
 	csum = ~csum;
 	do {
 		if (lock && hw->mac.ops.acquire_swfw_sync(hw, swfw_mask))
-			return IXGBE_ERR_SWFW_SYNC;
+			return -EBUSY;
 		ixgbe_i2c_start(hw);
 		/* Device Address and write indication */
 		if (ixgbe_out_i2c_byte_ack(hw, addr))
@@ -215,7 +215,7 @@ s32 ixgbe_write_i2c_combined_generic_int(struct ixgbe_hw *hw, u8 addr,
 			hw_dbg(hw, "I2C byte write combined error.\n");
 	} while (retry < max_retry);
 
-	return IXGBE_ERR_I2C;
+	return -EIO;
 }
 
 /**
@@ -262,8 +262,8 @@ static bool ixgbe_probe_phy(struct ixgbe_hw *hw, u16 phy_addr)
  **/
 s32 ixgbe_identify_phy_generic(struct ixgbe_hw *hw)
 {
+	u32 status = -EFAULT;
 	u32 phy_addr;
-	u32 status = IXGBE_ERR_PHY_ADDR_INVALID;
 
 	if (!hw->phy.phy_semaphore_mask) {
 		if (hw->bus.lan_id)
@@ -282,7 +282,7 @@ s32 ixgbe_identify_phy_generic(struct ixgbe_hw *hw)
 		if (ixgbe_probe_phy(hw, phy_addr))
 			return 0;
 		else
-			return IXGBE_ERR_PHY_ADDR_INVALID;
+			return -EFAULT;
 	}
 
 	for (phy_addr = 0; phy_addr < IXGBE_MAX_PHY_ADDR; phy_addr++) {
@@ -461,7 +461,7 @@ s32 ixgbe_reset_phy_generic(struct ixgbe_hw *hw)
 
 	if (ctrl & MDIO_CTRL1_RESET) {
 		hw_dbg(hw, "PHY reset polling failed to complete.\n");
-		return IXGBE_ERR_RESET_FAILED;
+		return -EIO;
 	}
 
 	return 0;
@@ -504,7 +504,7 @@ s32 ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr, u32 device_type,
 
 	if ((command & IXGBE_MSCA_MDI_COMMAND) != 0) {
 		hw_dbg(hw, "PHY address command did not complete.\n");
-		return IXGBE_ERR_PHY;
+		return -EIO;
 	}
 
 	/* Address cycle complete, setup and write the read
@@ -531,7 +531,7 @@ s32 ixgbe_read_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr, u32 device_type,
 
 	if ((command & IXGBE_MSCA_MDI_COMMAND) != 0) {
 		hw_dbg(hw, "PHY read command didn't complete\n");
-		return IXGBE_ERR_PHY;
+		return -EIO;
 	}
 
 	/* Read operation is complete.  Get the data
@@ -563,7 +563,7 @@ s32 ixgbe_read_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
 						phy_data);
 		hw->mac.ops.release_swfw_sync(hw, gssr);
 	} else {
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 	}
 
 	return status;
@@ -608,7 +608,7 @@ s32 ixgbe_write_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr,
 
 	if ((command & IXGBE_MSCA_MDI_COMMAND) != 0) {
 		hw_dbg(hw, "PHY address cmd didn't complete\n");
-		return IXGBE_ERR_PHY;
+		return -EIO;
 	}
 
 	/*
@@ -636,7 +636,7 @@ s32 ixgbe_write_phy_reg_mdi(struct ixgbe_hw *hw, u32 reg_addr,
 
 	if ((command & IXGBE_MSCA_MDI_COMMAND) != 0) {
 		hw_dbg(hw, "PHY write cmd didn't complete\n");
-		return IXGBE_ERR_PHY;
+		return -EIO;
 	}
 
 	return 0;
@@ -661,7 +661,7 @@ s32 ixgbe_write_phy_reg_generic(struct ixgbe_hw *hw, u32 reg_addr,
 						 phy_data);
 		hw->mac.ops.release_swfw_sync(hw, gssr);
 	} else {
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 	}
 
 	return status;
@@ -1434,7 +1434,7 @@ s32 ixgbe_reset_phy_nl(struct ixgbe_hw *hw)
 
 	if ((phy_data & MDIO_CTRL1_RESET) != 0) {
 		hw_dbg(hw, "PHY reset did not complete.\n");
-		return IXGBE_ERR_PHY;
+		return -EIO;
 	}
 
 	/* Get init offsets */
@@ -1491,12 +1491,12 @@ s32 ixgbe_reset_phy_nl(struct ixgbe_hw *hw)
 				hw_dbg(hw, "SOL\n");
 			} else {
 				hw_dbg(hw, "Bad control value\n");
-				return IXGBE_ERR_PHY;
+				return -EIO;
 			}
 			break;
 		default:
 			hw_dbg(hw, "Bad control type\n");
-			return IXGBE_ERR_PHY;
+			return -EIO;
 		}
 	}
 
@@ -1504,7 +1504,7 @@ s32 ixgbe_reset_phy_nl(struct ixgbe_hw *hw)
 
 err_eeprom:
 	hw_err(hw, "eeprom read at offset %d failed\n", data_offset);
-	return IXGBE_ERR_PHY;
+	return -EIO;
 }
 
 /**
@@ -1522,10 +1522,10 @@ s32 ixgbe_identify_module_generic(struct ixgbe_hw *hw)
 		return ixgbe_identify_qsfp_module_generic(hw);
 	default:
 		hw->phy.sfp_type = ixgbe_sfp_type_not_present;
-		return IXGBE_ERR_SFP_NOT_PRESENT;
+		return -ENOENT;
 	}
 
-	return IXGBE_ERR_SFP_NOT_PRESENT;
+	return -ENOENT;
 }
 
 /**
@@ -1550,7 +1550,7 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 
 	if (hw->mac.ops.get_media_type(hw) != ixgbe_media_type_fiber) {
 		hw->phy.sfp_type = ixgbe_sfp_type_not_present;
-		return IXGBE_ERR_SFP_NOT_PRESENT;
+		return -ENOENT;
 	}
 
 	/* LAN ID is needed for sfp_type determination */
@@ -1565,7 +1565,7 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 
 	if (identifier != IXGBE_SFF_IDENTIFIER_SFP) {
 		hw->phy.type = ixgbe_phy_sfp_unsupported;
-		return IXGBE_ERR_SFP_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 	}
 	status = hw->phy.ops.read_i2c_eeprom(hw,
 					     IXGBE_SFF_1GBE_COMP_CODES,
@@ -1756,7 +1756,7 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1)) {
 		hw->phy.type = ixgbe_phy_sfp_unsupported;
-		return IXGBE_ERR_SFP_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 	}
 
 	/* Anything else 82598-based is supported */
@@ -1780,7 +1780,7 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 		}
 		hw_dbg(hw, "SFP+ module not supported\n");
 		hw->phy.type = ixgbe_phy_sfp_unsupported;
-		return IXGBE_ERR_SFP_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 	}
 	return 0;
 
@@ -1790,7 +1790,7 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 		hw->phy.id = 0;
 		hw->phy.type = ixgbe_phy_unknown;
 	}
-	return IXGBE_ERR_SFP_NOT_PRESENT;
+	return -ENOENT;
 }
 
 /**
@@ -1817,7 +1817,7 @@ static s32 ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw)
 
 	if (hw->mac.ops.get_media_type(hw) != ixgbe_media_type_fiber_qsfp) {
 		hw->phy.sfp_type = ixgbe_sfp_type_not_present;
-		return IXGBE_ERR_SFP_NOT_PRESENT;
+		return -ENOENT;
 	}
 
 	/* LAN ID is needed for sfp_type determination */
@@ -1831,7 +1831,7 @@ static s32 ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw)
 
 	if (identifier != IXGBE_SFF_IDENTIFIER_QSFP_PLUS) {
 		hw->phy.type = ixgbe_phy_sfp_unsupported;
-		return IXGBE_ERR_SFP_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 	}
 
 	hw->phy.id = identifier;
@@ -1899,7 +1899,7 @@ static s32 ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw)
 		} else {
 			/* unsupported module type */
 			hw->phy.type = ixgbe_phy_sfp_unsupported;
-			return IXGBE_ERR_SFP_NOT_SUPPORTED;
+			return -EOPNOTSUPP;
 		}
 	}
 
@@ -1959,7 +1959,7 @@ static s32 ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw)
 			}
 			hw_dbg(hw, "QSFP module not supported\n");
 			hw->phy.type = ixgbe_phy_sfp_unsupported;
-			return IXGBE_ERR_SFP_NOT_SUPPORTED;
+			return -EOPNOTSUPP;
 		}
 		return 0;
 	}
@@ -1970,7 +1970,7 @@ static s32 ixgbe_identify_qsfp_module_generic(struct ixgbe_hw *hw)
 	hw->phy.id = 0;
 	hw->phy.type = ixgbe_phy_unknown;
 
-	return IXGBE_ERR_SFP_NOT_PRESENT;
+	return -ENOENT;
 }
 
 /**
@@ -1990,14 +1990,14 @@ s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
 	u16 sfp_type = hw->phy.sfp_type;
 
 	if (hw->phy.sfp_type == ixgbe_sfp_type_unknown)
-		return IXGBE_ERR_SFP_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 
 	if (hw->phy.sfp_type == ixgbe_sfp_type_not_present)
-		return IXGBE_ERR_SFP_NOT_PRESENT;
+		return -ENOENT;
 
 	if ((hw->device_id == IXGBE_DEV_ID_82598_SR_DUAL_PORT_EM) &&
 	    (hw->phy.sfp_type == ixgbe_sfp_type_da_cu))
-		return IXGBE_ERR_SFP_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 
 	/*
 	 * Limiting active cables and 1G Phys must be initialized as
@@ -2018,11 +2018,11 @@ s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
 	if (hw->eeprom.ops.read(hw, IXGBE_PHY_INIT_OFFSET_NL, list_offset)) {
 		hw_err(hw, "eeprom read at %d failed\n",
 		       IXGBE_PHY_INIT_OFFSET_NL);
-		return IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT;
+		return -EIO;
 	}
 
 	if ((!*list_offset) || (*list_offset == 0xFFFF))
-		return IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT;
+		return -EIO;
 
 	/* Shift offset to first ID word */
 	(*list_offset)++;
@@ -2041,7 +2041,7 @@ s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
 				goto err_phy;
 			if ((!*data_offset) || (*data_offset == 0xFFFF)) {
 				hw_dbg(hw, "SFP+ module not supported\n");
-				return IXGBE_ERR_SFP_NOT_SUPPORTED;
+				return -EOPNOTSUPP;
 			} else {
 				break;
 			}
@@ -2054,14 +2054,14 @@ s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
 
 	if (sfp_id == IXGBE_PHY_INIT_END_NL) {
 		hw_dbg(hw, "No matching SFP+ module found\n");
-		return IXGBE_ERR_SFP_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
 
 err_phy:
 	hw_err(hw, "eeprom read at offset %d failed\n", *list_offset);
-	return IXGBE_ERR_PHY;
+	return -EIO;
 }
 
 /**
@@ -2156,7 +2156,7 @@ static s32 ixgbe_read_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
 
 	do {
 		if (lock && hw->mac.ops.acquire_swfw_sync(hw, swfw_mask))
-			return IXGBE_ERR_SWFW_SYNC;
+			return -EBUSY;
 
 		ixgbe_i2c_start(hw);
 
@@ -2272,7 +2272,7 @@ static s32 ixgbe_write_i2c_byte_generic_int(struct ixgbe_hw *hw, u8 byte_offset,
 	u32 swfw_mask = hw->phy.phy_semaphore_mask;
 
 	if (lock && hw->mac.ops.acquire_swfw_sync(hw, swfw_mask))
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 
 	do {
 		ixgbe_i2c_start(hw);
@@ -2514,7 +2514,7 @@ static s32 ixgbe_get_i2c_ack(struct ixgbe_hw *hw)
 
 	if (ack == 1) {
 		hw_dbg(hw, "I2C ack was not received.\n");
-		status = IXGBE_ERR_I2C;
+		status = -EIO;
 	}
 
 	ixgbe_lower_i2c_clk(hw, &i2cctl);
@@ -2586,7 +2586,7 @@ static s32 ixgbe_clock_out_i2c_bit(struct ixgbe_hw *hw, bool data)
 		udelay(IXGBE_I2C_T_LOW);
 	} else {
 		hw_dbg(hw, "I2C data was not set to %X\n", data);
-		return IXGBE_ERR_I2C;
+		return -EIO;
 	}
 
 	return 0;
@@ -2682,7 +2682,7 @@ static s32 ixgbe_set_i2c_data(struct ixgbe_hw *hw, u32 *i2cctl, bool data)
 	*i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL(hw));
 	if (data != ixgbe_get_i2c_data(hw, i2cctl)) {
 		hw_dbg(hw, "Error - I2C data was not set to %X.\n", data);
-		return IXGBE_ERR_I2C;
+		return -EIO;
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 29cc60988071..cdd27e72cff3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -1328,7 +1328,7 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 		break;
 	default:
 		e_err(drv, "Unhandled Msg %8.8x\n", msgbuf[0]);
-		retval = IXGBE_ERR_MBX;
+		retval = -EIO;
 		break;
 	}
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 99a814f06c61..aa0b429ada0d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3665,45 +3665,6 @@ struct ixgbe_info {
 	const u32			*mvals;
 };
 
-
-/* Error Codes */
-#define IXGBE_ERR_EEPROM                        -1
-#define IXGBE_ERR_EEPROM_CHECKSUM               -2
-#define IXGBE_ERR_PHY                           -3
-#define IXGBE_ERR_CONFIG                        -4
-#define IXGBE_ERR_PARAM                         -5
-#define IXGBE_ERR_MAC_TYPE                      -6
-#define IXGBE_ERR_UNKNOWN_PHY                   -7
-#define IXGBE_ERR_LINK_SETUP                    -8
-#define IXGBE_ERR_ADAPTER_STOPPED               -9
-#define IXGBE_ERR_INVALID_MAC_ADDR              -10
-#define IXGBE_ERR_DEVICE_NOT_SUPPORTED          -11
-#define IXGBE_ERR_PRIMARY_REQUESTS_PENDING      -12
-#define IXGBE_ERR_INVALID_LINK_SETTINGS         -13
-#define IXGBE_ERR_AUTONEG_NOT_COMPLETE          -14
-#define IXGBE_ERR_RESET_FAILED                  -15
-#define IXGBE_ERR_SWFW_SYNC                     -16
-#define IXGBE_ERR_PHY_ADDR_INVALID              -17
-#define IXGBE_ERR_I2C                           -18
-#define IXGBE_ERR_SFP_NOT_SUPPORTED             -19
-#define IXGBE_ERR_SFP_NOT_PRESENT               -20
-#define IXGBE_ERR_SFP_NO_INIT_SEQ_PRESENT       -21
-#define IXGBE_ERR_NO_SAN_ADDR_PTR               -22
-#define IXGBE_ERR_FDIR_REINIT_FAILED            -23
-#define IXGBE_ERR_EEPROM_VERSION                -24
-#define IXGBE_ERR_NO_SPACE                      -25
-#define IXGBE_ERR_OVERTEMP                      -26
-#define IXGBE_ERR_FC_NOT_NEGOTIATED             -27
-#define IXGBE_ERR_FC_NOT_SUPPORTED              -28
-#define IXGBE_ERR_SFP_SETUP_NOT_COMPLETE        -30
-#define IXGBE_ERR_PBA_SECTION                   -31
-#define IXGBE_ERR_INVALID_ARGUMENT              -32
-#define IXGBE_ERR_HOST_INTERFACE_COMMAND        -33
-#define IXGBE_ERR_FDIR_CMD_INCOMPLETE		-38
-#define IXGBE_ERR_FW_RESP_INVALID		-39
-#define IXGBE_ERR_TOKEN_RETRY			-40
-#define IXGBE_NOT_IMPLEMENTED                   0x7FFFFFFF
-
 #define IXGBE_FUSES0_GROUP(_i)		(0x11158 + ((_i) * 4))
 #define IXGBE_FUSES0_300MHZ		BIT(5)
 #define IXGBE_FUSES0_REV_MASK		(3u << 6)
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
index d5cfb51ff648..15325c549d9b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c
@@ -84,7 +84,7 @@ s32 ixgbe_reset_hw_X540(struct ixgbe_hw *hw)
 	status = hw->mac.ops.acquire_swfw_sync(hw, swfw_mask);
 	if (status) {
 		hw_dbg(hw, "semaphore failed with %d", status);
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 	}
 
 	ctrl = IXGBE_CTRL_RST;
@@ -103,7 +103,7 @@ s32 ixgbe_reset_hw_X540(struct ixgbe_hw *hw)
 	}
 
 	if (ctrl & IXGBE_CTRL_RST_MASK) {
-		status = IXGBE_ERR_RESET_FAILED;
+		status = -EIO;
 		hw_dbg(hw, "Reset polling failed to complete.\n");
 	}
 	msleep(100);
@@ -220,7 +220,7 @@ static s32 ixgbe_read_eerd_X540(struct ixgbe_hw *hw, u16 offset, u16 *data)
 	s32 status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 
 	status = ixgbe_read_eerd_generic(hw, offset, data);
 
@@ -243,7 +243,7 @@ static s32 ixgbe_read_eerd_buffer_X540(struct ixgbe_hw *hw,
 	s32 status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 
 	status = ixgbe_read_eerd_buffer_generic(hw, offset, words, data);
 
@@ -264,7 +264,7 @@ static s32 ixgbe_write_eewr_X540(struct ixgbe_hw *hw, u16 offset, u16 data)
 	s32 status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 
 	status = ixgbe_write_eewr_generic(hw, offset, data);
 
@@ -287,7 +287,7 @@ static s32 ixgbe_write_eewr_buffer_X540(struct ixgbe_hw *hw,
 	s32 status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 
 	status = ixgbe_write_eewr_buffer_generic(hw, offset, words, data);
 
@@ -324,7 +324,7 @@ static s32 ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
 	for (i = 0; i < checksum_last_word; i++) {
 		if (ixgbe_read_eerd_generic(hw, i, &word)) {
 			hw_dbg(hw, "EEPROM read failed\n");
-			return IXGBE_ERR_EEPROM;
+			return -EIO;
 		}
 		checksum += word;
 	}
@@ -349,7 +349,7 @@ static s32 ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
 
 		if (ixgbe_read_eerd_generic(hw, pointer, &length)) {
 			hw_dbg(hw, "EEPROM read failed\n");
-			return IXGBE_ERR_EEPROM;
+			return -EIO;
 		}
 
 		/* Skip pointer section if length is invalid. */
@@ -360,7 +360,7 @@ static s32 ixgbe_calc_eeprom_checksum_X540(struct ixgbe_hw *hw)
 		for (j = pointer + 1; j <= pointer + length; j++) {
 			if (ixgbe_read_eerd_generic(hw, j, &word)) {
 				hw_dbg(hw, "EEPROM read failed\n");
-				return IXGBE_ERR_EEPROM;
+				return -EIO;
 			}
 			checksum += word;
 		}
@@ -397,7 +397,7 @@ static s32 ixgbe_validate_eeprom_checksum_X540(struct ixgbe_hw *hw,
 	}
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 
 	status = hw->eeprom.ops.calc_checksum(hw);
 	if (status < 0)
@@ -418,7 +418,7 @@ static s32 ixgbe_validate_eeprom_checksum_X540(struct ixgbe_hw *hw,
 	 */
 	if (read_checksum != checksum) {
 		hw_dbg(hw, "Invalid EEPROM checksum");
-		status = IXGBE_ERR_EEPROM_CHECKSUM;
+		status = -EIO;
 	}
 
 	/* If the user cares, return the calculated checksum */
@@ -455,7 +455,7 @@ static s32 ixgbe_update_eeprom_checksum_X540(struct ixgbe_hw *hw)
 	}
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
-		return  IXGBE_ERR_SWFW_SYNC;
+		return  -EBUSY;
 
 	status = hw->eeprom.ops.calc_checksum(hw);
 	if (status < 0)
@@ -490,7 +490,7 @@ static s32 ixgbe_update_flash_X540(struct ixgbe_hw *hw)
 	s32 status;
 
 	status = ixgbe_poll_flash_update_done_X540(hw);
-	if (status == IXGBE_ERR_EEPROM) {
+	if (status == -EIO) {
 		hw_dbg(hw, "Flash update time out\n");
 		return status;
 	}
@@ -540,7 +540,7 @@ static s32 ixgbe_poll_flash_update_done_X540(struct ixgbe_hw *hw)
 			return 0;
 		udelay(5);
 	}
-	return IXGBE_ERR_EEPROM;
+	return -EIO;
 }
 
 /**
@@ -575,7 +575,7 @@ s32 ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
 		 * SW_FW_SYNC bits (not just NVM)
 		 */
 		if (ixgbe_get_swfw_sync_semaphore(hw))
-			return IXGBE_ERR_SWFW_SYNC;
+			return -EBUSY;
 
 		swfw_sync = IXGBE_READ_REG(hw, IXGBE_SWFW_SYNC(hw));
 		if (!(swfw_sync & (fwmask | swmask | hwmask))) {
@@ -599,7 +599,7 @@ s32 ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
 	 * bits in the SW_FW_SYNC register.
 	 */
 	if (ixgbe_get_swfw_sync_semaphore(hw))
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 	swfw_sync = IXGBE_READ_REG(hw, IXGBE_SWFW_SYNC(hw));
 	if (swfw_sync & (fwmask | hwmask)) {
 		swfw_sync |= swmask;
@@ -622,11 +622,11 @@ s32 ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u32 mask)
 			rmask |= IXGBE_GSSR_I2C_MASK;
 		ixgbe_release_swfw_sync_X540(hw, rmask);
 		ixgbe_release_swfw_sync_semaphore(hw);
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 	}
 	ixgbe_release_swfw_sync_semaphore(hw);
 
-	return IXGBE_ERR_SWFW_SYNC;
+	return -EBUSY;
 }
 
 /**
@@ -680,7 +680,7 @@ static s32 ixgbe_get_swfw_sync_semaphore(struct ixgbe_hw *hw)
 	if (i == timeout) {
 		hw_dbg(hw,
 		       "Software semaphore SMBI between device drivers not granted.\n");
-		return IXGBE_ERR_EEPROM;
+		return -EIO;
 	}
 
 	/* Now get the semaphore between SW/FW through the REGSMP bit */
@@ -697,7 +697,7 @@ static s32 ixgbe_get_swfw_sync_semaphore(struct ixgbe_hw *hw)
 	 */
 	hw_dbg(hw, "REGSMP Software NVM semaphore not granted\n");
 	ixgbe_release_swfw_sync_semaphore(hw);
-	return IXGBE_ERR_EEPROM;
+	return -EIO;
 }
 
 /**
@@ -768,7 +768,7 @@ s32 ixgbe_blink_led_start_X540(struct ixgbe_hw *hw, u32 index)
 	bool link_up;
 
 	if (index > 3)
-		return IXGBE_ERR_PARAM;
+		return -EINVAL;
 
 	/* Link should be up in order for the blink bit in the LED control
 	 * register to work. Force link and speed in the MAC if link is down.
@@ -804,7 +804,7 @@ s32 ixgbe_blink_led_stop_X540(struct ixgbe_hw *hw, u32 index)
 	u32 ledctl_reg;
 
 	if (index > 3)
-		return IXGBE_ERR_PARAM;
+		return -EINVAL;
 
 	/* Restore the LED to its default value. */
 	ledctl_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index dbfe1e4cef3c..538a79428e05 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -206,13 +206,13 @@ static s32 ixgbe_reset_cs4227(struct ixgbe_hw *hw)
 	}
 	if (retry == IXGBE_CS4227_RETRIES) {
 		hw_err(hw, "CS4227 reset did not complete\n");
-		return IXGBE_ERR_PHY;
+		return -EIO;
 	}
 
 	status = ixgbe_read_cs4227(hw, IXGBE_CS4227_EEPROM_STATUS, &value);
 	if (status || !(value & IXGBE_CS4227_EEPROM_LOAD_OK)) {
 		hw_err(hw, "CS4227 EEPROM did not load successfully\n");
-		return IXGBE_ERR_PHY;
+		return -EIO;
 	}
 
 	return 0;
@@ -350,13 +350,13 @@ static s32 ixgbe_identify_phy_x550em(struct ixgbe_hw *hw)
 static s32 ixgbe_read_phy_reg_x550em(struct ixgbe_hw *hw, u32 reg_addr,
 				     u32 device_type, u16 *phy_data)
 {
-	return IXGBE_NOT_IMPLEMENTED;
+	return -ENOSYS;
 }
 
 static s32 ixgbe_write_phy_reg_x550em(struct ixgbe_hw *hw, u32 reg_addr,
 				      u32 device_type, u16 phy_data)
 {
-	return IXGBE_NOT_IMPLEMENTED;
+	return -ENOSYS;
 }
 
 /**
@@ -463,7 +463,7 @@ s32 ixgbe_fw_phy_activity(struct ixgbe_hw *hw, u16 activity,
 		--retries;
 	} while (retries > 0);
 
-	return IXGBE_ERR_HOST_INTERFACE_COMMAND;
+	return -EIO;
 }
 
 static const struct {
@@ -511,7 +511,7 @@ static s32 ixgbe_get_phy_id_fw(struct ixgbe_hw *hw)
 	hw->phy.id |= phy_id_lo & IXGBE_PHY_REVISION_MASK;
 	hw->phy.revision = phy_id_lo & ~IXGBE_PHY_REVISION_MASK;
 	if (!hw->phy.id || hw->phy.id == IXGBE_PHY_REVISION_MASK)
-		return IXGBE_ERR_PHY_ADDR_INVALID;
+		return -EFAULT;
 
 	hw->phy.autoneg_advertised = hw->phy.speeds_supported;
 	hw->phy.eee_speeds_supported = IXGBE_LINK_SPEED_100_FULL |
@@ -568,7 +568,7 @@ static s32 ixgbe_setup_fw_link(struct ixgbe_hw *hw)
 
 	if (hw->fc.strict_ieee && hw->fc.requested_mode == ixgbe_fc_rx_pause) {
 		hw_err(hw, "rx_pause not valid in strict IEEE mode\n");
-		return IXGBE_ERR_INVALID_LINK_SETTINGS;
+		return -EINVAL;
 	}
 
 	switch (hw->fc.requested_mode) {
@@ -677,7 +677,7 @@ static s32 ixgbe_iosf_wait(struct ixgbe_hw *hw, u32 *ctrl)
 		*ctrl = command;
 	if (i == IXGBE_MDIO_COMMAND_TIMEOUT) {
 		hw_dbg(hw, "IOSF wait timed out\n");
-		return IXGBE_ERR_PHY;
+		return -EIO;
 	}
 
 	return 0;
@@ -717,7 +717,7 @@ static s32 ixgbe_read_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
 		error = (command & IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK) >>
 			 IXGBE_SB_IOSF_CTRL_CMPL_ERR_SHIFT;
 		hw_dbg(hw, "Failed to read, error %x\n", error);
-		return IXGBE_ERR_PHY;
+		return -EIO;
 	}
 
 	if (!ret)
@@ -752,9 +752,9 @@ static s32 ixgbe_get_phy_token(struct ixgbe_hw *hw)
 	if (token_cmd.hdr.cmd_or_resp.ret_status == FW_PHY_TOKEN_OK)
 		return 0;
 	if (token_cmd.hdr.cmd_or_resp.ret_status != FW_PHY_TOKEN_RETRY)
-		return IXGBE_ERR_FW_RESP_INVALID;
+		return -EIO;
 
-	return IXGBE_ERR_TOKEN_RETRY;
+	return -EAGAIN;
 }
 
 /**
@@ -780,7 +780,7 @@ static s32 ixgbe_put_phy_token(struct ixgbe_hw *hw)
 		return status;
 	if (token_cmd.hdr.cmd_or_resp.ret_status == FW_PHY_TOKEN_OK)
 		return 0;
-	return IXGBE_ERR_FW_RESP_INVALID;
+	return -EIO;
 }
 
 /**
@@ -944,7 +944,7 @@ static s32 ixgbe_checksum_ptr_x550(struct ixgbe_hw *hw, u16 ptr,
 		local_buffer = buf;
 	} else {
 		if (buffer_size < ptr)
-			return  IXGBE_ERR_PARAM;
+			return  -EINVAL;
 		local_buffer = &buffer[ptr];
 	}
 
@@ -962,7 +962,7 @@ static s32 ixgbe_checksum_ptr_x550(struct ixgbe_hw *hw, u16 ptr,
 	}
 
 	if (buffer && ((u32)start + (u32)length > buffer_size))
-		return IXGBE_ERR_PARAM;
+		return -EINVAL;
 
 	for (i = start; length; i++, length--) {
 		if (i == bufsz && !buffer) {
@@ -1014,7 +1014,7 @@ static s32 ixgbe_calc_checksum_X550(struct ixgbe_hw *hw, u16 *buffer,
 		local_buffer = eeprom_ptrs;
 	} else {
 		if (buffer_size < IXGBE_EEPROM_LAST_WORD)
-			return IXGBE_ERR_PARAM;
+			return -EINVAL;
 		local_buffer = buffer;
 	}
 
@@ -1150,7 +1150,7 @@ static s32 ixgbe_validate_eeprom_checksum_X550(struct ixgbe_hw *hw,
 	 * calculated checksum
 	 */
 	if (read_checksum != checksum) {
-		status = IXGBE_ERR_EEPROM_CHECKSUM;
+		status = -EIO;
 		hw_dbg(hw, "Invalid EEPROM checksum");
 	}
 
@@ -1205,7 +1205,7 @@ static s32 ixgbe_write_ee_hostif_X550(struct ixgbe_hw *hw, u16 offset, u16 data)
 		hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);
 	} else {
 		hw_dbg(hw, "write ee hostif failed to get semaphore");
-		status = IXGBE_ERR_SWFW_SYNC;
+		status = -EBUSY;
 	}
 
 	return status;
@@ -1417,7 +1417,7 @@ static s32 ixgbe_write_iosf_sb_reg_x550(struct ixgbe_hw *hw, u32 reg_addr,
 		error = (command & IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK) >>
 			 IXGBE_SB_IOSF_CTRL_CMPL_ERR_SHIFT;
 		hw_dbg(hw, "Failed to write, error %x\n", error);
-		return IXGBE_ERR_PHY;
+		return -EIO;
 	}
 
 out:
@@ -1560,7 +1560,7 @@ static s32 ixgbe_setup_ixfi_x550em(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
 
 	/* iXFI is only supported with X552 */
 	if (mac->type != ixgbe_mac_X550EM_x)
-		return IXGBE_ERR_LINK_SETUP;
+		return -EIO;
 
 	/* Disable AN and force speed to 10G Serial. */
 	status = ixgbe_read_iosf_sb_reg_x550(hw,
@@ -1582,7 +1582,7 @@ static s32 ixgbe_setup_ixfi_x550em(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
 		break;
 	default:
 		/* Other link speeds are not supported by internal KR PHY. */
-		return IXGBE_ERR_LINK_SETUP;
+		return -EINVAL;
 	}
 
 	status = ixgbe_write_iosf_sb_reg_x550(hw,
@@ -1613,7 +1613,7 @@ static s32 ixgbe_supported_sfp_modules_X550em(struct ixgbe_hw *hw, bool *linear)
 {
 	switch (hw->phy.sfp_type) {
 	case ixgbe_sfp_type_not_present:
-		return IXGBE_ERR_SFP_NOT_PRESENT;
+		return -ENOENT;
 	case ixgbe_sfp_type_da_cu_core0:
 	case ixgbe_sfp_type_da_cu_core1:
 		*linear = true;
@@ -1632,7 +1632,7 @@ static s32 ixgbe_supported_sfp_modules_X550em(struct ixgbe_hw *hw, bool *linear)
 	case ixgbe_sfp_type_1g_cu_core0:
 	case ixgbe_sfp_type_1g_cu_core1:
 	default:
-		return IXGBE_ERR_SFP_NOT_SUPPORTED;
+		return -EOPNOTSUPP;
 	}
 
 	return 0;
@@ -1662,7 +1662,7 @@ ixgbe_setup_mac_link_sfp_x550em(struct ixgbe_hw *hw,
 	 * there is no reason to configure CS4227 and SFP not present error is
 	 * not accepted in the setup MAC link flow.
 	 */
-	if (status == IXGBE_ERR_SFP_NOT_PRESENT)
+	if (status == -ENOENT)
 		return 0;
 
 	if (status)
@@ -1720,7 +1720,7 @@ static s32 ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
 		break;
 	default:
 		/* Other link speeds are not supported by internal PHY. */
-		return IXGBE_ERR_LINK_SETUP;
+		return -EINVAL;
 	}
 
 	(void)mac->ops.write_iosf_sb_reg(hw,
@@ -1805,7 +1805,7 @@ ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
 	/* If no SFP module present, then return success. Return success since
 	 * SFP not present error is not excepted in the setup MAC link flow.
 	 */
-	if (ret_val == IXGBE_ERR_SFP_NOT_PRESENT)
+	if (ret_val == -ENOENT)
 		return 0;
 
 	if (ret_val)
@@ -1855,7 +1855,7 @@ ixgbe_setup_mac_link_sfp_x550a(struct ixgbe_hw *hw, ixgbe_link_speed speed,
 	/* If no SFP module present, then return success. Return success since
 	 * SFP not present error is not excepted in the setup MAC link flow.
 	 */
-	if (ret_val == IXGBE_ERR_SFP_NOT_PRESENT)
+	if (ret_val == -ENOENT)
 		return 0;
 
 	if (ret_val)
@@ -1865,7 +1865,7 @@ ixgbe_setup_mac_link_sfp_x550a(struct ixgbe_hw *hw, ixgbe_link_speed speed,
 	ixgbe_setup_kr_speed_x550em(hw, speed);
 
 	if (hw->phy.mdio.prtad == MDIO_PRTAD_NONE)
-		return IXGBE_ERR_PHY_ADDR_INVALID;
+		return -EFAULT;
 
 	/* Get external PHY SKU id */
 	ret_val = hw->phy.ops.read_reg(hw, IXGBE_CS4227_EFUSE_PDF_SKU,
@@ -1964,7 +1964,7 @@ static s32 ixgbe_check_link_t_X550em(struct ixgbe_hw *hw,
 	u16 i, autoneg_status;
 
 	if (hw->mac.ops.get_media_type(hw) != ixgbe_media_type_copper)
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 
 	status = ixgbe_check_mac_link_generic(hw, speed, link_up,
 					      link_up_wait_to_complete);
@@ -2147,7 +2147,7 @@ static s32 ixgbe_setup_sgmii_fw(struct ixgbe_hw *hw, ixgbe_link_speed speed,
  */
 static void ixgbe_fc_autoneg_sgmii_x550em_a(struct ixgbe_hw *hw)
 {
-	s32 status = IXGBE_ERR_FC_NOT_NEGOTIATED;
+	s32 status = -EIO;
 	u32 info[FW_PHY_ACT_DATA_COUNT] = { 0 };
 	ixgbe_link_speed speed;
 	bool link_up;
@@ -2167,7 +2167,7 @@ static void ixgbe_fc_autoneg_sgmii_x550em_a(struct ixgbe_hw *hw)
 	/* Check if auto-negotiation has completed */
 	status = ixgbe_fw_phy_activity(hw, FW_PHY_ACT_GET_LINK_INFO, &info);
 	if (status || !(info[0] & FW_PHY_ACT_GET_LINK_INFO_AN_COMPLETE)) {
-		status = IXGBE_ERR_FC_NOT_NEGOTIATED;
+		status = -EIO;
 		goto out;
 	}
 
@@ -2701,7 +2701,7 @@ static s32 ixgbe_setup_internal_phy_t_x550em(struct ixgbe_hw *hw)
 	u16 speed;
 
 	if (hw->mac.ops.get_media_type(hw) != ixgbe_media_type_copper)
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 
 	if (!(hw->mac.type == ixgbe_mac_X550EM_x &&
 	      !(hw->phy.nw_mng_if_sel & IXGBE_NW_MNG_IF_SEL_INT_PHY_MODE))) {
@@ -2744,7 +2744,7 @@ static s32 ixgbe_setup_internal_phy_t_x550em(struct ixgbe_hw *hw)
 		break;
 	default:
 		/* Internal PHY does not support anything else */
-		return IXGBE_ERR_INVALID_LINK_SETTINGS;
+		return -EINVAL;
 	}
 
 	return ixgbe_setup_ixfi_x550em(hw, &force_speed);
@@ -2776,7 +2776,7 @@ static s32 ixgbe_led_on_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
 	u16 phy_data;
 
 	if (led_idx >= IXGBE_X557_MAX_LED_INDEX)
-		return IXGBE_ERR_PARAM;
+		return -EINVAL;
 
 	/* To turn on the LED, set mode to ON. */
 	hw->phy.ops.read_reg(hw, IXGBE_X557_LED_PROVISIONING + led_idx,
@@ -2798,7 +2798,7 @@ static s32 ixgbe_led_off_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
 	u16 phy_data;
 
 	if (led_idx >= IXGBE_X557_MAX_LED_INDEX)
-		return IXGBE_ERR_PARAM;
+		return -EINVAL;
 
 	/* To turn on the LED, set mode to ON. */
 	hw->phy.ops.read_reg(hw, IXGBE_X557_LED_PROVISIONING + led_idx,
@@ -2822,8 +2822,9 @@ static s32 ixgbe_led_off_t_x550em(struct ixgbe_hw *hw, u32 led_idx)
  *
  *  Sends driver version number to firmware through the manageability
  *  block.  On success return 0
- *  else returns IXGBE_ERR_SWFW_SYNC when encountering an error acquiring
- *  semaphore or IXGBE_ERR_HOST_INTERFACE_COMMAND when command fails.
+ *  else returns -EBUSY when encountering an error acquiring
+ *  semaphore, -EIO when command fails or -ENIVAL when incorrect
+ *  params passed.
  **/
 static s32 ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
 				     u8 build, u8 sub, u16 len,
@@ -2834,7 +2835,7 @@ static s32 ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
 	int i;
 
 	if (!len || !driver_ver || (len > sizeof(fw_cmd.driver_string)))
-		return IXGBE_ERR_INVALID_ARGUMENT;
+		return -EINVAL;
 
 	fw_cmd.hdr.cmd = FW_CEM_CMD_DRIVER_INFO;
 	fw_cmd.hdr.buf_len = FW_CEM_CMD_DRIVER_INFO_LEN + len;
@@ -2859,7 +2860,7 @@ static s32 ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
 
 		if (fw_cmd.hdr.cmd_or_resp.ret_status !=
 		    FW_CEM_RESP_STATUS_SUCCESS)
-			return IXGBE_ERR_HOST_INTERFACE_COMMAND;
+			return -EIO;
 		return 0;
 	}
 
@@ -2916,7 +2917,7 @@ static s32 ixgbe_setup_fc_x550em(struct ixgbe_hw *hw)
 	/* Validate the requested mode */
 	if (hw->fc.strict_ieee && hw->fc.requested_mode == ixgbe_fc_rx_pause) {
 		hw_err(hw, "ixgbe_fc_rx_pause not valid in strict IEEE mode\n");
-		return IXGBE_ERR_INVALID_LINK_SETTINGS;
+		return -EINVAL;
 	}
 
 	/* 10gig parts do not have a word in the EEPROM to determine the
@@ -2951,7 +2952,7 @@ static s32 ixgbe_setup_fc_x550em(struct ixgbe_hw *hw)
 		break;
 	default:
 		hw_err(hw, "Flow control param set incorrectly\n");
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 	}
 
 	switch (hw->device_id) {
@@ -2995,8 +2996,8 @@ static s32 ixgbe_setup_fc_x550em(struct ixgbe_hw *hw)
 static void ixgbe_fc_autoneg_backplane_x550em_a(struct ixgbe_hw *hw)
 {
 	u32 link_s1, lp_an_page_low, an_cntl_1;
-	s32 status = IXGBE_ERR_FC_NOT_NEGOTIATED;
 	ixgbe_link_speed speed;
+	s32 status = -EIO;
 	bool link_up;
 
 	/* AN should have completed when the cable was plugged in.
@@ -3022,7 +3023,7 @@ static void ixgbe_fc_autoneg_backplane_x550em_a(struct ixgbe_hw *hw)
 
 	if (status || (link_s1 & IXGBE_KRM_LINK_S1_MAC_AN_COMPLETE) == 0) {
 		hw_dbg(hw, "Auto-Negotiation did not complete\n");
-		status = IXGBE_ERR_FC_NOT_NEGOTIATED;
+		status = -EIO;
 		goto out;
 	}
 
@@ -3266,8 +3267,8 @@ static s32 ixgbe_init_phy_ops_X550em(struct ixgbe_hw *hw)
 
 	/* Identify the PHY or SFP module */
 	ret_val = phy->ops.identify(hw);
-	if (ret_val == IXGBE_ERR_SFP_NOT_SUPPORTED ||
-	    ret_val == IXGBE_ERR_PHY_ADDR_INVALID)
+	if (ret_val == -EOPNOTSUPP ||
+	    ret_val == -EFAULT)
 		return ret_val;
 
 	/* Setup function pointers based on detected hardware */
@@ -3475,8 +3476,8 @@ static s32 ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
 
 	/* PHY ops must be identified and initialized prior to reset */
 	status = hw->phy.ops.init(hw);
-	if (status == IXGBE_ERR_SFP_NOT_SUPPORTED ||
-	    status == IXGBE_ERR_PHY_ADDR_INVALID)
+	if (status == -EOPNOTSUPP ||
+	    status == -EFAULT)
 		return status;
 
 	/* start the external PHY */
@@ -3492,7 +3493,7 @@ static s32 ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
 		hw->phy.sfp_setup_needed = false;
 	}
 
-	if (status == IXGBE_ERR_SFP_NOT_SUPPORTED)
+	if (status == -EOPNOTSUPP)
 		return status;
 
 	/* Reset PHY */
@@ -3516,7 +3517,7 @@ static s32 ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
 	status = hw->mac.ops.acquire_swfw_sync(hw, swfw_mask);
 	if (status) {
 		hw_dbg(hw, "semaphore failed with %d", status);
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 	}
 
 	ctrl |= IXGBE_READ_REG(hw, IXGBE_CTRL);
@@ -3534,7 +3535,7 @@ static s32 ixgbe_reset_hw_X550em(struct ixgbe_hw *hw)
 	}
 
 	if (ctrl & IXGBE_CTRL_RST_MASK) {
-		status = IXGBE_ERR_RESET_FAILED;
+		status = -EIO;
 		hw_dbg(hw, "Reset polling failed to complete.\n");
 	}
 
@@ -3630,7 +3631,7 @@ static s32 ixgbe_setup_fc_backplane_x550em_a(struct ixgbe_hw *hw)
 	/* Validate the requested mode */
 	if (hw->fc.strict_ieee && hw->fc.requested_mode == ixgbe_fc_rx_pause) {
 		hw_err(hw, "ixgbe_fc_rx_pause not valid in strict IEEE mode\n");
-		return IXGBE_ERR_INVALID_LINK_SETTINGS;
+		return -EINVAL;
 	}
 
 	if (hw->fc.requested_mode == ixgbe_fc_default)
@@ -3687,7 +3688,7 @@ static s32 ixgbe_setup_fc_backplane_x550em_a(struct ixgbe_hw *hw)
 		break;
 	default:
 		hw_err(hw, "Flow control param set incorrectly\n");
-		return IXGBE_ERR_CONFIG;
+		return -EIO;
 	}
 
 	status = hw->mac.ops.write_iosf_sb_reg(hw,
@@ -3783,7 +3784,7 @@ static s32 ixgbe_acquire_swfw_sync_x550em_a(struct ixgbe_hw *hw, u32 mask)
 			return 0;
 		if (hmask)
 			ixgbe_release_swfw_sync_X540(hw, hmask);
-		if (status != IXGBE_ERR_TOKEN_RETRY)
+		if (status != -EAGAIN)
 			return status;
 		msleep(FW_PHY_TOKEN_DELAY);
 	}
@@ -3827,7 +3828,7 @@ static s32 ixgbe_read_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
 	s32 status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, mask))
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 
 	status = hw->phy.ops.read_reg_mdi(hw, reg_addr, device_type, phy_data);
 
@@ -3853,7 +3854,7 @@ static s32 ixgbe_write_phy_reg_x550a(struct ixgbe_hw *hw, u32 reg_addr,
 	s32 status;
 
 	if (hw->mac.ops.acquire_swfw_sync(hw, mask))
-		return IXGBE_ERR_SWFW_SYNC;
+		return -EBUSY;
 
 	status = ixgbe_write_phy_reg_mdi(hw, reg_addr, device_type, phy_data);
 	hw->mac.ops.release_swfw_sync(hw, mask);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
