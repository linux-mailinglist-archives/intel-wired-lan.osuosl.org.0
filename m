Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5B083EF5A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Jan 2024 19:03:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E8C480EA7;
	Sat, 27 Jan 2024 18:03:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E8C480EA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706378607;
	bh=NZLTywm3iI7VFDtwN8w+qpL5Dq3/6DQ70BalCkX0KpA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=dxHr3j2oc/jh8Oz/2GRb1o2mcI4XwFiVH3MDb0UCkTTK9Yo6e1At+8jMICCPWoDWq
	 kHTyHB1T7+5r3tz1LPXDV3OKamPdfOsRBxiscNp/znoERKnO+iK1W8pP66p3Oyv0TI
	 JAX6P8j98oPUrvVB335J2yZVLoU0JSVTuWSwyd1Ey1SIz1CmyfXyuMxC4KzSe0Kwb+
	 8a9bhcr8boFRguEYZ8wjHYiW3i1fj6Oa0keCsbJL3rpTssQTre+PQ2FHshWWkm3HEA
	 s5SGQ5i6mqRcxPEFgSh6GZri8GBDp4pRSMGiKiWN0YfEjejZJS512+UgnIX5qZctJp
	 +nU/jKgz25V7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tQlTKwHQ8Nkk; Sat, 27 Jan 2024 18:03:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4BA7480E34;
	Sat, 27 Jan 2024 18:03:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4BA7480E34
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A29B1BF2E3
 for <intel-wired-lan@osuosl.org>; Sat, 27 Jan 2024 18:03:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 437A24051A
 for <intel-wired-lan@osuosl.org>; Sat, 27 Jan 2024 18:03:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 437A24051A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Sg_ov6UGMJG for <intel-wired-lan@osuosl.org>;
 Sat, 27 Jan 2024 18:03:19 +0000 (UTC)
X-Greylist: delayed 907 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 27 Jan 2024 18:03:18 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 811E74012E
Received: from sender11-op-o11.zoho.eu (sender11-op-o11.zoho.eu
 [31.186.226.225])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 811E74012E
 for <intel-wired-lan@osuosl.org>; Sat, 27 Jan 2024 18:03:18 +0000 (UTC)
Delivered-To: ernesto@castellotti.net
ARC-Seal: i=1; a=rsa-sha256; t=1706377687; cv=none; d=zohomail.eu; s=zohoarc; 
 b=HbC9ALv6Nj9tg47rdXBzSNJQUjKq1yJuBGMzjwNWLR739O7VDO5Z2DSgCBCGj06DOPiHpGGPAv5r9omA4CWcGe0kqHyu6u3hGFVBpf4jqWNA2CcvxIgOVKPJszyKhzEMRhcV3e7vQ5bP6kNm5+Z7Jv+fHSGDrPsPisntl2J2TzQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu;
 s=zohoarc; t=1706377687;
 h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=NZLTywm3iI7VFDtwN8w+qpL5Dq3/6DQ70BalCkX0KpA=; 
 b=RU/ZpuyRkHTFeiAtfrGX7Vp63++3rcgnrj6ZE0uIE/0ndaCjPH+Cycw6t4zCR+9gFHyUBSs/H+SYAKnNF1OLgJfucd6ec7VdYu2WWl9dYR/+A7R2gQRMghTg/f4sFcLY7f8hHt3Y4FXSBO6ntqK3FvvSXxZbbWNqyUcP0AHeY7g=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
 dkim=pass  header.i=castellotti.net;
 spf=pass  smtp.mailfrom=ernesto@castellotti.net;
 dmarc=pass header.from=<ernesto@castellotti.net>
Received: from localhost.localdomain (93-44-234-4.ip99.fastwebnet.it
 [93.44.234.4]) by mx.zoho.eu
 with SMTPS id 1706377685609716.0475159968621;
 Sat, 27 Jan 2024 18:48:05 +0100 (CET)
From: Ernesto Castellotti <ernesto@castellotti.net>
To: intel-wired-lan@osuosl.org
Date: Sat, 27 Jan 2024 18:48:00 +0100
Message-ID: <20240127174803.20793-1-ernesto@castellotti.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1706377687; 
 s=zmail; d=castellotti.net; i=ernesto@castellotti.net;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=NZLTywm3iI7VFDtwN8w+qpL5Dq3/6DQ70BalCkX0KpA=;
 b=JaFTOdyFXXlmiyo35uULVXkWYr7DgMx+z+CzG+0G4bPgMJ+UaiCFjnrBvvz3BGux
 BQYJXcwJ8BfotftYYPvpkat4OVIXDJn5quAuQe1q1VpyK3pME1jJQ5yimrhKoiGEBcN
 o9DN25PwJPdkDR1KnZa1fnkNUvcuhEwT54y9C32k=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=castellotti.net
 header.i=ernesto@castellotti.net header.a=rsa-sha256 header.s=zmail
 header.b=JaFTOdyF
Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: Add 1000BASE-BX support
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
of single-mode fiber).
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
 .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  4 ++-
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  | 33 ++++++++++++++++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h  |  2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  3 ++
 5 files changed, 39 insertions(+), 5 deletions(-)

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
index f28140a05f09..3163263e3b53 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -1539,6 +1539,7 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 	u8 oui_bytes[3] = {0, 0, 0};
 	u8 cable_tech = 0;
 	u8 cable_spec = 0;
+	u8 bitrate_nominal = 0;
 	u16 enforce_sfp = 0;
 
 	if (hw->mac.ops.get_media_type(hw) != ixgbe_media_type_fiber) {
@@ -1577,6 +1578,13 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 					     IXGBE_SFF_CABLE_TECHNOLOGY,
 					     &cable_tech);
 
+	if (status)
+		goto err_read_i2c_eeprom;
+
+	status = hw->phy.ops.read_i2c_eeprom(hw,
+					     IXGBE_SFF_BITRATE_NOMINAL,
+					     &bitrate_nominal);
+
 	if (status)
 		goto err_read_i2c_eeprom;
 
@@ -1659,6 +1667,17 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 			else
 				hw->phy.sfp_type =
 					ixgbe_sfp_type_1g_lx_core1;
+		// Support only 1000BASE-BX10, checking the Bit Rate Nominal Value as per SFF-8472
+		// by convention 1.25 Gb/s should be rounded up to 0Dh (13 in units of 100 MBd)
+		// for Ethernet 1000BASE-X
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
@@ -1747,7 +1766,9 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
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
@@ -1763,7 +1784,9 @@ s32 ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
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
@@ -1999,12 +2022,14 @@ s32 ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
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

