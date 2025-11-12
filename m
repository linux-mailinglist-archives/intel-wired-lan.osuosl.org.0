Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3791AC50B85
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Nov 2025 07:34:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 935498082D;
	Wed, 12 Nov 2025 06:34:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gCi2jrGwcBi8; Wed, 12 Nov 2025 06:34:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 306ED807D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762929286;
	bh=2wFG5TUZroqV9guEWcsY6CANrTKmDzDH7O5mg6iCcQI=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=A/CeV/xbZnEyK387HzAdr15SkZKsQl8MgLQZJUZtm+whLDyhJ83Z3S+2VGDApZitj
	 +jNSKOufR9ErF/g6hhOV23AqtHD3tGk8q2bnb693SnUow0cVw+MhcRvD9762dvFu6a
	 /o+KisXnpKwQ+K60DuHDL05ZlLA/2pZk4lg0wdTCMQp4TRg3OuQZsG14mLJjjBhV46
	 1pNTLug/Zxrq6j+FI4+f5/GxZmtAmAczHAVk7WzkMUWgNme1FZ/PjUv7F/yV9ZBYvF
	 K6/qe2JcZJviy69nyiQu7VqAzZTOOhJoQtH4mtDpkwJcSFLOtLhsUu6sUxxYbNDEL/
	 gR22ynUn+bX/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 306ED807D7;
	Wed, 12 Nov 2025 06:34:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C787F230
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 06:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C3F6260A3B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 06:34:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 34tJ6Hqcj4jZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Nov 2025 06:34:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a01:4f8:1c1b:7813::1; helo=bkemail.birger-koblitz.de;
 envelope-from=mail@birger-koblitz.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1BAE060809
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BAE060809
Received: from bkemail.birger-koblitz.de (bkemail.birger-koblitz.de
 [IPv6:2a01:4f8:1c1b:7813::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BAE060809
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Nov 2025 06:34:42 +0000 (UTC)
Received: by bkemail.birger-koblitz.de (Postfix, from userid 109)
 id DFB89493CD; Wed, 12 Nov 2025 06:34:38 +0000 (UTC)
Received: from AMDDesktop.lan (unknown
 [IPv6:2a00:6020:47a3:e800:94d3:d213:724a:4e07])
 by bkemail.birger-koblitz.de (Postfix) with ESMTPSA id 83F5F493BF;
 Wed, 12 Nov 2025 06:34:37 +0000 (UTC)
From: Birger Koblitz <mail@birger-koblitz.de>
Date: Wed, 12 Nov 2025 07:34:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-10gbx-v5-1-12cab4060bc8@birger-koblitz.de>
X-B4-Tracking: v=1; b=H4sIAHkqFGkC/3WOyw6CMBBFf8V0bU2ntFhc+R/GRR8DNhoxhRCU8
 O8ORBIWuLw3c87cgTWYIjbstBtYwi42sX5S0Psd8zf7rJDHQJlJITUIkBxE5XpunTLSa4SgFaP
 bV8Iy9rPncqV8i01bp/es7WBqF0P2M3TAgTSFKXJbZkGbs4upwsTvtXvE9nMIyCZTJ9e0Wmgaw
 gsjvJYKAPD4j842aRrBtfDBmlweofj7W63pfKFJw4X1VLtS59Zv0eM4fgHdSVtvXAEAAA==
X-Change-ID: 20251012-10gbx-ab482c5e1d54
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Birger Koblitz <mail@birger-koblitz.de>, 
 Andrew Lunn <andrew@lunn.ch>, Paul Menzel <pmenzel@molgen.mpg.de>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Rinitha S <sx.rinitha@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=birger-koblitz.de; 
 s=default; t=1762929278;
 bh=MR+W2xs0MEU9a8GMC7b+h4/FrmDMwMIKo6V4o6PhWUY=;
 h=From:Date:Subject:To:Cc:From;
 b=ZMDQjiR2XSRbV5/PlAeZDiciJY1F+it4PYNEyGaREPecxvhBPNTKyKUuSWWB0iis6
 y61R50DHMx0T79DcyS9g5G0x3R47R4EFKqX0UGJAX4kji5NOkYSsibz3h0mdig5/eG
 FijAMdZvwClHvNPrssHG3x3XpSQIbqryedu8g42fvpGHqrVHD11qMzkgC5LxgGKzHp
 AEozKHd5c2yX8Ovh4h7RrzIrFGV7KHu1/ntCHl4gyHrVvBZUQxntZwT3tt2VjxTymH
 o45uHpEEOXD4qd1o0bLsGtzLb1AdnPe669SfuV/jyfNgNQHUqauf9gbNXdJ1mFy6wU
 PHAHmZ7EXYLWA==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=birger-koblitz.de; 
 s=default; t=1762929277;
 bh=MR+W2xs0MEU9a8GMC7b+h4/FrmDMwMIKo6V4o6PhWUY=;
 h=From:Date:Subject:To:Cc:From;
 b=xgSAa4FEPceRmV8qXMKWM7zRt7yCtxkCwLu3KO7JEZTlfFjfnN17pZIAoAhLKFsCR
 pMOUxLfl8ZQ/rFf+BvIW9A0TR4/06+SCcIhXnBKK+s1MUnPmJ0Jp8KAfM8x22VK/PZ
 UEHT7qN/whD5LyXH4Pu+11Ent3oFaaW5hdsrcm66TE3Ih7da0DJWH7cw648lfCbnrB
 B9u8X0xOqpM5NJVAEfYnP9SVMcopI+11OYci1kiZjRoHddisGBj5DdtVKTUScPRANw
 yUVTI+isFYeofC4QNa72fUcgwxvSHlDS4cop8Sr86QWM9olOZGupvSsIcLb0+3/kDL
 YwGrw5/OhcoIQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=birger-koblitz.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=birger-koblitz.de
 header.i=@birger-koblitz.de header.a=rsa-sha256 header.s=default
 header.b=ZMDQjiR2; 
 dkim=pass (2048-bit key) header.d=birger-koblitz.de
 header.i=@birger-koblitz.de header.a=rsa-sha256 header.s=default
 header.b=xgSAa4FE
Subject: [Intel-wired-lan] [PATCH net-next v5] ixgbe: Add 10G-BX support
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

Add support for 10G-BX modules, i.e. 10GBit Ethernet over a single strand
Single-Mode fiber.
The initialization of a 10G-BX SFP+ is the same as for a 10G SX/LX module,
and is identified according to SFF-8472 table 5-3, footnote 3 by the
10G Ethernet Compliance Codes field being empty, the Nominal Bit
Rate being compatible with 12.5GBit, and the module being a fiber module
with a Single Mode fiber link length.

This was tested using a Lightron WSPXG-HS3LC-IEA 1270/1330nm 10km
transceiver:
$ sudo ethtool -m enp1s0f1
   Identifier                          : 0x03 (SFP)
   Extended identifier                 : 0x04 (GBIC/SFP defined by 2-wire interface ID)
   Connector                           : 0x07 (LC)
   Transceiver codes                   : 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00
   Encoding                            : 0x01 (8B/10B)
   BR Nominal                          : 10300MBd
   Rate identifier                     : 0x00 (unspecified)
   Length (SMF)                        : 10km
   Length (OM2)                        : 0m
   Length (OM1)                        : 0m
   Length (Copper or Active cable)     : 0m
   Length (OM3)                        : 0m
   Laser wavelength                    : 1330nm
   Vendor name                         : Lightron Inc.
   Vendor OUI                          : 00:13:c5
   Vendor PN                           : WSPXG-HS3LC-IEA
   Vendor rev                          : 0000
   Option values                       : 0x00 0x1a
   Option                              : TX_DISABLE implemented
   BR margin max                       : 0%
   BR margin min                       : 0%
   Vendor SN                           : S142228617
   Date code                           : 140611
   Optical diagnostics support         : Yes

Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Tested-by: Rinitha S <sx.rinitha@intel.com>
---
Changes in v5:
  Added "Tested-by" 
- Link to v4: https://lore.kernel.org/r/20251016-10gbx-v4-1-0ac202bf56ac@birger-koblitz.de

Changes in v4:
  Added "Reviewed-bys".
  Slight rewording of commit message.
- Link to v3: https://lore.kernel.org/r/20251014-10gbx-v3-1-50cda8627198@birger-koblitz.de

Changes in v3:
  Added "Reviewed-by". There also was a possible mailserver DKIM misconfiguration
  that may have prevented recipients to recieve the previous mails 
- Link to v2: https://lore.kernel.org/r/20251014-10gbx-v2-1-980c524111e7@birger-koblitz.de

Changes in v2:
  Allow also modules with only Byte 15 (100m SM link length) set to
  be identified as BX
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c   |  7 ++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |  2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c     | 43 +++++++++++++++++++++---
 drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h     |  2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h    |  2 ++
 5 files changed, 51 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
index d5b1b974b4a33e7dd51b7cfe5ea211ff038a36f0..892a73a4bc6b0bb1c976ca95bf874059b987054f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82599.c
@@ -342,6 +342,13 @@ static int ixgbe_get_link_capabilities_82599(struct ixgbe_hw *hw,
 		return 0;
 	}
 
+	if (hw->phy.sfp_type == ixgbe_sfp_type_10g_bx_core0 ||
+	    hw->phy.sfp_type == ixgbe_sfp_type_10g_bx_core1) {
+		*speed = IXGBE_LINK_SPEED_10GB_FULL;
+		*autoneg = false;
+		return 0;
+	}
+
 	/*
 	 * Determine link capabilities based on the stored value of AUTOC,
 	 * which represents EEPROM defaults.  If AUTOC value has not been
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 2d660e9edb80af8fc834e097703dfd6a82b8c45b..76edf02bc47e5dd24bb0936f730f036181f6dc2a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -351,6 +351,8 @@ static int ixgbe_get_link_ksettings(struct net_device *netdev,
 		case ixgbe_sfp_type_1g_lx_core1:
 		case ixgbe_sfp_type_1g_bx_core0:
 		case ixgbe_sfp_type_1g_bx_core1:
+		case ixgbe_sfp_type_10g_bx_core0:
+		case ixgbe_sfp_type_10g_bx_core1:
 			ethtool_link_ksettings_add_link_mode(cmd, supported,
 							     FIBRE);
 			ethtool_link_ksettings_add_link_mode(cmd, advertising,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
index 2449e4cf2679ddf3277f4ada7619303eb618d393..ad6a1eae6042bb16e329fb817bcfcb87e9008ce8 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c
@@ -1541,6 +1541,8 @@ int ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 	u8 identifier = 0;
 	u8 cable_tech = 0;
 	u8 cable_spec = 0;
+	u8 sm_length_km = 0;
+	u8 sm_length_100m = 0;
 	int status;
 
 	if (hw->mac.ops.get_media_type(hw) != ixgbe_media_type_fiber) {
@@ -1678,6 +1680,31 @@ int ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 			else
 				hw->phy.sfp_type =
 					ixgbe_sfp_type_1g_bx_core1;
+		/* Support Ethernet 10G-BX, checking the Bit Rate
+		 * Nominal Value as per SFF-8472 to be 12.5 Gb/s (67h) and
+		 * Single Mode fibre with at least 1km link length
+		 */
+		} else if ((!comp_codes_10g) && (bitrate_nominal == 0x67) &&
+			   (!(cable_tech & IXGBE_SFF_DA_PASSIVE_CABLE)) &&
+			   (!(cable_tech & IXGBE_SFF_DA_ACTIVE_CABLE))) {
+			status = hw->phy.ops.read_i2c_eeprom(hw,
+					    IXGBE_SFF_SM_LENGTH_KM,
+					    &sm_length_km);
+			if (status != 0)
+				goto err_read_i2c_eeprom;
+			status = hw->phy.ops.read_i2c_eeprom(hw,
+					    IXGBE_SFF_SM_LENGTH_100M,
+					    &sm_length_100m);
+			if (status != 0)
+				goto err_read_i2c_eeprom;
+			if (sm_length_km > 0 || sm_length_100m >= 10) {
+				if (hw->bus.lan_id == 0)
+					hw->phy.sfp_type =
+						ixgbe_sfp_type_10g_bx_core0;
+				else
+					hw->phy.sfp_type =
+						ixgbe_sfp_type_10g_bx_core1;
+			}
 		} else {
 			hw->phy.sfp_type = ixgbe_sfp_type_unknown;
 		}
@@ -1768,7 +1795,9 @@ int ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1 ||
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core0 ||
-	      hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core1)) {
+	      hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core1 ||
+	      hw->phy.sfp_type == ixgbe_sfp_type_10g_bx_core0 ||
+	      hw->phy.sfp_type == ixgbe_sfp_type_10g_bx_core1)) {
 		hw->phy.type = ixgbe_phy_sfp_unsupported;
 		return -EOPNOTSUPP;
 	}
@@ -1786,7 +1815,9 @@ int ixgbe_identify_sfp_module_generic(struct ixgbe_hw *hw)
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1 ||
 	      hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core0 ||
-	      hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core1)) {
+	      hw->phy.sfp_type == ixgbe_sfp_type_1g_bx_core1 ||
+	      hw->phy.sfp_type == ixgbe_sfp_type_10g_bx_core0 ||
+	      hw->phy.sfp_type == ixgbe_sfp_type_10g_bx_core1)) {
 		/* Make sure we're a supported PHY type */
 		if (hw->phy.type == ixgbe_phy_sfp_intel)
 			return 0;
@@ -2016,20 +2047,22 @@ int ixgbe_get_sfp_init_sequence_offsets(struct ixgbe_hw *hw,
 		return -EOPNOTSUPP;
 
 	/*
-	 * Limiting active cables and 1G Phys must be initialized as
+	 * Limiting active cables, 10G BX and 1G Phys must be initialized as
 	 * SR modules
 	 */
 	if (sfp_type == ixgbe_sfp_type_da_act_lmt_core0 ||
 	    sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
 	    sfp_type == ixgbe_sfp_type_1g_cu_core0 ||
 	    sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
-	    sfp_type == ixgbe_sfp_type_1g_bx_core0)
+	    sfp_type == ixgbe_sfp_type_1g_bx_core0 ||
+	    sfp_type == ixgbe_sfp_type_10g_bx_core0)
 		sfp_type = ixgbe_sfp_type_srlr_core0;
 	else if (sfp_type == ixgbe_sfp_type_da_act_lmt_core1 ||
 		 sfp_type == ixgbe_sfp_type_1g_lx_core1 ||
 		 sfp_type == ixgbe_sfp_type_1g_cu_core1 ||
 		 sfp_type == ixgbe_sfp_type_1g_sx_core1 ||
-		 sfp_type == ixgbe_sfp_type_1g_bx_core1)
+		 sfp_type == ixgbe_sfp_type_1g_bx_core1 ||
+		 sfp_type == ixgbe_sfp_type_10g_bx_core1)
 		sfp_type = ixgbe_sfp_type_srlr_core1;
 
 	/* Read offset to PHY init contents */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
index 81179c60af4e0199a8b9d0fcdf34654b02eedfac..039ba4b6c120f3e824c93cb00fdd9483e7cf9cba 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h
@@ -32,6 +32,8 @@
 #define IXGBE_SFF_QSFP_1GBE_COMP	0x86
 #define IXGBE_SFF_QSFP_CABLE_LENGTH	0x92
 #define IXGBE_SFF_QSFP_DEVICE_TECH	0x93
+#define IXGBE_SFF_SM_LENGTH_KM		0xE
+#define IXGBE_SFF_SM_LENGTH_100M	0xF
 
 /* Bitmasks */
 #define IXGBE_SFF_DA_PASSIVE_CABLE		0x4
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index b1bfeb21537acc44c31aedcb0584374e8f6ecd45..61f2ef67defddeab9ff4aa83c8f017819594996b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3286,6 +3286,8 @@ enum ixgbe_sfp_type {
 	ixgbe_sfp_type_1g_lx_core1 = 14,
 	ixgbe_sfp_type_1g_bx_core0 = 15,
 	ixgbe_sfp_type_1g_bx_core1 = 16,
+	ixgbe_sfp_type_10g_bx_core0 = 17,
+	ixgbe_sfp_type_10g_bx_core1 = 18,
 
 	ixgbe_sfp_type_not_present = 0xFFFE,
 	ixgbe_sfp_type_unknown = 0xFFFF

---
base-commit: 67029a49db6c1f21106a1b5fcdd0ea234a6e0711
change-id: 20251012-10gbx-ab482c5e1d54

Best regards,
-- 
Birger Koblitz <mail@birger-koblitz.de>

