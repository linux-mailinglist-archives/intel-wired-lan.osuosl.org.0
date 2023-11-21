Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3EA7F381F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 22:20:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25B8A81F3C;
	Tue, 21 Nov 2023 21:20:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 25B8A81F3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700601642;
	bh=TGy5ff3hGHcsKIbHo3UCS+1XhR10e0B57043TzEYc9g=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zB7glXaI2TAxQzEiY4rFiFipbPInul84noIP07XU4wccApmvdiXFsmIciJ7odPWO/
	 xJ+7PjnrUoJHF71TC5tfFDXGfvwlPDxCy3NsaMQdxWadNqdkUM83Get035CRI/8E7Z
	 /XklknHuxfIpBBpIcVycecSevBk4vsw/nyTrpVhPO98HKCg8295I5kz6++jPrPTPON
	 XVUtrQatvJ75Ik8MDWCTt8x7FxBrPRej7wNhvHbbmjz24i1O6PrTnu6W8xd8kmGLtC
	 74TWiuh13EzepmcN5KMnrfp6mTqnj8IfvAV6949fYsDdmQSSBwokwy1f7j0NQa/YpZ
	 BRsHwLH4Wvx2w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mH6-DJJIPv3K; Tue, 21 Nov 2023 21:20:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F92A8138A;
	Tue, 21 Nov 2023 21:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F92A8138A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 99DD21BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C24CF409E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C24CF409E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hvZ_Iwk-1X-n for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 21:19:41 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6FA6840985
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 21:19:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FA6840985
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423022079"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="423022079"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="716630537"
X-IronPort-AV: E=Sophos;i="6.04,216,1695711600"; d="scan'208";a="716630537"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 13:19:38 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 13:19:11 -0800
Message-Id: <20231121211921.19834-4-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20231121211921.19834-1-jesse.brandeburg@intel.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700601581; x=1732137581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iQVj/XD3+ju/LIp5stIC17ZczSKbvXK9M5G1tWDBmQg=;
 b=nYFERg8VibAs3moirjwvQ+gTOH3fgxzJWZrbkFxx/RT0u8ILJsI+4iNe
 iVjl5qOwiXXXYPaL0C2vFTJ8dQrBZc19QngprKY6B1NuPSadM+0DxGwul
 SnS90we1Se+6LGs7t546nkUVjENZ7gtIz0nbw0NttgshctitbjbDJgS6H
 RAk57EymAs4m3dRrfB8k3I4B1/Ghh8Iz5Nxq0rFC9U2j+a+pUMNVElK1n
 2MbEV+oop7kC6v9t1QN9Q0u1Ff6Cn1M2vJrgnctl2iZfbPG6STIqHtWvv
 HVHG5mKnnN0XIVrITA0e4S6qICvXs6LOEG44JCDJ5CiuwYp4Scgpf0PlY
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nYFERg8V
Subject: [Intel-wired-lan] [PATCH iwl-next v1 03/13] intel: legacy: field
 prep conversion
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

Refactor several older Intel drivers to use FIELD_PREP(), which reduces
lines of code and adds clarity of intent.

This code was generated by the following coccinelle/spatch script and
then manually repaired.

@prep@
constant shift,mask;
type T;
expression a;
@@
-(((T)(a) << shift) & mask)
+FIELD_PREP(mask, a)

Cc: Julia Lawall <Julia.Lawall@inria.fr>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/e1000e/80003es2lan.c | 7 +++----
 drivers/net/ethernet/intel/e1000e/phy.c         | 7 +++----
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c     | 3 +--
 drivers/net/ethernet/intel/igb/e1000_phy.c      | 4 ++--
 drivers/net/ethernet/intel/igb/igb_ethtool.c    | 3 +--
 drivers/net/ethernet/intel/igb/igb_main.c       | 9 +++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c  | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c   | 4 ++--
 8 files changed, 16 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/80003es2lan.c b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
index 74671201208e..31fce3e4e8af 100644
--- a/drivers/net/ethernet/intel/e1000e/80003es2lan.c
+++ b/drivers/net/ethernet/intel/e1000e/80003es2lan.c
@@ -1210,8 +1210,8 @@ static s32 e1000_read_kmrn_reg_80003es2lan(struct e1000_hw *hw, u32 offset,
 	if (ret_val)
 		return ret_val;
 
-	kmrnctrlsta = ((offset << E1000_KMRNCTRLSTA_OFFSET_SHIFT) &
-		       E1000_KMRNCTRLSTA_OFFSET) | E1000_KMRNCTRLSTA_REN;
+	kmrnctrlsta = FIELD_PREP(E1000_KMRNCTRLSTA_OFFSET, offset) |
+		      E1000_KMRNCTRLSTA_REN;
 	ew32(KMRNCTRLSTA, kmrnctrlsta);
 	e1e_flush();
 
@@ -1245,8 +1245,7 @@ static s32 e1000_write_kmrn_reg_80003es2lan(struct e1000_hw *hw, u32 offset,
 	if (ret_val)
 		return ret_val;
 
-	kmrnctrlsta = ((offset << E1000_KMRNCTRLSTA_OFFSET_SHIFT) &
-		       E1000_KMRNCTRLSTA_OFFSET) | data;
+	kmrnctrlsta = FIELD_PREP(E1000_KMRNCTRLSTA_OFFSET, offset) | data;
 	ew32(KMRNCTRLSTA, kmrnctrlsta);
 	e1e_flush();
 
diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index 08c3d477dd6f..2498f021eb02 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -463,8 +463,8 @@ static s32 __e1000_read_kmrn_reg(struct e1000_hw *hw, u32 offset, u16 *data,
 			return ret_val;
 	}
 
-	kmrnctrlsta = ((offset << E1000_KMRNCTRLSTA_OFFSET_SHIFT) &
-		       E1000_KMRNCTRLSTA_OFFSET) | E1000_KMRNCTRLSTA_REN;
+	kmrnctrlsta = FIELD_PREP(E1000_KMRNCTRLSTA_OFFSET, offset) |
+		      E1000_KMRNCTRLSTA_REN;
 	ew32(KMRNCTRLSTA, kmrnctrlsta);
 	e1e_flush();
 
@@ -536,8 +536,7 @@ static s32 __e1000_write_kmrn_reg(struct e1000_hw *hw, u32 offset, u16 data,
 			return ret_val;
 	}
 
-	kmrnctrlsta = ((offset << E1000_KMRNCTRLSTA_OFFSET_SHIFT) &
-		       E1000_KMRNCTRLSTA_OFFSET) | data;
+	kmrnctrlsta = FIELD_PREP(E1000_KMRNCTRLSTA_OFFSET, offset) | data;
 	ew32(KMRNCTRLSTA, kmrnctrlsta);
 	e1e_flush();
 
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
index ae700a1807c6..1eea0ec5dbcf 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
@@ -866,8 +866,7 @@ static s32 fm10k_iov_assign_default_mac_vlan_pf(struct fm10k_hw *hw,
 	 * register is RO from the VF, so the PF must do this even in the
 	 * case of notifying the VF of a new VID via the mailbox.
 	 */
-	txqctl = ((u32)vf_vid << FM10K_TXQCTL_VID_SHIFT) &
-		 FM10K_TXQCTL_VID_MASK;
+	txqctl = FIELD_PREP(FM10K_TXQCTL_VID_MASK, vf_vid);
 	txqctl |= (vf_idx << FM10K_TXQCTL_TC_SHIFT) |
 		  FM10K_TXQCTL_VF | vf_idx;
 
diff --git a/drivers/net/ethernet/intel/igb/e1000_phy.c b/drivers/net/ethernet/intel/igb/e1000_phy.c
index 3c1b562a3271..c84e7356cdb1 100644
--- a/drivers/net/ethernet/intel/igb/e1000_phy.c
+++ b/drivers/net/ethernet/intel/igb/e1000_phy.c
@@ -255,7 +255,7 @@ s32 igb_read_phy_reg_i2c(struct e1000_hw *hw, u32 offset, u16 *data)
 	}
 
 	/* Need to byte-swap the 16-bit value. */
-	*data = ((i2ccmd >> 8) & 0x00FF) | ((i2ccmd << 8) & 0xFF00);
+	*data = ((i2ccmd >> 8) & 0x00FF) | FIELD_PREP(0xFF00, i2ccmd);
 
 	return 0;
 }
@@ -282,7 +282,7 @@ s32 igb_write_phy_reg_i2c(struct e1000_hw *hw, u32 offset, u16 data)
 	}
 
 	/* Swap the data bytes for the I2C interface */
-	phy_data_swapped = ((data >> 8) & 0x00FF) | ((data << 8) & 0xFF00);
+	phy_data_swapped = ((data >> 8) & 0x00FF) | FIELD_PREP(0xFF00, data);
 
 	/* Set up Op-code, Phy Address, and register address in the I2CCMD
 	 * register.  The MAC will take care of interfacing with the
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 16d2a55d5e17..f03977f2323e 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -2713,8 +2713,7 @@ static int igb_rxnfc_write_etype_filter(struct igb_adapter *adapter,
 	etqf |= (etype & E1000_ETQF_ETYPE_MASK);
 
 	etqf &= ~E1000_ETQF_QUEUE_MASK;
-	etqf |= ((input->action << E1000_ETQF_QUEUE_SHIFT)
-		& E1000_ETQF_QUEUE_MASK);
+	etqf |= FIELD_PREP(E1000_ETQF_QUEUE_MASK, input->action);
 	etqf |= E1000_ETQF_QUEUE_ENABLE;
 
 	wr32(E1000_ETQF(i), etqf);
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index b2295caa2f0a..897eb36bb609 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -9810,8 +9810,7 @@ static void igb_set_vf_rate_limit(struct e1000_hw *hw, int vf, int tx_rate,
 			 tx_rate;
 
 		bcnrc_val = E1000_RTTBCNRC_RS_ENA;
-		bcnrc_val |= ((rf_int << E1000_RTTBCNRC_RF_INT_SHIFT) &
-			      E1000_RTTBCNRC_RF_INT_MASK);
+		bcnrc_val |= FIELD_PREP(E1000_RTTBCNRC_RF_INT_MASK, rf_int);
 		bcnrc_val |= (rf_dec & E1000_RTTBCNRC_RF_DEC_MASK);
 	} else {
 		bcnrc_val = 0;
@@ -10000,8 +9999,7 @@ static void igb_init_dmac(struct igb_adapter *adapter, u32 pba)
 			hwm = 64 * (pba - 6);
 			reg = rd32(E1000_FCRTC);
 			reg &= ~E1000_FCRTC_RTH_COAL_MASK;
-			reg |= ((hwm << E1000_FCRTC_RTH_COAL_SHIFT)
-				& E1000_FCRTC_RTH_COAL_MASK);
+			reg |= FIELD_PREP(E1000_FCRTC_RTH_COAL_MASK, hwm);
 			wr32(E1000_FCRTC, reg);
 
 			/* Set the DMA Coalescing Rx threshold to PBA - 2 * max
@@ -10010,8 +10008,7 @@ static void igb_init_dmac(struct igb_adapter *adapter, u32 pba)
 			dmac_thr = pba - 10;
 			reg = rd32(E1000_DMACR);
 			reg &= ~E1000_DMACR_DMACTHR_MASK;
-			reg |= ((dmac_thr << E1000_DMACR_DMACTHR_SHIFT)
-				& E1000_DMACR_DMACTHR_MASK);
+			reg |= FIELD_PREP(E1000_DMACR_DMACTHR_MASK, dmac_thr);
 
 			/* transition to L0x or L1 if available..*/
 			reg |= (E1000_DMACR_DMAC_EN | E1000_DMACR_DMAC_LX_MASK);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
index 100388968e4d..0470b69d834c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
@@ -794,7 +794,7 @@ static s32 ixgbe_set_vmdq_82598(struct ixgbe_hw *hw, u32 rar, u32 vmdq)
 
 	rar_high = IXGBE_READ_REG(hw, IXGBE_RAH(rar));
 	rar_high &= ~IXGBE_RAH_VIND_MASK;
-	rar_high |= ((vmdq << IXGBE_RAH_VIND_SHIFT) & IXGBE_RAH_VIND_MASK);
+	rar_high |= FIELD_PREP(IXGBE_RAH_VIND_MASK, vmdq);
 	IXGBE_WRITE_REG(hw, IXGBE_RAH(rar), rar_high);
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
index 7311bd545acf..18d63c8c2ff4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c
@@ -670,8 +670,8 @@ void ixgbe_configure_fcoe(struct ixgbe_adapter *adapter)
 			int fcoe_i_h = fcoe->offset + ((i + fcreta_size) %
 							fcoe->indices);
 			fcoe_q_h = adapter->rx_ring[fcoe_i_h]->reg_idx;
-			fcoe_q_h = (fcoe_q_h << IXGBE_FCRETA_ENTRY_HIGH_SHIFT) &
-				   IXGBE_FCRETA_ENTRY_HIGH_MASK;
+			fcoe_q_h = FIELD_PREP(IXGBE_FCRETA_ENTRY_HIGH_MASK,
+					      fcoe_q_h);
 		}
 
 		fcoe_i = fcoe->offset + (i % fcoe->indices);
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
