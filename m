Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF781EDA2B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 02:51:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 150DC87F07;
	Thu,  4 Jun 2020 00:51:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B17Q+Q1oydsv; Thu,  4 Jun 2020 00:51:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F217F880ED;
	Thu,  4 Jun 2020 00:50:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F00761BF276
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E024387F07
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2XqrG7jItYrE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 00:50:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0196.hostedemail.com
 [216.40.44.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 69222880B4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 00:50:39 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 731748258223
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2020 20:05:23 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id CDBB01802926E;
 Wed,  3 Jun 2020 20:05:20 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:69:305:355:379:871:960:966:968:973:982:988:989:1000:1028:1260:1313:1314:1345:1437:1461:1516:1518:1575:1594:1605:1730:1747:1764:1777:1792:1981:2194:2196:2198:2199:2200:2201:2393:2559:2562:2693:2729:2731:2840:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4225:4250:4321:4385:4605:5007:6506:6747:6748:7281:7807:7875:7903:7974:8603:9010:9036:9391:9592:10004:10394:10848:11026:11233:11604:11657:11914:12043:12050:12217:12295:12296:12297:12438:12555:12698:12737:12986:13439:13972:14096:14659:21080:21324:21325:21433:21611:21627:21740:21789:21966:21990:30007:30045:30054:30055:30069:30070:30075:30080:30083:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:3, LUA_SUMMARY:none
X-HE-Tag: art23_380f4d726d91
X-Filterd-Recvd-Size: 58567
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Wed,  3 Jun 2020 20:05:19 +0000 (UTC)
Message-ID: <efc48f182e68e75aad523e02b4e732e6273a3715.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Wed, 03 Jun 2020 13:05:18 -0700
Content-Type: multipart/mixed; boundary="=-tVicjtMItgOYRKtQaaAv"
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
Subject: [Intel-wired-lan] intel - convert /* fallthrough */ comments one
 day?
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--=-tVicjtMItgOYRKtQaaAv
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Hey Jeff,  one day when convenient could you please
run this attached script to convert all the
/* fallthrough */ style comments to the newer
fallthrough; keyword?

It'd help to consolidate the various comments to a
standardized form.

$ git ls-files -- 'drivers/net/ethernet/intel/*.[ch]' | \
  xargs perl cvt_fallback.pl

Today the script produces the diff below:
---
 drivers/net/ethernet/intel/e1000/e1000_hw.c       |  4 +--
 drivers/net/ethernet/intel/e1000/e1000_main.c     |  2 +-
 drivers/net/ethernet/intel/e1000/e1000_param.c    |  2 +-
 drivers/net/ethernet/intel/e1000e/82571.c         |  4 +--
 drivers/net/ethernet/intel/e1000e/ethtool.c       | 11 ++++-----
 drivers/net/ethernet/intel/e1000e/ich8lan.c       | 16 ++++++------
 drivers/net/ethernet/intel/e1000e/netdev.c        | 13 +++++-----
 drivers/net/ethernet/intel/e1000e/param.c         |  2 +-
 drivers/net/ethernet/intel/e1000e/phy.c           |  2 +-
 drivers/net/ethernet/intel/e1000e/ptp.c           |  3 +--
 drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c  |  4 +--
 drivers/net/ethernet/intel/fm10k/fm10k_main.c     |  2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_mbx.c      |  8 +++---
 drivers/net/ethernet/intel/fm10k/fm10k_netdev.c   |  2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_pf.c       |  8 +++---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c     |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c    |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c       |  5 ++--
 drivers/net/ethernet/intel/i40e/i40e_ptp.c        |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c       |  6 ++---
 drivers/net/ethernet/intel/i40e/i40e_xsk.c        |  4 +--
 drivers/net/ethernet/intel/iavf/iavf_txrx.c       |  2 +-
 drivers/net/ethernet/intel/igb/e1000_82575.c      |  4 +--
 drivers/net/ethernet/intel/igb/e1000_nvm.c        |  2 +-
 drivers/net/ethernet/intel/igb/e1000_phy.c        |  4 +--
 drivers/net/ethernet/intel/igb/igb_ethtool.c      |  8 +++---
 drivers/net/ethernet/intel/igb/igb_main.c         | 25 +++++++++----------
 drivers/net/ethernet/intel/igb/igb_ptp.c          |  2 +-
 drivers/net/ethernet/intel/igbvf/netdev.c         |  4 +--
 drivers/net/ethernet/intel/igc/igc_ethtool.c      | 16 +++---------
 drivers/net/ethernet/intel/igc/igc_main.c         |  5 ++--
 drivers/net/ethernet/intel/igc/igc_ptp.c          |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c    |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c    |  6 ++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c   |  5 ++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 10 ++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     | 30 +++++++++++------------
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c      |  4 +--
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c    |  4 +--
 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c     | 10 ++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c      |  4 +--
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  8 +++---
 drivers/net/ethernet/intel/ixgbevf/vf.c           |  6 ++---
 43 files changed, 124 insertions(+), 143 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index 623e516a9630..4e7a0810eaeb 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -4526,7 +4526,7 @@ s32 e1000_setup_led(struct e1000_hw *hw)
 						     ~IGP01E1000_GMII_SPD));
 		if (ret_val)
 			return ret_val;
-		/* Fall Through */
+		fallthrough;
 	default:
 		if (hw->media_type == e1000_media_type_fiber) {
 			ledctl = er32(LEDCTL);
@@ -4571,7 +4571,7 @@ s32 e1000_cleanup_led(struct e1000_hw *hw)
 					      hw->phy_spd_default);
 		if (ret_val)
 			return ret_val;
-		/* Fall Through */
+		fallthrough;
 	default:
 		/* Restore LEDCTL settings */
 		ew32(LEDCTL, hw->ledctl_default);
diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index d9fa4600f745..978fc1d3bb2c 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -1143,7 +1143,7 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 				EEPROM_INIT_CONTROL3_PORT_B, 1, &eeprom_data);
 			break;
 		}
-		/* Fall Through */
+		fallthrough;
 	default:
 		e1000_read_eeprom(hw,
 			EEPROM_INIT_CONTROL3_PORT_A, 1, &eeprom_data);
diff --git a/drivers/net/ethernet/intel/e1000/e1000_param.c b/drivers/net/ethernet/intel/e1000/e1000_param.c
index d3f29ffe1e47..4d4f5bf1e516 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_param.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_param.c
@@ -708,7 +708,7 @@ static void e1000_check_copper_options(struct e1000_adapter *adapter)
 		goto full_duplex_only;
 	case SPEED_1000 + HALF_DUPLEX:
 		e_dev_info("Half Duplex is not supported at 1000 Mbps\n");
-		/* fall through */
+		fallthrough;
 	case SPEED_1000 + FULL_DUPLEX:
 full_duplex_only:
 		e_dev_info("Using Autonegotiation at 1000 Mbps Full Duplex "
diff --git a/drivers/net/ethernet/intel/e1000e/82571.c b/drivers/net/ethernet/intel/e1000e/82571.c
index 2c1bab377b2a..88faf05e23ba 100644
--- a/drivers/net/ethernet/intel/e1000e/82571.c
+++ b/drivers/net/ethernet/intel/e1000e/82571.c
@@ -154,7 +154,7 @@ static s32 e1000_init_nvm_params_82571(struct e1000_hw *hw)
 			ew32(EECD, eecd);
 			break;
 		}
-		/* Fall Through */
+		fallthrough;
 	default:
 		nvm->type = e1000_nvm_eeprom_spi;
 		size = (u16)((eecd & E1000_EECD_SIZE_EX_MASK) >>
@@ -1107,7 +1107,7 @@ static s32 e1000_init_hw_82571(struct e1000_hw *hw)
 	switch (mac->type) {
 	case e1000_82573:
 		e1000e_enable_tx_pkt_filtering(hw);
-		/* fall through */
+		fallthrough;
 	case e1000_82574:
 	case e1000_82583:
 		reg_data = er32(GCR);
diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 1d47e2503072..28ed7ad3b19a 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -895,7 +895,6 @@ static int e1000_reg_test(struct e1000_adapter *adapter, u64 *data)
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
-		/* fall through */
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 		mask |= BIT(18);
@@ -1571,7 +1570,7 @@ static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
 		/* set bit 29 (value of MULR requests is now 0) */
 		tarc0 &= 0xcfffffff;
 		ew32(TARC(0), tarc0);
-		/* fall through */
+		fallthrough;
 	case e1000_80003es2lan:
 		if (hw->phy.media_type == e1000_media_type_fiber ||
 		    hw->phy.media_type == e1000_media_type_internal_serdes) {
@@ -1579,7 +1578,7 @@ static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
 			ew32(CTRL_EXT, adapter->tx_fifo_head);
 			adapter->tx_fifo_head = 0;
 		}
-		/* fall through */
+		fallthrough;
 	case e1000_82571:
 	case e1000_82572:
 		if (hw->phy.media_type == e1000_media_type_fiber ||
@@ -1589,7 +1588,7 @@ static void e1000_loopback_cleanup(struct e1000_adapter *adapter)
 			usleep_range(10000, 11000);
 			break;
 		}
-		/* Fall Through */
+		fallthrough;
 	default:
 		hw->mac.autoneg = 1;
 		if (hw->phy.type == e1000_phy_gg82563)
@@ -2124,7 +2123,7 @@ static int e1000_get_rxnfc(struct net_device *netdev,
 		case TCP_V4_FLOW:
 			if (mrqc & E1000_MRQC_RSS_FIELD_IPV4_TCP)
 				info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-			/* fall through */
+			fallthrough;
 		case UDP_V4_FLOW:
 		case SCTP_V4_FLOW:
 		case AH_ESP_V4_FLOW:
@@ -2135,7 +2134,7 @@ static int e1000_get_rxnfc(struct net_device *netdev,
 		case TCP_V6_FLOW:
 			if (mrqc & E1000_MRQC_RSS_FIELD_IPV6_TCP)
 				info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-			/* fall through */
+			fallthrough;
 		case UDP_V6_FLOW:
 		case SCTP_V6_FLOW:
 		case AH_ESP_V6_FLOW:
diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index f999cca37a8a..991f2fe36208 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -337,13 +337,11 @@ static s32 e1000_init_phy_workarounds_pchlan(struct e1000_hw *hw)
 		 * attempts to acknowledge any phy read requests.
 		 */
 		msleep(50);
-
-		/* fall-through */
+		fallthrough;
 	case e1000_pch2lan:
 		if (e1000_phy_is_accessible_pchlan(hw))
 			break;
-
-		/* fall-through */
+		fallthrough;
 	case e1000_pchlan:
 		if ((hw->mac.type == e1000_pchlan) &&
 		    (fwsm & E1000_ICH_FWSM_FW_VALID))
@@ -459,7 +457,7 @@ static s32 e1000_init_phy_params_pchlan(struct e1000_hw *hw)
 				return ret_val;
 			if ((phy->id != 0) && (phy->id != PHY_REVISION_MASK))
 				break;
-			/* fall-through */
+			fallthrough;
 		case e1000_pch2lan:
 		case e1000_pch_lpt:
 		case e1000_pch_spt:
@@ -704,7 +702,7 @@ static s32 e1000_init_mac_params_ich8lan(struct e1000_hw *hw)
 	case e1000_pch2lan:
 		mac->rar_entry_count = E1000_PCH2_RAR_ENTRIES;
 		mac->ops.rar_set = e1000_rar_set_pch2lan;
-		/* fall-through */
+		fallthrough;
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
@@ -1559,7 +1557,7 @@ static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
 		ret_val = e1000_k1_workaround_lv(hw);
 		if (ret_val)
 			return ret_val;
-		/* fall-thru */
+		fallthrough;
 	case e1000_pchlan:
 		if (hw->phy.type == e1000_phy_82578) {
 			ret_val = e1000_link_stall_workaround_hv(hw);
@@ -2096,7 +2094,7 @@ static s32 e1000_sw_lcd_config_ich8lan(struct e1000_hw *hw)
 			sw_cfg_mask = E1000_FEXTNVM_SW_CONFIG;
 			break;
 		}
-		/* Fall-thru */
+		fallthrough;
 	case e1000_pchlan:
 	case e1000_pch2lan:
 	case e1000_pch_lpt:
@@ -3189,7 +3187,7 @@ static s32 e1000_valid_nvm_bank_detect_ich8lan(struct e1000_hw *hw, u32 *bank)
 			return 0;
 		}
 		e_dbg("Unable to determine valid NVM bank via EEC - reading flash signature\n");
-		/* fall-thru */
+		fallthrough;
 	default:
 		/* set bank to 0 in case flash read fails */
 		*bank = 0;
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index a279f4fa9962..862446c41dae 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -2111,7 +2111,7 @@ void e1000e_set_interrupt_capability(struct e1000_adapter *adapter)
 			e1000e_reset_interrupt_capability(adapter);
 		}
 		adapter->int_mode = E1000E_INT_MODE_MSI;
-		/* Fall through */
+		fallthrough;
 	case E1000E_INT_MODE_MSI:
 		if (!pci_enable_msi(adapter->pdev)) {
 			adapter->flags |= FLAG_MSI_ENABLED;
@@ -2119,7 +2119,7 @@ void e1000e_set_interrupt_capability(struct e1000_adapter *adapter)
 			adapter->int_mode = E1000E_INT_MODE_LEGACY;
 			e_err("Failed to initialize MSI interrupts.  Falling back to legacy interrupts.\n");
 		}
-		/* Fall through */
+		fallthrough;
 	case E1000E_INT_MODE_LEGACY:
 		/* Don't do anything; this is the system default */
 		break;
@@ -3177,10 +3177,10 @@ static void e1000_setup_rctl(struct e1000_adapter *adapter)
 		switch (adapter->rx_ps_pages) {
 		case 3:
 			psrctl |= PAGE_SIZE << E1000_PSRCTL_BSIZE3_SHIFT;
-			/* fall-through */
+			fallthrough;
 		case 2:
 			psrctl |= PAGE_SIZE << E1000_PSRCTL_BSIZE2_SHIFT;
-			/* fall-through */
+			fallthrough;
 		case 1:
 			psrctl |= PAGE_SIZE >> E1000_PSRCTL_BSIZE1_SHIFT;
 			break;
@@ -4060,7 +4060,7 @@ void e1000e_reset(struct e1000_adapter *adapter)
 			fc->low_water = fc->high_water - 8;
 			break;
 		}
-		/* fall-through */
+		fallthrough;
 	default:
 		hwm = min(((pba << 10) * 9 / 10),
 			  ((pba << 10) - adapter->max_frame_size));
@@ -4085,7 +4085,6 @@ void e1000e_reset(struct e1000_adapter *adapter)
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
-		/* fall-through */
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 		fc->refresh_time = 0xFFFF;
@@ -6764,7 +6763,7 @@ static void __e1000e_disable_aspm(struct pci_dev *pdev, u16 state, int locked)
 	case PCIE_LINK_STATE_L0S:
 	case PCIE_LINK_STATE_L0S | PCIE_LINK_STATE_L1:
 		aspm_dis_mask |= PCI_EXP_LNKCTL_ASPM_L0S;
-		/* fall-through - can't have L1 without L0s */
+		fallthrough;	/* can't have L1 without L0s */
 	case PCIE_LINK_STATE_L1:
 		aspm_dis_mask |= PCI_EXP_LNKCTL_ASPM_L1;
 		break;
diff --git a/drivers/net/ethernet/intel/e1000e/param.c b/drivers/net/ethernet/intel/e1000e/param.c
index 098369fd3e65..ebe121db4307 100644
--- a/drivers/net/ethernet/intel/e1000e/param.c
+++ b/drivers/net/ethernet/intel/e1000e/param.c
@@ -375,7 +375,7 @@ void e1000e_check_options(struct e1000_adapter *adapter)
 				 "%s Invalid mode - setting default\n",
 				 opt.name);
 			adapter->itr_setting = opt.def;
-			/* fall-through */
+			fallthrough;
 		case 3:
 			dev_info(&adapter->pdev->dev,
 				 "%s set to dynamic conservative mode\n",
diff --git a/drivers/net/ethernet/intel/e1000e/phy.c b/drivers/net/ethernet/intel/e1000e/phy.c
index 42233019255a..e11c877595fb 100644
--- a/drivers/net/ethernet/intel/e1000e/phy.c
+++ b/drivers/net/ethernet/intel/e1000e/phy.c
@@ -607,7 +607,7 @@ static s32 e1000_set_master_slave_mode(struct e1000_hw *hw)
 		break;
 	case e1000_ms_auto:
 		phy_data &= ~CTL1000_ENABLE_MASTER;
-		/* fall-through */
+		fallthrough;
 	default:
 		break;
 	}
diff --git a/drivers/net/ethernet/intel/e1000e/ptp.c b/drivers/net/ethernet/intel/e1000e/ptp.c
index 439fda2f5368..34b988d70488 100644
--- a/drivers/net/ethernet/intel/e1000e/ptp.c
+++ b/drivers/net/ethernet/intel/e1000e/ptp.c
@@ -295,7 +295,6 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
 	case e1000_pch_lpt:
 	case e1000_pch_spt:
 	case e1000_pch_cnp:
-		/* fall-through */
 	case e1000_pch_tgp:
 	case e1000_pch_adp:
 		if ((hw->mac.type < e1000_pch_lpt) ||
@@ -303,7 +302,7 @@ void e1000e_ptp_init(struct e1000_adapter *adapter)
 			adapter->ptp_clock_info.max_adj = 24000000 - 1;
 			break;
 		}
-		/* fall-through */
+		fallthrough;
 	case e1000_82574:
 	case e1000_82583:
 		adapter->ptp_clock_info.max_adj = 600000000 - 1;
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index 37fbc646deb9..15bc8fce426a 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -694,12 +694,12 @@ static int fm10k_get_rss_hash_opts(struct fm10k_intfc *interface,
 	case TCP_V4_FLOW:
 	case TCP_V6_FLOW:
 		cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* fall through */
+		fallthrough;
 	case UDP_V4_FLOW:
 		if (test_bit(FM10K_FLAG_RSS_FIELD_IPV4_UDP,
 			     interface->flags))
 			cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* fall through */
+		fallthrough;
 	case SCTP_V4_FLOW:
 	case SCTP_V6_FLOW:
 	case AH_ESP_V4_FLOW:
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_main.c b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
index 17738b0a9873..7dfb80b8f31b 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_main.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_main.c
@@ -859,7 +859,7 @@ static void fm10k_tx_csum(struct fm10k_ring *tx_ring,
 	case IPPROTO_GRE:
 		if (skb->encapsulation)
 			break;
-		/* fall through */
+		fallthrough;
 	default:
 		if (unlikely(net_ratelimit())) {
 			dev_warn(tx_ring->dev,
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
index 75e51f91036c..af849d011058 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c
@@ -966,8 +966,7 @@ static s32 fm10k_mbx_validate_msg_hdr(struct fm10k_mbx_info *mbx)
 		/* validate that all data has been received */
 		if (tail != mbx->head)
 			return FM10K_MBX_ERR_TAIL;
-
-		/* fall through */
+		fallthrough;
 	case FM10K_MSG_DATA:
 		/* validate that head is moving correctly */
 		if (!head || (head == FM10K_MSG_HDR_MASK(HEAD)))
@@ -986,8 +985,7 @@ static s32 fm10k_mbx_validate_msg_hdr(struct fm10k_mbx_info *mbx)
 		/* validate size is in range and is power of 2 mask */
 		if ((size < FM10K_VFMBX_MSG_MTU) || (size & (size + 1)))
 			return FM10K_MBX_ERR_SIZE;
-
-		/* fall through */
+		fallthrough;
 	case FM10K_MSG_ERROR:
 		if (!head || (head == FM10K_MSG_HDR_MASK(HEAD)))
 			return FM10K_MBX_ERR_HEAD;
@@ -1570,7 +1568,7 @@ s32 fm10k_pfvf_mbx_init(struct fm10k_hw *hw, struct fm10k_mbx_info *mbx,
 			mbx->mbmem_reg = FM10K_MBMEM_VF(id, 0);
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	default:
 		return FM10K_MBX_ERR_NO_MBX;
 	}
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c b/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
index 0637ccadee79..1450a9f98c5a 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_netdev.c
@@ -853,7 +853,7 @@ void fm10k_clear_macvlan_queue(struct fm10k_intfc *interface,
 			/* Don't free requests for other interfaces */
 			if (r->mac.glort != glort)
 				break;
-			/* fall through */
+			fallthrough;
 		case FM10K_VLAN_REQUEST:
 			if (vlans) {
 				list_del(&r->list);
diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
index be07bfdb0bb4..c0780c3624c8 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_pf.c
@@ -1317,19 +1317,19 @@ static u8 fm10k_iov_supported_xcast_mode_pf(struct fm10k_vf_info *vf_info,
 	case FM10K_XCAST_MODE_PROMISC:
 		if (vf_flags & FM10K_VF_FLAG_PROMISC_CAPABLE)
 			return FM10K_XCAST_MODE_PROMISC;
-		/* fall through */
+		fallthrough;
 	case FM10K_XCAST_MODE_ALLMULTI:
 		if (vf_flags & FM10K_VF_FLAG_ALLMULTI_CAPABLE)
 			return FM10K_XCAST_MODE_ALLMULTI;
-		/* fall through */
+		fallthrough;
 	case FM10K_XCAST_MODE_MULTI:
 		if (vf_flags & FM10K_VF_FLAG_MULTI_CAPABLE)
 			return FM10K_XCAST_MODE_MULTI;
-		/* fall through */
+		fallthrough;
 	case FM10K_XCAST_MODE_NONE:
 		if (vf_flags & FM10K_VF_FLAG_NONE_CAPABLE)
 			return FM10K_XCAST_MODE_NONE;
-		/* fall through */
+		fallthrough;
 	default:
 		break;
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 6a089848c857..c897a2863e4f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -541,7 +541,7 @@ static void i40e_set_hw_flags(struct i40e_hw *hw)
 		    (aq->api_maj_ver == 1 &&
 		     aq->api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_X722))
 			hw->flags |= I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE;
-		/* fall through */
+		fallthrough;
 	default:
 		break;
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index aa8026b1eb81..705c3d0b3c21 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -4101,7 +4101,7 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 	switch (fsp->flow_type & ~FLOW_EXT) {
 	case SCTP_V4_FLOW:
 		new_mask &= ~I40E_VERIFY_TAG_MASK;
-		/* Fall through */
+		fallthrough;
 	case TCP_V4_FLOW:
 	case UDP_V4_FLOW:
 		tcp_ip4_spec = &fsp->m_u.tcp_ip4_spec;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 5d807c8004f8..d069e6bc21ff 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1817,7 +1817,7 @@ static void i40e_vsi_setup_queue_map(struct i40e_vsi *vsi,
 						       num_tc_qps);
 					break;
 				}
-				/* fall through */
+				fallthrough;
 			case I40E_VSI_FDIR:
 			case I40E_VSI_SRIOV:
 			case I40E_VSI_VMDQ2:
@@ -13694,8 +13694,7 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 		/* Setup DCB netlink interface */
 		i40e_dcbnl_setup(vsi);
 #endif /* CONFIG_I40E_DCB */
-		/* fall through */
-
+		fallthrough;
 	case I40E_VSI_FDIR:
 		/* set up vectors and rings if needed */
 		ret = i40e_vsi_setup_vectors(vsi);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 9bf1ad4319f5..ff7b19c6bc73 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -586,7 +586,7 @@ static int i40e_ptp_set_timestamp_mode(struct i40e_pf *pf,
 	case HWTSTAMP_FILTER_PTP_V2_L4_DELAY_REQ:
 		if (!(pf->hw_features & I40E_HW_PTP_L4_CAPABLE))
 			return -ERANGE;
-		/* fall through */
+		fallthrough;
 	case HWTSTAMP_FILTER_PTP_V2_L2_EVENT:
 	case HWTSTAMP_FILTER_PTP_V2_L2_SYNC:
 	case HWTSTAMP_FILTER_PTP_V2_L2_DELAY_REQ:
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index f9555c847f73..911168a007fb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1690,7 +1690,7 @@ static inline void i40e_rx_checksum(struct i40e_vsi *vsi,
 	case I40E_RX_PTYPE_INNER_PROT_UDP:
 	case I40E_RX_PTYPE_INNER_PROT_SCTP:
 		skb->ip_summed = CHECKSUM_UNNECESSARY;
-		/* fall though */
+		fallthrough;
 	default:
 		break;
 	}
@@ -2210,10 +2210,10 @@ static struct sk_buff *i40e_run_xdp(struct i40e_ring *rx_ring,
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
-		/* fall through */
+		fallthrough;
 	case XDP_ABORTED:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
-		/* fall through -- handle aborts by dropping packet */
+		fallthrough;	/* handle aborts by dropping packet */
 	case XDP_DROP:
 		result = I40E_XDP_CONSUMED;
 		break;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index 7276580cbe64..5b0a0a4f5ad0 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -168,10 +168,10 @@ static int i40e_run_xdp_zc(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
-		/* fall through */
+		fallthrough;
 	case XDP_ABORTED:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
-		/* fallthrough -- handle aborts by dropping packet */
+		fallthrough;	/* handle aborts by dropping packet */
 	case XDP_DROP:
 		result = I40E_XDP_CONSUMED;
 		break;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 7a30d5d5ef53..17a405da9d16 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1007,7 +1007,7 @@ static inline void iavf_rx_checksum(struct iavf_vsi *vsi,
 	case IAVF_RX_PTYPE_INNER_PROT_UDP:
 	case IAVF_RX_PTYPE_INNER_PROT_SCTP:
 		skb->ip_summed = CHECKSUM_UNNECESSARY;
-		/* fall though */
+		fallthrough;
 	default:
 		break;
 	}
diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.c b/drivers/net/ethernet/intel/igb/e1000_82575.c
index 438b42ce2cd9..1ad4bf0f99d2 100644
--- a/drivers/net/ethernet/intel/igb/e1000_82575.c
+++ b/drivers/net/ethernet/intel/igb/e1000_82575.c
@@ -638,7 +638,7 @@ static s32 igb_get_invariants_82575(struct e1000_hw *hw)
 			dev_spec->sgmii_active = true;
 			break;
 		}
-		/* fall through - for I2C based SGMII */
+		fallthrough;	/* for I2C based SGMII */
 	case E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES:
 		/* read media type from SFP EEPROM */
 		ret_val = igb_set_sfp_media_type_82575(hw);
@@ -1704,7 +1704,7 @@ static s32 igb_setup_serdes_link_82575(struct e1000_hw *hw)
 	case E1000_CTRL_EXT_LINK_MODE_1000BASE_KX:
 		/* disable PCS autoneg and support parallel detect only */
 		pcs_autoneg = false;
-		/* fall through */
+		fallthrough;
 	default:
 		if (hw->mac.type == e1000_82575 ||
 		    hw->mac.type == e1000_82576) {
diff --git a/drivers/net/ethernet/intel/igb/e1000_nvm.c b/drivers/net/ethernet/intel/igb/e1000_nvm.c
index 09f4dcb09632..fa136e6e9328 100644
--- a/drivers/net/ethernet/intel/igb/e1000_nvm.c
+++ b/drivers/net/ethernet/intel/igb/e1000_nvm.c
@@ -721,7 +721,7 @@ void igb_get_fw_version(struct e1000_hw *hw, struct e1000_fw_version *fw_vers)
 			igb_read_invm_version(hw, fw_vers);
 			return;
 		}
-		/* fall through */
+		fallthrough;
 	case e1000_i350:
 		/* find combo image version */
 		hw->nvm.ops.read(hw, NVM_COMB_VER_PTR, 1, &comb_offset);
diff --git a/drivers/net/ethernet/intel/igb/e1000_phy.c b/drivers/net/ethernet/intel/igb/e1000_phy.c
index ad2125e5a7f7..8c8eb82e6272 100644
--- a/drivers/net/ethernet/intel/igb/e1000_phy.c
+++ b/drivers/net/ethernet/intel/igb/e1000_phy.c
@@ -659,7 +659,7 @@ s32 igb_copper_link_setup_m88_gen2(struct e1000_hw *hw)
 			phy_data |= M88E1000_PSCR_AUTO_X_1000T;
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	case 0:
 	default:
 		phy_data |= M88E1000_PSCR_AUTO_X_MODE;
@@ -2621,7 +2621,7 @@ static s32 igb_set_master_slave_mode(struct e1000_hw *hw)
 		break;
 	case e1000_ms_auto:
 		phy_data &= ~CR_1000T_MS_ENABLE;
-		/* fall-through */
+		fallthrough;
 	default:
 		break;
 	}
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 2cd003c5ad43..93ceaaa874e3 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -2518,11 +2518,11 @@ static int igb_get_rss_hash_opts(struct igb_adapter *adapter,
 	switch (cmd->flow_type) {
 	case TCP_V4_FLOW:
 		cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* Fall through */
+		fallthrough;
 	case UDP_V4_FLOW:
 		if (adapter->flags & IGB_FLAG_RSS_FIELD_IPV4_UDP)
 			cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* Fall through */
+		fallthrough;
 	case SCTP_V4_FLOW:
 	case AH_ESP_V4_FLOW:
 	case AH_V4_FLOW:
@@ -2532,11 +2532,11 @@ static int igb_get_rss_hash_opts(struct igb_adapter *adapter,
 		break;
 	case TCP_V6_FLOW:
 		cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* Fall through */
+		fallthrough;
 	case UDP_V6_FLOW:
 		if (adapter->flags & IGB_FLAG_RSS_FIELD_IPV6_UDP)
 			cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* Fall through */
+		fallthrough;
 	case SCTP_V6_FLOW:
 	case AH_ESP_V6_FLOW:
 	case AH_V6_FLOW:
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 8bb3db2cbd41..337e9e2042d5 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -720,14 +720,13 @@ static void igb_cache_ring_register(struct igb_adapter *adapter)
 				adapter->rx_ring[i]->reg_idx = rbase_offset +
 							       Q_IDX_82576(i);
 		}
-		/* Fall through */
+		fallthrough;
 	case e1000_82575:
 	case e1000_82580:
 	case e1000_i350:
 	case e1000_i354:
 	case e1000_i210:
 	case e1000_i211:
-		/* Fall through */
 	default:
 		for (; i < adapter->num_rx_queues; i++)
 			adapter->rx_ring[i]->reg_idx = rbase_offset + i;
@@ -2882,7 +2881,7 @@ void igb_set_fw_version(struct igb_adapter *adapter)
 				 fw.invm_img_type);
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	default:
 		/* if option is rom valid, display its version too */
 		if (fw.or_valid) {
@@ -3733,13 +3732,13 @@ unsigned int igb_get_max_rss_queues(struct igb_adapter *adapter)
 			max_rss_queues = 1;
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	case e1000_82576:
 		if (!!adapter->vfs_allocated_count) {
 			max_rss_queues = 2;
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	case e1000_82580:
 	case e1000_i354:
 	default:
@@ -4878,14 +4877,14 @@ static int igb_vlan_promisc_enable(struct igb_adapter *adapter)
 		/* VLAN filtering needed for VLAN prio filter */
 		if (adapter->netdev->features & NETIF_F_NTUPLE)
 			break;
-		/* fall through */
+		fallthrough;
 	case e1000_82576:
 	case e1000_82580:
 	case e1000_i354:
 		/* VLAN filtering needed for pool filtering */
 		if (adapter->vfs_allocated_count)
 			break;
-		/* fall through */
+		fallthrough;
 	default:
 		return 1;
 	}
@@ -5165,7 +5164,7 @@ bool igb_has_link(struct igb_adapter *adapter)
 	case e1000_media_type_copper:
 		if (!hw->mac.get_link_status)
 			return true;
-		/* fall through */
+		fallthrough;
 	case e1000_media_type_internal_serdes:
 		hw->mac.ops.check_for_link(hw);
 		link_active = !hw->mac.get_link_status;
@@ -5825,7 +5824,7 @@ static void igb_tx_csum(struct igb_ring *tx_ring, struct igb_tx_buffer *first)
 	switch (skb->csum_offset) {
 	case offsetof(struct tcphdr, check):
 		type_tucmd = E1000_ADVTXD_TUCMD_L4T_TCP;
-		/* fall through */
+		fallthrough;
 	case offsetof(struct udphdr, check):
 		break;
 	case offsetof(struct sctphdr, checksum):
@@ -5837,7 +5836,7 @@ static void igb_tx_csum(struct igb_ring *tx_ring, struct igb_tx_buffer *first)
 			type_tucmd = E1000_ADVTXD_TUCMD_L4T_SCTP;
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	default:
 		skb_checksum_help(skb);
 		goto csum_failed;
@@ -6715,7 +6714,7 @@ static int __igb_notify_dca(struct device *dev, void *data)
 			igb_setup_dca(adapter);
 			break;
 		}
-		/* Fall Through - since DCA is disabled. */
+		fallthrough;	/* since DCA is disabled */
 	case DCA_PROVIDER_REMOVE:
 		if (adapter->flags & IGB_FLAG_DCA_ENABLED) {
 			/* without this a class_device is left
@@ -9384,13 +9383,13 @@ static void igb_vmm_control(struct igb_adapter *adapter)
 		reg = rd32(E1000_DTXCTL);
 		reg |= E1000_DTXCTL_VLAN_ADDED;
 		wr32(E1000_DTXCTL, reg);
-		/* Fall through */
+		fallthrough;
 	case e1000_82580:
 		/* enable replication vlan tag stripping */
 		reg = rd32(E1000_RPLOLR);
 		reg |= E1000_RPLOLR_STRVLAN;
 		wr32(E1000_RPLOLR, reg);
-		/* Fall through */
+		fallthrough;
 	case e1000_i350:
 		/* none of the above registers are supported by i350 */
 		break;
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index c39e921757ba..490368d3d03c 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -1053,7 +1053,7 @@ static int igb_ptp_set_timestamp_mode(struct igb_adapter *adapter,
 			config->rx_filter = HWTSTAMP_FILTER_ALL;
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	default:
 		config->rx_filter = HWTSTAMP_FILTER_NONE;
 		return -ERANGE;
diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c b/drivers/net/ethernet/intel/igbvf/netdev.c
index 5b1800c3ba82..715307b79b0b 100644
--- a/drivers/net/ethernet/intel/igbvf/netdev.c
+++ b/drivers/net/ethernet/intel/igbvf/netdev.c
@@ -2093,7 +2093,7 @@ static bool igbvf_tx_csum(struct igbvf_ring *tx_ring, struct sk_buff *skb,
 	switch (skb->csum_offset) {
 	case offsetof(struct tcphdr, check):
 		type_tucmd = E1000_ADVTXD_TUCMD_L4T_TCP;
-		/* fall through */
+		fallthrough;
 	case offsetof(struct udphdr, check):
 		break;
 	case offsetof(struct sctphdr, checksum):
@@ -2105,7 +2105,7 @@ static bool igbvf_tx_csum(struct igbvf_ring *tx_ring, struct sk_buff *skb,
 			type_tucmd = E1000_ADVTXD_TUCMD_L4T_SCTP;
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	default:
 		skb_checksum_help(skb);
 		goto csum_failed;
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index a938ec8db681..e77c660f98d2 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1015,37 +1015,29 @@ static int igc_ethtool_get_rss_hash_opts(struct igc_adapter *adapter,
 	switch (cmd->flow_type) {
 	case TCP_V4_FLOW:
 		cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* Fall through */
+		fallthrough;
 	case UDP_V4_FLOW:
 		if (adapter->flags & IGC_FLAG_RSS_FIELD_IPV4_UDP)
 			cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* Fall through */
+		fallthrough;
 	case SCTP_V4_FLOW:
-		/* Fall through */
 	case AH_ESP_V4_FLOW:
-		/* Fall through */
 	case AH_V4_FLOW:
-		/* Fall through */
 	case ESP_V4_FLOW:
-		/* Fall through */
 	case IPV4_FLOW:
 		cmd->data |= RXH_IP_SRC | RXH_IP_DST;
 		break;
 	case TCP_V6_FLOW:
 		cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* Fall through */
+		fallthrough;
 	case UDP_V6_FLOW:
 		if (adapter->flags & IGC_FLAG_RSS_FIELD_IPV6_UDP)
 			cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* Fall through */
+		fallthrough;
 	case SCTP_V6_FLOW:
-		/* Fall through */
 	case AH_ESP_V6_FLOW:
-		/* Fall through */
 	case AH_V6_FLOW:
-		/* Fall through */
 	case ESP_V6_FLOW:
-		/* Fall through */
 	case IPV6_FLOW:
 		cmd->data |= RXH_IP_SRC | RXH_IP_DST;
 		break;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 6919c50e449a..0eba0c0cf983 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -980,7 +980,7 @@ static void igc_tx_csum(struct igc_ring *tx_ring, struct igc_tx_buffer *first)
 	switch (skb->csum_offset) {
 	case offsetof(struct tcphdr, check):
 		type_tucmd = IGC_ADVTXD_TUCMD_L4T_TCP;
-		/* fall through */
+		fallthrough;
 	case offsetof(struct udphdr, check):
 		break;
 	case offsetof(struct sctphdr, checksum):
@@ -992,7 +992,7 @@ static void igc_tx_csum(struct igc_ring *tx_ring, struct igc_tx_buffer *first)
 			type_tucmd = IGC_ADVTXD_TUCMD_L4T_SCTP;
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	default:
 		skb_checksum_help(skb);
 		goto csum_failed;
@@ -3284,7 +3284,6 @@ static void igc_cache_ring_register(struct igc_adapter *adapter)
 
 	switch (adapter->hw.mac.type) {
 	case igc_i225:
-	/* Fall through */
 	default:
 		for (; i < adapter->num_rx_queues; i++)
 			adapter->rx_ring[i]->reg_idx = i;
diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 0d746f8588c8..c2c9361dd62e 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -353,7 +353,7 @@ static int igc_ptp_set_timestamp_mode(struct igc_adapter *adapter,
 		tsync_rx_ctl |= IGC_TSYNCRXCTL_TYPE_ALL;
 		config->rx_filter = HWTSTAMP_FILTER_ALL;
 		break;
-		/* fall through */
+		fallthrough;
 	default:
 		config->rx_filter = HWTSTAMP_FILTER_NONE;
 		return -ERANGE;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
index eee277c1bedf..95c92fe890a1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
@@ -1098,7 +1098,7 @@ static void ixgbe_set_rxpba_82598(struct ixgbe_hw *hw, int num_pb,
 			IXGBE_WRITE_REG(hw, IXGBE_RXPBSIZE(i), rxpktsize);
 		/* Setup the last four at 48KB...don't re-init i */
 		rxpktsize = IXGBE_RXPBSIZE_48KB;
-		/* Fall Through */
+		fallthrough;
 	case PBA_STRATEGY_EQUAL:
 	default:
 		/* Divide the remaining Rx packet buffer evenly among the TCs */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
index 109f8de5a1c2..8d3798a32f0e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
@@ -1568,7 +1568,7 @@ s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 	case 0x0000:
 		/* mask VLAN ID */
 		fdirm |= IXGBE_FDIRM_VLANID;
-		/* fall through */
+		fallthrough;
 	case 0x0FFF:
 		/* mask VLAN priority */
 		fdirm |= IXGBE_FDIRM_VLANP;
@@ -1576,7 +1576,7 @@ s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 	case 0xE000:
 		/* mask VLAN ID only */
 		fdirm |= IXGBE_FDIRM_VLANID;
-		/* fall through */
+		fallthrough;
 	case 0xEFFF:
 		/* no VLAN fields masked */
 		break;
@@ -1589,7 +1589,7 @@ s32 ixgbe_fdir_set_input_mask_82599(struct ixgbe_hw *hw,
 	case 0x0000:
 		/* Mask Flex Bytes */
 		fdirm |= IXGBE_FDIRM_FLEX;
-		/* fall through */
+		fallthrough;
 	case 0xFFFF:
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 17357a12cbdc..4116250c2033 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -144,8 +144,7 @@ s32 ixgbe_setup_fc_generic(struct ixgbe_hw *hw)
 		ret_val = hw->mac.ops.prot_autoc_read(hw, &locked, &reg_bp);
 		if (ret_val)
 			return ret_val;
-
-		/* fall through - only backplane uses autoc */
+		fallthrough;	/* only backplane uses autoc */
 	case ixgbe_media_type_fiber:
 		reg = IXGBE_READ_REG(hw, IXGBE_PCS1GANA);
 
@@ -3533,7 +3532,7 @@ void ixgbe_set_rxpba_generic(struct ixgbe_hw *hw,
 		rxpktsize <<= IXGBE_RXPBSIZE_SHIFT;
 		for (; i < (num_pb / 2); i++)
 			IXGBE_WRITE_REG(hw, IXGBE_RXPBSIZE(i), rxpktsize);
-		/* fall through - configure remaining packet buffers */
+		fallthrough;	/* configure remaining packet buffers */
 	case (PBA_STRATEGY_EQUAL):
 		/* Divide the remaining Rx packet buffer evenly among the TCs */
 		rxpktsize = (pbsize / (num_pb - i)) << IXGBE_RXPBSIZE_SHIFT;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index c6bf0a50ee63..6a596c31f26c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -2509,11 +2509,11 @@ static int ixgbe_get_rss_hash_opts(struct ixgbe_adapter *adapter,
 	switch (cmd->flow_type) {
 	case TCP_V4_FLOW:
 		cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* fallthrough */
+		fallthrough;
 	case UDP_V4_FLOW:
 		if (adapter->flags2 & IXGBE_FLAG2_RSS_FIELD_IPV4_UDP)
 			cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* fallthrough */
+		fallthrough;
 	case SCTP_V4_FLOW:
 	case AH_ESP_V4_FLOW:
 	case AH_V4_FLOW:
@@ -2523,11 +2523,11 @@ static int ixgbe_get_rss_hash_opts(struct ixgbe_adapter *adapter,
 		break;
 	case TCP_V6_FLOW:
 		cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* fallthrough */
+		fallthrough;
 	case UDP_V6_FLOW:
 		if (adapter->flags2 & IXGBE_FLAG2_RSS_FIELD_IPV6_UDP)
 			cmd->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
-		/* fallthrough */
+		fallthrough;
 	case SCTP_V6_FLOW:
 	case AH_ESP_V6_FLOW:
 	case AH_V6_FLOW:
@@ -2659,7 +2659,7 @@ static int ixgbe_flowspec_to_flow_type(struct ethtool_rx_flow_spec *fsp,
 				*flow_type = IXGBE_ATR_FLOW_TYPE_IPV4;
 				break;
 			}
-			/* fall through */
+			fallthrough;
 		default:
 			return 0;
 		}
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index f162b8b8f345..a22fd8efd622 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -1397,7 +1397,7 @@ static int __ixgbe_notify_dca(struct device *dev, void *data)
 					IXGBE_DCA_CTRL_DCA_MODE_CB2);
 			break;
 		}
-		/* fall through - DCA is disabled. */
+		fallthrough;	/* DCA is disabled */
 	case DCA_PROVIDER_REMOVE:
 		if (adapter->flags & IXGBE_FLAG_DCA_ENABLED) {
 			dca_remove_requester(dev);
@@ -2231,10 +2231,10 @@ static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
-		/* fallthrough */
+		fallthrough;
 	case XDP_ABORTED:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
-		/* fallthrough -- handle aborts by dropping packet */
+		fallthrough;	/* handle aborts by dropping packet */
 	case XDP_DROP:
 		result = IXGBE_XDP_CONSUMED;
 		break;
@@ -3009,7 +3009,7 @@ static inline void ixgbe_irq_enable(struct ixgbe_adapter *adapter, bool queues,
 	case ixgbe_mac_82599EB:
 		mask |= IXGBE_EIMS_GPI_SDP1(hw);
 		mask |= IXGBE_EIMS_GPI_SDP2(hw);
-		/* fall through */
+		fallthrough;
 	case ixgbe_mac_X540:
 	case ixgbe_mac_X550:
 	case ixgbe_mac_X550EM_x:
@@ -3315,7 +3315,7 @@ static irqreturn_t ixgbe_intr(int irq, void *data)
 	switch (hw->mac.type) {
 	case ixgbe_mac_82599EB:
 		ixgbe_check_sfp_event(adapter, eicr);
-		/* Fall through */
+		fallthrough;
 	case ixgbe_mac_X540:
 	case ixgbe_mac_X550:
 	case ixgbe_mac_X550EM_x:
@@ -4337,7 +4337,7 @@ static void ixgbe_setup_rdrxctl(struct ixgbe_adapter *adapter)
 	case ixgbe_mac_x550em_a:
 		if (adapter->num_vfs)
 			rdrxctl |= IXGBE_RDRXCTL_PSP;
-		/* fall through */
+		fallthrough;
 	case ixgbe_mac_82599EB:
 	case ixgbe_mac_X540:
 		/* Disable RSC for ACK packets */
@@ -5887,7 +5887,7 @@ void ixgbe_disable_tx(struct ixgbe_adapter *adapter)
 		IXGBE_WRITE_REG(hw, IXGBE_DMATXCTL,
 				(IXGBE_READ_REG(hw, IXGBE_DMATXCTL) &
 				 ~IXGBE_DMATXCTL_TE));
-		/* fall through */
+		fallthrough;
 	default:
 		break;
 	}
@@ -6339,7 +6339,7 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
 		default:
 			break;
 		}
-	/* fall through */
+		fallthrough;
 	case ixgbe_mac_X550EM_x:
 #ifdef CONFIG_IXGBE_DCB
 		adapter->flags &= ~IXGBE_FLAG_DCB_CAPABLE;
@@ -6350,7 +6350,7 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
 		adapter->fcoe.up = 0;
 #endif /* IXGBE_DCB */
 #endif /* IXGBE_FCOE */
-	/* Fall Through */
+		fallthrough;
 	case ixgbe_mac_X550:
 		if (hw->mac.type == ixgbe_mac_X550)
 			adapter->flags2 |= IXGBE_FLAG2_TEMP_SENSOR_CAPABLE;
@@ -7162,7 +7162,7 @@ void ixgbe_update_stats(struct ixgbe_adapter *adapter)
 		hwstats->o2bspc += IXGBE_READ_REG(hw, IXGBE_O2BSPC);
 		hwstats->b2ospc += IXGBE_READ_REG(hw, IXGBE_B2OSPC);
 		hwstats->b2ogprc += IXGBE_READ_REG(hw, IXGBE_B2OGPRC);
-		/* fall through */
+		fallthrough;
 	case ixgbe_mac_82599EB:
 		for (i = 0; i < 16; i++)
 			adapter->hw_rx_no_dma_resources +=
@@ -8071,7 +8071,7 @@ static void ixgbe_tx_csum(struct ixgbe_ring *tx_ring,
 	switch (skb->csum_offset) {
 	case offsetof(struct tcphdr, check):
 		type_tucmd = IXGBE_ADVTXD_TUCMD_L4T_TCP;
-		/* fall through */
+		fallthrough;
 	case offsetof(struct udphdr, check):
 		break;
 	case offsetof(struct sctphdr, checksum):
@@ -8083,7 +8083,7 @@ static void ixgbe_tx_csum(struct ixgbe_ring *tx_ring,
 			type_tucmd = IXGBE_ADVTXD_TUCMD_L4T_SCTP;
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	default:
 		skb_checksum_help(skb);
 		goto csum_failed;
@@ -8526,7 +8526,7 @@ static u16 ixgbe_select_queue(struct net_device *dev, struct sk_buff *skb,
 
 		if (!sb_dev && (adapter->flags & IXGBE_FLAG_FCOE_ENABLED))
 			break;
-		/* fall through */
+		fallthrough;
 	default:
 		return netdev_pick_tx(dev, skb, sb_dev);
 	}
@@ -8860,7 +8860,7 @@ static int ixgbe_ioctl(struct net_device *netdev, struct ifreq *req, int cmd)
 	case SIOCGMIIPHY:
 		if (!adapter->hw.phy.ops.read_reg)
 			return -EOPNOTSUPP;
-		/* fall through */
+		fallthrough;
 	default:
 		return mdio_mii_ioctl(&adapter->hw.phy.mdio, if_mii(req), cmd);
 	}
@@ -10650,7 +10650,7 @@ bool ixgbe_wol_supported(struct ixgbe_adapter *adapter, u16 device_id,
 			/* only support first port */
 			if (hw->bus.func != 0)
 				break;
-			/* fall through */
+			fallthrough;
 		case IXGBE_SUBDEV_ID_82599_SP_560FLR:
 		case IXGBE_SUBDEV_ID_82599_SFP:
 		case IXGBE_SUBDEV_ID_82599_RNDC:
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
index 0be13a90ff79..22a874eee2e8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
@@ -1051,7 +1051,7 @@ static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
 			adapter->flags |= IXGBE_FLAG_RX_HWTSTAMP_ENABLED;
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	default:
 		/*
 		 * register RXMTRL must be set in order to do V1 packets,
@@ -1242,7 +1242,7 @@ void ixgbe_ptp_start_cyclecounter(struct ixgbe_adapter *adapter)
 			cc.mult = 3;
 			cc.shift = 2;
 		}
-		/* fallthrough */
+		fallthrough;
 	case ixgbe_mac_x550em_a:
 	case ixgbe_mac_X550:
 		cc.read = ixgbe_ptp_read_X550;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index d05a5690e66b..23a92656821d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -503,7 +503,7 @@ static s32 ixgbe_set_vf_lpe(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 			 */
 			if (pf_max_frame > ETH_FRAME_LEN)
 				break;
-			/* fall through */
+			fallthrough;
 		default:
 			/* If the PF or VF are running w/ jumbo frames enabled
 			 * we need to shut down the VF Rx path as we cannot
@@ -1141,7 +1141,7 @@ static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
 		/* promisc introduced in 1.3 version */
 		if (xcast_mode == IXGBEVF_XCAST_MODE_PROMISC)
 			return -EOPNOTSUPP;
-		/* Fall through */
+		fallthrough;
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
 		break;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
index 9c42f741ed5e..5e339afa682a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c
@@ -306,7 +306,7 @@ static s32 ixgbe_identify_phy_x550em(struct ixgbe_hw *hw)
 		hw->phy.phy_semaphore_mask = IXGBE_GSSR_SHARED_I2C_SM;
 		ixgbe_setup_mux_ctl(hw);
 		ixgbe_check_cs4227(hw);
-		/* Fallthrough */
+		fallthrough;
 	case IXGBE_DEV_ID_X550EM_A_SFP_N:
 		return ixgbe_identify_module_generic(hw);
 	case IXGBE_DEV_ID_X550EM_X_KX4:
@@ -325,7 +325,7 @@ static s32 ixgbe_identify_phy_x550em(struct ixgbe_hw *hw)
 			hw->phy.phy_semaphore_mask = IXGBE_GSSR_PHY1_SM;
 		else
 			hw->phy.phy_semaphore_mask = IXGBE_GSSR_PHY0_SM;
-		/* Fallthrough */
+		fallthrough;
 	case IXGBE_DEV_ID_X550EM_X_10G_T:
 		return ixgbe_identify_phy_generic(hw);
 	case IXGBE_DEV_ID_X550EM_X_1G_T:
@@ -2303,7 +2303,7 @@ static s32 ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
 					break;
 				}
 			}
-			/* fall through */
+			fallthrough;
 		default:
 			*speed = IXGBE_LINK_SPEED_10GB_FULL |
 				 IXGBE_LINK_SPEED_1GB_FULL;
@@ -2885,7 +2885,7 @@ static s32 ixgbe_setup_fc_x550em(struct ixgbe_hw *hw)
 		 * through to the fc_full statement.  Later, we will
 		 * disable the adapter's ability to send PAUSE frames.
 		 */
-		/* Fallthrough */
+		fallthrough;
 	case ixgbe_fc_full:
 		pause = true;
 		asm_dir = true;
@@ -3284,7 +3284,7 @@ static enum ixgbe_media_type ixgbe_get_media_type_X550em(struct ixgbe_hw *hw)
 	case IXGBE_DEV_ID_X550EM_A_SGMII:
 	case IXGBE_DEV_ID_X550EM_A_SGMII_L:
 		hw->phy.type = ixgbe_phy_sgmii;
-		/* Fallthrough */
+		fallthrough;
 	case IXGBE_DEV_ID_X550EM_X_KR:
 	case IXGBE_DEV_ID_X550EM_X_KX4:
 	case IXGBE_DEV_ID_X550EM_X_XFI:
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index be9d2a8da515..89b0886eb9ae 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -120,10 +120,10 @@ static int ixgbe_run_xdp_zc(struct ixgbe_adapter *adapter,
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
-		/* fallthrough */
+		fallthrough;
 	case XDP_ABORTED:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
-		/* fallthrough -- handle aborts by dropping packet */
+		fallthrough;	/* handle aborts by dropping packet */
 	case XDP_DROP:
 		result = IXGBE_XDP_CONSUMED;
 		break;
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index a39e2cb384dd..453887462894 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -1082,10 +1082,10 @@ static struct sk_buff *ixgbevf_run_xdp(struct ixgbevf_adapter *adapter,
 		break;
 	default:
 		bpf_warn_invalid_xdp_action(act);
-		/* fallthrough */
+		fallthrough;
 	case XDP_ABORTED:
 		trace_xdp_exception(rx_ring->netdev, xdp_prog, act);
-		/* fallthrough -- handle aborts by dropping packet */
+		fallthrough;	/* handle aborts by dropping packet */
 	case XDP_DROP:
 		result = IXGBEVF_XDP_CONSUMED;
 		break;
@@ -3877,7 +3877,7 @@ static void ixgbevf_tx_csum(struct ixgbevf_ring *tx_ring,
 	switch (skb->csum_offset) {
 	case offsetof(struct tcphdr, check):
 		type_tucmd = IXGBE_ADVTXD_TUCMD_L4T_TCP;
-		/* fall through */
+		fallthrough;
 	case offsetof(struct udphdr, check):
 		break;
 	case offsetof(struct sctphdr, checksum):
@@ -3889,7 +3889,7 @@ static void ixgbevf_tx_csum(struct ixgbevf_ring *tx_ring,
 			type_tucmd = IXGBE_ADVTXD_TUCMD_L4T_SCTP;
 			break;
 		}
-		/* fall through */
+		fallthrough;
 	default:
 		skb_checksum_help(skb);
 		goto no_csum;
diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
index d5ce49636548..bfe6dfcec4ab 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.c
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
@@ -314,7 +314,7 @@ int ixgbevf_get_reta_locked(struct ixgbe_hw *hw, u32 *reta, int num_rx_queues)
 	case ixgbe_mbox_api_12:
 		if (hw->mac.type < ixgbe_mac_X550_vf)
 			break;
-		/* fall through */
+		fallthrough;
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -382,7 +382,7 @@ int ixgbevf_get_rss_key_locked(struct ixgbe_hw *hw, u8 *rss_key)
 	case ixgbe_mbox_api_12:
 		if (hw->mac.type < ixgbe_mac_X550_vf)
 			break;
-		/* fall through */
+		fallthrough;
 	default:
 		return -EOPNOTSUPP;
 	}
@@ -540,7 +540,7 @@ static s32 ixgbevf_update_xcast_mode(struct ixgbe_hw *hw, int xcast_mode)
 		/* promisc introduced in 1.3 version */
 		if (xcast_mode == IXGBEVF_XCAST_MODE_PROMISC)
 			return -EOPNOTSUPP;
-		/* Fall threw */
+		fallthrough;
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
 		break;

--=-tVicjtMItgOYRKtQaaAv
Content-Type: application/x-perl; name="cvt_fallthrough.pl"
Content-Disposition: attachment; filename="cvt_fallthrough.pl"
Content-Transfer-Encoding: base64

IyEvdXNyL2Jpbi9wZXJsIC13CgojIHNjcmlwdCB0byBtb2RpZnkgLyogZmFsbHRocm91Z2ggKi8g
c3R5bGUgY29tbWVudHMgdG8gZmFsbHRocm91Z2g7CiMgdXNlOiBwZXJsIGN2dF9mYWxsdGhyb3Vn
aC5wbCA8cGF0aHN8ZmlsZXM+CiMgZS5nLjogcGVybCBjdnRmYWxsdGhyb3VnaC5wbCBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbAoKdXNlIHN0cmljdDsKCm15ICRQID0gJDA7Cm15ICRtb2RpZmll
ZCA9IDA7Cm15ICRxdWlldCA9IDA7CgpzdWIgZXhwYW5kX3RhYnMgewogICAgbXkgKCRzdHIpID0g
QF87CgogICAgbXkgJHJlcyA9ICcnOwogICAgbXkgJG4gPSAwOwogICAgZm9yIG15ICRjIChzcGxp
dCgvLywgJHN0cikpIHsKCWlmICgkYyBlcSAiXHQiKSB7CgkgICAgJHJlcyAuPSAnICc7CgkgICAg
JG4rKzsKCSAgICBmb3IgKDsgKCRuICUgOCkgIT0gMDsgJG4rKykgewoJCSRyZXMgLj0gJyAnOwoJ
ICAgIH0KCSAgICBuZXh0OwoJfQoJJHJlcyAuPSAkYzsKCSRuKys7CiAgICB9CgogICAgcmV0dXJu
ICRyZXM7Cn0KCm15ICRhcmdzID0gam9pbigiICIsIEBBUkdWKTsKbXkgJG91dHB1dCA9IGBnaXQg
bHMtZmlsZXMgLS0gJGFyZ3NgOwpteSBAZmlsZXMgPSBzcGxpdCgiXG4iLCAkb3V0cHV0KTsKCmZv
cmVhY2ggbXkgJGZpbGUgKEBmaWxlcykgewogICAgbXkgJGY7CiAgICBteSAkY3Z0ID0gMDsKICAg
IG15ICRkZWwgPSAwOwogICAgbXkgJHRleHQ7CgojIHJlYWQgdGhlIGZpbGUKCiAgICBuZXh0IGlm
ICgoLWQgJGZpbGUpKTsKCiAgICBvcGVuKCRmLCAnPCcsICRmaWxlKQoJb3IgZGllICIkUDogQ2Fu
J3Qgb3BlbiAkZmlsZSBmb3IgcmVhZFxuIjsKICAgICR0ZXh0ID0gZG8geyBsb2NhbCgkLykgOyA8
JGY+IH07CiAgICBjbG9zZSgkZik7CgogICAgbmV4dCBpZiAoJHRleHQgZXEgIiIpOwoKICAgICMg
Zm9yIHN0eWxlOgoKICAgICMgLyogPGZhbGx0aHJvdWdoIGNvbW1lbnQ+ICovCiAgICAjIGNhc2Ug
Rk9POgoKICAgICMgd2hpbGUgKGNvbW1lbnQgaGFzIGZhbGx0aHJvdWdoIGFuZCBuZXh0IG5vbi1i
bGFuaywgbm9uLWNvbnRpbnVhdGlvbiBsaW5lIGlzIChjYXNlIG9yIGRlZmF1bHQ6KSkgewogICAg
IyAgIHJlbW92ZSBuZXdsaW5lLCB3aGl0ZXNwYWNlIGJlZm9yZSwgZmFsbHRocm91Z2ggY29tbWVu
dCBhbmQgd2hpdGVzcGFjZSBhZnRlcgogICAgIyAgIGluc2VydCBuZXdsaW5lLCBhZGp1c3RlZCBz
cGFjaW5nIGFuZCBmYWxsdGhyb3VnaDsgbmV3bGluZQogICAgIyB9CgogICAgbXkgJGNvdW50ID0g
MDsKICAgIG15IEBmYWxsdGhyb3VnaHMgPSAoCgknZmFsbHRocj9vdWdoJywKCSdcIVwhXCFbIFx0
XSpmYWxsLT9bIFx0XSp0aHI/b3VnaFsgXHRdKlwhXCFcIScsCgknQGZhbGx0aHI/b3VnaEAnLAoJ
J2xpbnQgLWZhbGx0aHJvdWdoWyBcdF0qJywKCSdbIFx0LiFdKig/OkVMU0UsPyB8SU5URU5USU9O
QUwoPzpMWSk/ICk/JywKCSdpbnRlbnRpb25hbCg/Omx5KT9bIFx0XSpmYWxsKD86KD86cyB8IHwt
KVtUdF18dClocj8oPzpvdWdofHV8ZXcpJywKCScoPzplbHNlLD9ccyopP0ZBTEwoPzpTIHwgfC0p
P1RIUj8oPzpPVUdIfFV8RVcpWzosIFx0LiFdKig/Oi1bXlxuXHJdKik/JywKCSdbOiwgXHQuIV0q
KD86RWxzZSw/IHxJbnRlbnRpb25hbCg/Omx5KT8gKT8nLAoJJ1sgXHQuXCFdKkZhbGwoPzooPzpz
IHwgfC0pP1tUdF18dClocj8oPzpvdWdofHV8ZXcpWzosIFx0LiFdKig/Oi1bXlxuXHJdKik/JywK
CSdbIFx0LlwhXSooPzpbRWVdbHNlLD8gfFtJaV1udGVudGlvbmFsKD86bHkpPyApPycsCgknWyBc
dC5cIV0qZmFsbCg/OnMgfCB8LSk/dGhyPyg/Om91Z2h8dXxldylbOiwgXHQuXCFdKig/Oi1bXlxu
XHJdKik/JywKICAgICk7CiAgICBkbyB7CgkkY291bnQgPSAwOwoJcG9zKCR0ZXh0KSA9IDA7Cglm
b3JlYWNoIG15ICRmdCAoQGZhbGx0aHJvdWdocykgewoJICAgIG15ICRyZWdleCA9ICcoKCg/Olsg
XHRdKlxuKSpbIFx0XSopKC9cKlxzKig/IVwqLyk/XGInIC4gIiRmdCIgLiAnXHMqKD8hXCovKT9c
Ki8oPzpbIFx0XSpcbikqKShbIFx0XSopKSg/OmNhc2Vccyt8ZGVmYXVsdFxzKjopJzsKCgkgICAg
d2hpbGUgKCR0ZXh0ID1+IG17JHtyZWdleH19aSkgewoJCW15ICRhbGxfYnV0X2Nhc2UgPSAkMTsK
CQlteSAkc3BhY2VfYmVmb3JlID0gJDI7CgkJbXkgJGZhbGx0aHJvdWdoID0gJDM7CgkJbXkgJHNw
YWNlX2FmdGVyID0gJDQ7CgkJbXkgJHBvc19iZWZvcmUgPSAkLVsxXTsKCQlteSAkcG9zX2FmdGVy
ID0gJCtbM107CgoJCSMgdHJ5IHRvIG1haW50YWluIGFueSBhZGRpdGlvbmFsIGNvbW1lbnQgb24g
dGhlIHNhbWUgbGluZQoJCW15ICRjb21tZW50ID0gIiI7CgkJaWYgKCRyZWdleCA9fiAvXFxyLykg
ewoJCSAgICAkY29tbWVudCA9ICRmYWxsdGhyb3VnaDsKCQkgICAgJGNvbW1lbnQgPX4gc0BeL1wq
XHMqQEA7CgkJICAgICRjb21tZW50ID1+IHNAXHMqXCovXHMqJEBAOwoJCSAgICAkY29tbWVudCA9
fiBzQF5ccyooPzppbnRlbnRpb25hbCg/Omx5KT9ccyt8ZWxzZSw/XHMqKT9mYWxsW3NcLV0qXHMq
dGhyPyg/Om91Z2h8dXxldylbXHNcLlwtXSpAQGk7CgkJICAgICRjb21tZW50ID1+IHNAXHMrJEBA
OwoJCSAgICAkY29tbWVudCA9fiBzQFwuKiRAQDsKCQkgICAgJGNvbW1lbnQgPX4gc0BeXHMqOlxz
KkBAOwoJCSAgICAkY29tbWVudCA9ICJcdC8qICRjb21tZW50ICovIiBpZiAoJGNvbW1lbnQgbmUg
IiIpOwoJCX0KCQlzdWJzdHIoJHRleHQsICRwb3NfYmVmb3JlLCAkcG9zX2FmdGVyIC0gJHBvc19i
ZWZvcmUsICIiKTsKCQlzdWJzdHIoJHRleHQsICRwb3NfYmVmb3JlLCAwLCAiXG4ke3NwYWNlX2Fm
dGVyfVx0ZmFsbHRocm91Z2g7JHtjb21tZW50fVxuIik7CgkJcG9zKCR0ZXh0KSA9ICRwb3NfYmVm
b3JlOwoJCSRjb3VudCsrOwoJICAgIH0KCX0KCSRjdnQgKz0gJGNvdW50OwogICAgICAgIH0gd2hp
bGUgKCRjb3VudCA+IDApOwoKICAgICMgUmVzZXQgdGhlIGZhbGx0aHJvdWdocyB0eXBlcyB0byBh
IHNpbmdsZSByZWdleAoKICAgIEBmYWxsdGhyb3VnaHMgPSAoCgknZmFsbCg/Oig/OnMgfCB8LSlb
VHRdfHQpaHI/KD86b3VnaHx1fGV3KScKICAgICk7CgogICAgIyBDb252ZXJ0IHRoZSAvLyA8ZmFs
bHRocm91Z2g+IHN0eWxlIGNvbW1lbnRzIGZvbGxvd2VkIGJ5IGNhc2UvZGVmYXVsdDoKCiAgICBk
byB7CgkkY291bnQgPSAwOwoJcG9zKCR0ZXh0KSA9IDA7Cglmb3JlYWNoIG15ICRmdCAoQGZhbGx0
aHJvdWdocykgewoJICAgIG15ICRyZWdleCA9ICcoKCg/OlsgXHRdKlxuKSpbIFx0XSopKC8vWyBc
dF0qKD8hXG4pP1xiJyAuICIkZnQiIC4gJ1sgXHRdKig/IVxuKT9cbig/OlsgXHRdKlxuKSopKFsg
XHRdKikpKD86Y2FzZVxzK3xkZWZhdWx0XHMqOiknOwoJICAgIHdoaWxlICgkdGV4dCA9fiBteyR7
cmVnZXh9fWkpIHsKCQlteSAkYWxsX2J1dF9jYXNlID0gJDE7CgkJbXkgJHNwYWNlX2JlZm9yZSA9
ICQyOwoJCW15ICRmYWxsdGhyb3VnaCA9ICQzOwoJCW15ICRzcGFjZV9hZnRlciA9ICQ0OwoJCW15
ICRwb3NfYmVmb3JlID0gJC1bMV07CgkJbXkgJHBvc19hZnRlciA9ICQrWzNdOwoKCQlzdWJzdHIo
JHRleHQsICRwb3NfYmVmb3JlLCAkcG9zX2FmdGVyIC0gJHBvc19iZWZvcmUsICIiKTsKCQlzdWJz
dHIoJHRleHQsICRwb3NfYmVmb3JlLCAwLCAiXG4ke3NwYWNlX2FmdGVyfVx0ZmFsbHRocm91Z2g7
XG4iKTsKCQlwb3MoJHRleHQpID0gJHBvc19iZWZvcmU7CgkJJGNvdW50Kys7CgkgICAgfQoJfQoJ
JGN2dCArPSAkY291bnQ7CiAgICB9IHdoaWxlICgkY291bnQgPiAwKTsKCiAgICAjIENvbnZlcnQg
LyogZmFsbHRocm91Z2ggKi8gY29tbWVudCBtYWNybyBsaW5lcyB3aXRoIHRyYWlsaW5nIFwKCiAg
ICBkbyB7CgkkY291bnQgPSAwOwoJcG9zKCR0ZXh0KSA9IDA7Cglmb3JlYWNoIG15ICRmdCAoQGZh
bGx0aHJvdWdocykgewoJICAgIG15ICRyZWdleCA9ICcoKD86WyBcdF0qXFxcXFxuKSooWyBcdF0q
KSgvXCpbIFx0XSpcYicgLiAiJGZ0IiAuICdbIFx0XSpcKi8pKFsgXHRdKikpXFxcXFxuKihbIFx0
XSooPzpjYXNlXHMrfGRlZmF1bHRccyo6KSknOwoKCSAgICB3aGlsZSAoJHRleHQgPX4gbXske3Jl
Z2V4fX1pKSB7CgkJbXkgJGFsbF9idXRfY2FzZSA9ICQxOwoJCW15ICRzcGFjZV9iZWZvcmUgPSAk
MjsKCQlteSAkZmFsbHRocm91Z2ggPSAkMzsKCQlteSAkc3BhY2VfYWZ0ZXIgPSAkNDsKCQlteSAk
cG9zX2JlZm9yZSA9ICQtWzJdOwoJCW15ICRwb3NfYWZ0ZXIgPSAkK1s0XTsKCgkJbXkgJG9sZGxp
bmUgPSAiJHtzcGFjZV9iZWZvcmV9JHtmYWxsdGhyb3VnaH0ke3NwYWNlX2FmdGVyfSI7CgkJbXkg
JGxlbiA9IGxlbmd0aChleHBhbmRfdGFicygkb2xkbGluZSkpOwoKCQlteSAkbmV3bGluZSA9ICIk
e3NwYWNlX2JlZm9yZX1mYWxsdGhyb3VnaDske3NwYWNlX2FmdGVyfSI7CgkJJG5ld2xpbmUgLj0g
Ilx0IiB3aGlsZSAobGVuZ3RoKGV4cGFuZF90YWJzKCRuZXdsaW5lKSkgPCAkbGVuKTsKCgkJc3Vi
c3RyKCR0ZXh0LCAkcG9zX2JlZm9yZSwgJHBvc19hZnRlciAtICRwb3NfYmVmb3JlLCAiIik7CgkJ
c3Vic3RyKCR0ZXh0LCAkcG9zX2JlZm9yZSwgMCwgIiRuZXdsaW5lIik7CgkJcG9zKCR0ZXh0KSA9
ICRwb3NfYmVmb3JlOwoJCSRjb3VudCsrOwoJICAgIH0KCX0KCSRjdnQgKz0gJGNvdW50OwogICAg
fSB3aGlsZSAoJGNvdW50ID4gMCk7CgogICAgIyBkZWxldGUgYW55IHVubmVjZXNzYXJ5IGZhbGx0
aHJvdWdoOyBiZXR3ZWVuIHN1Y2Nlc3NpdmUgY2FzZXMgYW5kIGRlZmF1bHQ6CgogICAgZG8gewoJ
cG9zKCR0ZXh0KSA9IDA7CgkkY291bnQgPSAkdGV4dCA9fiBzLyhjYXNlXHMrXHcrXHMqOlxuKVsg
XHRdKmZhbGx0aHJvdWdoO1xuKCg/OlxzKmRlZmF1bHRccyo6fFxzKmNhc2Vccytcdytccyo6KSkv
JDEkMi87CgkkZGVsICs9ICRjb3VudDsKICAgIH0gd2hpbGUgKCRjb3VudCA+IDApOwoKIyB3cml0
ZSB0aGUgZmlsZSBpZiBzb21ldGhpbmcgd2FzIGNoYW5nZWQKCiAgICBpZiAoJGN2dCA+IDAgfHwg
JGRlbCA+IDApIHsKCSRtb2RpZmllZCA9IDE7CgoJb3BlbigkZiwgJz4nLCAkZmlsZSkKCSAgICBv
ciBkaWUgIiRQOiBDYW4ndCBvcGVuICRmaWxlIGZvciB3cml0ZVxuIjsKCXByaW50ICRmICR0ZXh0
OwoJY2xvc2UoJGYpOwoKCWlmICghJHF1aWV0KSB7CgkgICAgcHJpbnQgImZhbGx0aHJvdWdoczoi
OwoJICAgIHByaW50ICIJY29udmVydGVkOiAkY3Z0IiBpZiAoJGN2dCA+IDApOwoJICAgIHByaW50
ICIJZGVsZXRlZDogJGRlbCIgaWYgKCRkZWwgPiAwKTsKCSAgICBwcmludCAiCSRmaWxlXG4iOwoJ
fQogICAgfQp9CgppZiAoJG1vZGlmaWVkICYmICEkcXVpZXQpIHsKICAgIHByaW50IDw8RU9UOwoK
V2FybmluZzogdGhlc2UgY2hhbmdlcyBtYXkgbm90IGJlIGNvcnJlY3QuCgpUaGVzZSBjaGFuZ2Vz
IHNob3VsZCBiZSBjYXJlZnVsbHkgcmV2aWV3ZWQgbWFudWFsbHkgYW5kIG5vdCBjb21iaW5lZCB3
aXRoCmFueSBmdW5jdGlvbmFsIGNoYW5nZXMuCgpDb21waWxlLCBidWlsZCBhbmQgdGVzdCB5b3Vy
IGNoYW5nZXMuCgpZb3Ugc2hvdWxkIHVuZGVyc3RhbmQgYW5kIGJlIHJlc3BvbnNpYmxlIGZvciBh
bGwgb2JqZWN0IGNoYW5nZXMuCgpNYWtlIHN1cmUgeW91IHJlYWQgRG9jdW1lbnRhdGlvbi9TdWJt
aXR0aW5nUGF0Y2hlcyBiZWZvcmUgc2VuZGluZwphbnkgY2hhbmdlcyB0byByZXZpZXdlcnMsIG1h
aW50YWluZXJzIG9yIG1haWxpbmcgbGlzdHMuCkVPVAp9Cg==


--=-tVicjtMItgOYRKtQaaAv
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--=-tVicjtMItgOYRKtQaaAv--

