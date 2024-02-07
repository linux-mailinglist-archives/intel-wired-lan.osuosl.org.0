Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BE384D689
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 00:24:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65FC64312F;
	Wed,  7 Feb 2024 23:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LSaUc67nyajo; Wed,  7 Feb 2024 23:24:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A63F942D49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707348260;
	bh=7G/D/MZV+9ign5X9CCZzBe87yHbpPygcYb20WXFi/iI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=B9Hl8yk4ILwq6GKNfyXk0krr1RgwV2jg1aGahtE+7u5KnLbiiC/MkUwiOaiDoxMd0
	 eLKQkR6hRoNjEkIs3/Uf7qTa3tik5KBDazjWu3nnHmsEMPxmiffpDVBUAWaUKOVFDq
	 DRuzEQ0g5WTGH1YbmG2QXAeEgwMmwE/DoncWwP8wmNj4rGd0t3rS1x7sJgU7wehecx
	 fvcrZlEJC2DE3jwFQnVTxccjxdnZHaSVjV1FLQfWmfpOxmYMr8OjK5JWfObvvb9wlW
	 A5SmeRTK+Mhf+HpbWc+q7wgkn7cTETfO9DKnShSuAwrhp9u9s14kr1NULz9cRvFvfA
	 weFFOqfCYHbDg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A63F942D49;
	Wed,  7 Feb 2024 23:24:20 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C628B1BF82C
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 23:24:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B161785087
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 23:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BZUDcvwaTfQD for <intel-wired-lan@osuosl.org>;
 Wed,  7 Feb 2024 23:24:16 +0000 (UTC)
X-Greylist: delayed 487 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 07 Feb 2024 23:24:16 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 618C585082
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 618C585082
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=17.58.6.47;
 helo=pv50p00im-zteg10021401.me.com; envelope-from=ernesto@castellotti.net;
 receiver=<UNKNOWN> 
Received: from pv50p00im-zteg10021401.me.com (pv50p00im-zteg10021401.me.com
 [17.58.6.47]) by smtp1.osuosl.org (Postfix) with ESMTPS id 618C585082
 for <intel-wired-lan@osuosl.org>; Wed,  7 Feb 2024 23:24:16 +0000 (UTC)
Received: from localhost.localdomain (pv50p00im-dlb-asmtp-mailmevip.me.com
 [17.56.9.10])
 by pv50p00im-zteg10021401.me.com (Postfix) with ESMTPSA id 629A58E001E;
 Wed,  7 Feb 2024 23:16:06 +0000 (UTC)
From: Ernesto Castellotti <ernesto@castellotti.net>
To: anthony.l.nguyen@intel.com, intel-wired-lan@osuosl.org,
 piotr.kwapulinski@intel.com
Date: Thu,  8 Feb 2024 00:15:21 +0100
Message-ID: <20240207231524.51753-1-ernesto@castellotti.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: -r3MuP5d8tkvdrHTykfitOF41qPJjLYa
X-Proofpoint-ORIG-GUID: -r3MuP5d8tkvdrHTykfitOF41qPJjLYa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-07_09,2024-02-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0
 phishscore=0 bulkscore=0 clxscore=1030 mlxlogscore=999 malwarescore=0
 mlxscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402070170
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=castellotti.net; s=sig1; t=1707347769;
 bh=7G/D/MZV+9ign5X9CCZzBe87yHbpPygcYb20WXFi/iI=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=VXcJ0fEa284gO7YWHMUFMAX0J3rCLE0IpRlKNz7Jqxlc/RRPl+eam/BpZ2K57excO
 e2W2Q7vuTeqHyh9w3wtGil0d7Jnym/seuEjweCO9yW8NnKBUeLzx+0kgksOXB3XIlH
 EGynd/polyt4/0m5ujxJolTvs7kbfIy6ezycLO6h5WUImy8H5e/C1C3seeENR0sHs2
 pMlsQWv3GfBxFZ1sSA4U6kmfV1hRI33E/b5aMLIBTfjHkxzrlG/VXe+67EhMtMu1Cc
 HVqNo/Uty6Ss+bph/epTnbdI7dX5PTUeFh8xM7r56goN0dAR99dMcBIEN2IogRPX+m
 SBubYkhsULapA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=castellotti.net
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=castellotti.net header.i=@castellotti.net
 header.a=rsa-sha256 header.s=sig1 header.b=VXcJ0fEa
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Add 1000BASE-BX support
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
Cc: Ernesto Castellotti <ernesto@castellotti.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Added support for 1000BASE-BX, i.e. Gigabit Ethernet over single strand
of single-mode fiber.
The initialization of a 1000BASE-BX SFP is the same as 1000BASE-SX/LX
with the only difference that the Bit Rate Nominal Value must be
checked to make sure it is a Gigabit Ethernet transceiver, as described
by the SFF-8472 specification.

This was tested with the FS.com SFP-GE-BX 1310/1490nm 10km transceiver:
$ ethtool -m eth4
        Identifier                                : 0x03 (SFP)
        Extended identifier                       : 0x04 (GBIC/SFP defined by 2-wire interface ID)
        Connector                                 : 0x07 (LC)
        Transceiver codes                         : 0x00 0x00 0x00 0x40 0x00 0x00 0x00 0x00 0x00
        Transceiver type                          : Ethernet: BASE-BX10
        Encoding                                  : 0x01 (8B/10B)
        BR, Nominal                               : 1300MBd
        Rate identifier                           : 0x00 (unspecified)
        Length (SMF,km)                           : 10km
        Length (SMF)                              : 10000m
        Length (50um)                             : 0m
        Length (62.5um)                           : 0m
        Length (Copper)                           : 0m
        Length (OM3)                              : 0m
        Laser wavelength                          : 1310nm
        Vendor name                               : FS
        Vendor OUI                                : 64:9d:99
        Vendor PN                                 : SFP-GE-BX
        Vendor rev                                :
        Option values                             : 0x20 0x0a
        Option                                    : RX_LOS implemented
        Option                                    : TX_FAULT implemented
        Option                                    : Power level 3 requirement
        BR margin, max                            : 0%
        BR margin, min                            : 0%
        Vendor SN                                 : S2202359108
        Date code                                 : 220307
        Optical diagnostics support               : Yes
        Laser bias current                        : 17.650 mA
        Laser output power                        : 0.2132 mW / -6.71 dBm
        Receiver signal average optical power     : 0.2740 mW / -5.62 dBm
        Module temperature                        : 47.30 degrees C / 117.13 degrees F
        Module voltage                            : 3.2576 V
        Alarm/warning flags implemented           : Yes
        Laser bias current high alarm             : Off
        Laser bias current low alarm              : Off
        Laser bias current high warning           : Off
        Laser bias current low warning            : Off
        Laser output power high alarm             : Off
        Laser output power low alarm              : Off
        Laser output power high warning           : Off
        Laser output power low warning            : Off
        Module temperature high alarm             : Off
        Module temperature low alarm              : Off
        Module temperature high warning           : Off
        Module temperature low warning            : Off
        Module voltage high alarm                 : Off
        Module voltage low alarm                  : Off
        Module voltage high warning               : Off
        Module voltage low warning                : Off
        Laser rx power high alarm                 : Off
        Laser rx power low alarm                  : Off
        Laser rx power high warning               : Off
        Laser rx power low warning                : Off
        Laser bias current high alarm threshold   : 110.000 mA
        Laser bias current low alarm threshold    : 1.000 mA
        Laser bias current high warning threshold : 100.000 mA
        Laser bias current low warning threshold  : 1.000 mA
        Laser output power high alarm threshold   : 0.7079 mW / -1.50 dBm
        Laser output power low alarm threshold    : 0.0891 mW / -10.50 dBm
        Laser output power high warning threshold : 0.6310 mW / -2.00 dBm
        Laser output power low warning threshold  : 0.1000 mW / -10.00 dBm
        Module temperature high alarm threshold   : 90.00 degrees C / 194.00 degrees F
        Module temperature low alarm threshold    : -45.00 degrees C / -49.00 degrees F
        Module temperature high warning threshold : 85.00 degrees C / 185.00 degrees F
        Module temperature low warning threshold  : -40.00 degrees C / -40.00 degrees F
        Module voltage high alarm threshold       : 3.7950 V
        Module voltage low alarm threshold        : 2.8050 V
        Module voltage high warning threshold     : 3.4650 V
        Module voltage low warning threshold      : 3.1350 V
        Laser rx power high alarm threshold       : 0.7079 mW / -1.50 dBm
        Laser rx power low alarm threshold        : 0.0028 mW / -25.53 dBm
        Laser rx power high warning threshold     : 0.6310 mW / -2.00 dBm
        Laser rx power low warning threshold      : 0.0032 mW / -24.95 dBm

Signed-off-by: Ernesto Castellotti <ernesto@castellotti.net>
---
v2: Fixed indentation/style issues as per review by Tony Nguyen
v1: https://lore.kernel.org/intel-wired-lan/20240127174803.20793-1-ernesto@castellotti.net/
---
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  4 ++-
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 32 ++++++++++++++++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  3 ++
 5 files changed, 38 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
index 339e106a5732..7943e8c59f2f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
@@ -334,7 +334,9 @@ static s32 ixgbe_get_link_capabilities_82599(struct ixgbe_hw *hw,
 	    hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
 	    hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core1 ||
 	    hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
-	    hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1) {
+	    hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1 ||
+	    hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core0 ||
+	    hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core1) {
 		*speed = IXGBE_LINK_SPEED_1GB_FULL;
 		*autoneg = true;
 		return 0;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 9a63457712c7..4387beeda1ad 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -349,6 +349,8 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
 		case ixgbe_sfp_type_1g_sx_core1:
 		case ixgbe_sfp_type_1g_lx_core0:
 		case ixgbe_sfp_type_1g_lx_core1:
+		case ixgbe_sfp_type_1g_bx_core0:
+		case ixgbe_sfp_type_1g_bx_core1:
 			ethtool_link_ksettings_add_link_mode(cmd, supported,
 							     FIBRE);
 			ethtool_link_ksettings_add_link_mode(cmd, advertising,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index f28140a05f09..e398ad00b851 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -1537,6 +1537,7 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 	u8 comp_codes_1g = 0;
 	u8 comp_codes_10g = 0;
 	u8 oui_bytes[3] = {0, 0, 0};
+	u8 bitrate_nominal = 0;
 	u8 cable_tech = 0;
 	u8 cable_spec = 0;
 	u16 enforce_sfp = 0;
@@ -1576,7 +1577,12 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 	status = hw->phy.ops.read_i2c_eeprom(hw,
 					     IXGBE_SFF_CABLE_TECHNOLOGY,
 					     &cable_tech);
+	if (status)
+		goto err_read_i2c_eeprom;
 
+	status = hw->phy.ops.read_i2c_eeprom(hw,
+					     IXGBE_SFF_BITRATE_NOMINAL,
+					     &bitrate_nominal);
 	if (status)
 		goto err_read_i2c_eeprom;
 
@@ -1659,6 +1665,18 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 			else
 				hw->phy.sfp_type =
 					ixgbe_sfp_type_1g_lx_core1;
+		/* Support only Ethernet 1000BASE-BX10, checking the Bit Rate
+		 * Nominal Value as per SFF-8472 by convention 1.25 Gb/s should
+		 * be rounded up to 0Dh (13 in units of 100 MBd) for 1000BASE-BX
+		 */
+		} else if ((comp_codes_1g & IXGBE_SFF_BASEBX10_CAPABLE) &&
+			   (bitrate_nominal == 0xD)) {
+			if (hw->bus.lan_id == 0)
+				hw->phy.sfp_type =
+					ixgbe_sfp_type_1g_bx_core0;
+			else
+				hw->phy.sfp_type =
+					ixgbe_sfp_type_1g_bx_core1;
 		} else {
 			hw->phy.sfp_type = ixgbe_sfp_type_unknown;
 		}
@@ -1747,7 +1765,9 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core1 ||
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
-	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1)) {
+	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1 ||
+	      hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core0 ||
+	      hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core1)) {
 		hw->phy.type = ixgbe_phy_sfp_unsupported;
 		return -EOPNOTSUPP;
 	}
@@ -1763,7 +1783,9 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core1 ||
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
-	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1)) {
+	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1 ||
+	      hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core0 ||
+	      hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core1)) {
 		/* Make sure we're a supported PHY type */
 		if (hw->phy.type == ixgbe_phy_sfp_intel)
 			return 0;
@@ -1999,12 +2021,14 @@ s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
 	if (sfp_type == ixgbe_sfp_type_da_act_lmt_core0 ||
 	    sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
 	    sfp_type == ixgbe_sfp_type_1g_cu_core0 ||
-	    sfp_type == ixgbe_sfp_type_1g_sx_core0)
+	    sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
+	    sfp_type == ixgbe_sfp_type_1g_bx_core0)
 		sfp_type = ixgbe_sfp_type_srlr_core0;
 	else if (sfp_type == ixgbe_sfp_type_da_act_lmt_core1 ||
 		 sfp_type == ixgbe_sfp_type_1g_lx_core1 ||
 		 sfp_type == ixgbe_sfp_type_1g_cu_core1 ||
-		 sfp_type == ixgbe_sfp_type_1g_sx_core1)
+		 sfp_type == ixgbe_sfp_type_1g_sx_core1 ||
+		 sfp_type == ixgbe_sfp_type_1g_bx_core1)
 		sfp_type = ixgbe_sfp_type_srlr_core1;
 
 	/* Read offset to PHY init contents */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
index ef72729d7c93..b5bc60916402 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
@@ -17,6 +17,7 @@
 #define IXGBE_SFF_1GBE_COMP_CODES	0x6
 #define IXGBE_SFF_10GBE_COMP_CODES	0x3
 #define IXGBE_SFF_CABLE_TECHNOLOGY	0x8
+#define IXGBE_SFF_BITRATE_NOMINAL	0xC
 #define IXGBE_SFF_CABLE_SPEC_COMP	0x3C
 #define IXGBE_SFF_SFF_8472_SWAP		0x5C
 #define IXGBE_SFF_SFF_8472_COMP		0x5E
@@ -39,6 +40,7 @@
 #define IXGBE_SFF_1GBASESX_CAPABLE		0x1
 #define IXGBE_SFF_1GBASELX_CAPABLE		0x2
 #define IXGBE_SFF_1GBASET_CAPABLE		0x8
+#define IXGBE_SFF_BASEBX10_CAPABLE		0x64
 #define IXGBE_SFF_10GBASESR_CAPABLE		0x10
 #define IXGBE_SFF_10GBASELR_CAPABLE		0x20
 #define IXGBE_SFF_SOFT_RS_SELECT_MASK		0x8
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 61b9774b3d31..f111a671ee82 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3210,6 +3210,9 @@ enum ixgbe_sfp_type {
 	ixgbe_sfp_type_1g_sx_core1 = 12,
 	ixgbe_sfp_type_1g_lx_core0 = 13,
 	ixgbe_sfp_type_1g_lx_core1 = 14,
+	ixgbe_sfp_type_1g_bx_core0 = 15,
+	ixgbe_sfp_type_1g_bx_core1 = 16,
+
 	ixgbe_sfp_type_not_present = 0xFFFE,
 	ixgbe_sfp_type_unknown = 0xFFFF
 };
-- 
2.43.0

