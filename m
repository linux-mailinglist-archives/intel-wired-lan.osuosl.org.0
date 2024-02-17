Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B045859180
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 19:09:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3167E60E2A;
	Sat, 17 Feb 2024 18:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GBI7qey2EChT; Sat, 17 Feb 2024 18:09:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6124960BD4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708193366;
	bh=N1CZYG16uNIIX1bzINMMJKicgWAqJc4xUccwHeGoHyI=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eCr3tK/5hpKETUD+80K512OTuym+hcCJITPIoW4QHAuQ1ZIw9G796ywbPV8QM2Uaa
	 oQKW+UGLCerjef5VmHrgPeEGAjm1E7NCBxlYubx/OGS4CfKmdWaBtH7W3j2roh/N64
	 P/rYz6NRjjcEgeojFwfgz3VWgq6tX6D+FWWPZPYXyNaQFVpGOVjuKRxP+WpybwuYG4
	 XRhWNHSX4TaSmK9hxN+WqVJdqHBmSk4N/Ep8jIauAU5SRq6jpzoyX1wWYx76F9b+Y3
	 TAH5rHSl+uieM9q8OgROA9u/srujET+1GOWp2JM9TMq/3USD+aFnjun5QR9fy4eiA6
	 GThQtuC1FUCRQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6124960BD4;
	Sat, 17 Feb 2024 18:09:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F2E61BF299
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1AC9640883
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P9uY11c5HjBq for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 18:09:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 360D64087C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 360D64087C
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 360D64087C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:20 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rbP80-0084hf-3V; Sat, 17 Feb 2024 19:09:32 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sat, 17 Feb 2024 12:08:25 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240217-keee-u32-cleanup-v3-4-fcf6b62a0c7f@lunn.ch>
References: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
In-Reply-To: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4488; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=6WQbQolAq5WAPWukfrjltstk+z0qZj+AW55w271U/ic=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl0PY6xzJip9b+Ys/6/moZRoD886ziSVg1X2tSJ
 pFVf0xirFaJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZdD2OgAKCRDmvw3LpmlM
 hJxmEACLm8vGvPo7Z2FgLb7KH1kwL9wQZJthCGRy2NaPog/Oo76x3SaYUE+DDEPaYqB2JpACDT6
 Lg6euJv+rawMgEK7RUWZkc5w1bOe1GiXhVAa3BgV+XBA8YV+x7y6Qq3zt5ZTE0czZP+Ug+fB2kG
 FQmhGoc7Z5IK0/b/f3F1WWhf5Zda7UE6VTNBFOl88g+AIOCh3gWzMxElGl2KJgnq+1JpZSEy4gz
 HtwaiN6vS5yeC0q91rCB5/ymmm59lN2Lm58HWw/7ZZIvCWErZ4voCDAhzEzRrp2JXYNtvy6g6cP
 amXqfATLVlw8PnHn9ghuyhyTOV1Ptw8W7wxPq/BQayZ9oTt4YLrKdh/cGpYDm+ywJPl6xoSSQL0
 cBq4kBvyTiV+hCOVRwKKfZUHhNokXQ1o7b7UimYA+DHfb8o8WnNzX5kBsMoAKu8j96ZVmI3uEul
 lU+f9LhhpQJxcKrWaY44G+1VLdt1sDZopDsdOIwmZx6VdICHydiWxH9NTf7QUpLrjjEtGWBrXNz
 TqNuMVXEH76/aPjTtX01hAfQ2iZD8vG2lmm2iGm/Q4PVZH6T/EvFquz7hVHL1ETy5pSuhqdUhhS
 HpG9PKiIlg5YisUnNKz/vb2SNQx5YWETj41D5DjUuTEaNlWF/ulug6MnDYWpPKeG36ILn8kTdlC
 5PeNLrDqkY9huGQ==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=N1CZYG16uNIIX1bzINMMJKicgWAqJc4xUccwHeGoHyI=; b=2X
 xJKIdIjACY4CXrdtGNuJ/4hgAiCHadwOA5QMtv8EWoBcbjZf5ykSBnAp2UcxUhgIW51R74mdxdYT1
 uYYpnxPb5GZSc+ig9AeIDIjKiRIjpkaexe7I3k7uKZYa7jjf7k7Sk3+LmbBdK9uFcFPyMd/yCDjEC
 DT0ShDFgWDeWUIU=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=2XxJKIdI
Subject: [Intel-wired-lan] [PATCH net-next v3 4/8] net: ethernet: ixgbe:
 Convert EEE to use linkmodes
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
Cc: netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew@lunn.ch>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Convert the tables to make use of ETHTOOL link mode bits, rather than
the old u32 SUPPORTED speeds. Make use of the linkmode helps to set
bits and compare linkmodes. As a result, the _u32 members of keee are
no longer used, a step towards removing them.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 48 ++++++++++++------------
 1 file changed, 25 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index b1e7338a4ed1..a0879f125146 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3403,30 +3403,31 @@ static int ixgbe_get_module_eeprom(struct net_device *dev,
 
 static const struct {
 	ixgbe_link_speed mac_speed;
-	u32 supported;
+	u32 link_mode;
 } ixgbe_ls_map[] = {
-	{ IXGBE_LINK_SPEED_10_FULL, SUPPORTED_10baseT_Full },
-	{ IXGBE_LINK_SPEED_100_FULL, SUPPORTED_100baseT_Full },
-	{ IXGBE_LINK_SPEED_1GB_FULL, SUPPORTED_1000baseT_Full },
-	{ IXGBE_LINK_SPEED_2_5GB_FULL, SUPPORTED_2500baseX_Full },
-	{ IXGBE_LINK_SPEED_10GB_FULL, SUPPORTED_10000baseT_Full },
+	{ IXGBE_LINK_SPEED_10_FULL, ETHTOOL_LINK_MODE_10baseT_Full_BIT },
+	{ IXGBE_LINK_SPEED_100_FULL, ETHTOOL_LINK_MODE_100baseT_Full_BIT },
+	{ IXGBE_LINK_SPEED_1GB_FULL, ETHTOOL_LINK_MODE_1000baseT_Full_BIT },
+	{ IXGBE_LINK_SPEED_2_5GB_FULL, ETHTOOL_LINK_MODE_2500baseX_Full_BIT },
+	{ IXGBE_LINK_SPEED_10GB_FULL, ETHTOOL_LINK_MODE_10000baseT_Full_BIT },
 };
 
 static const struct {
 	u32 lp_advertised;
-	u32 mac_speed;
+	u32 link_mode;
 } ixgbe_lp_map[] = {
-	{ FW_PHY_ACT_UD_2_100M_TX_EEE, SUPPORTED_100baseT_Full },
-	{ FW_PHY_ACT_UD_2_1G_T_EEE, SUPPORTED_1000baseT_Full },
-	{ FW_PHY_ACT_UD_2_10G_T_EEE, SUPPORTED_10000baseT_Full },
-	{ FW_PHY_ACT_UD_2_1G_KX_EEE, SUPPORTED_1000baseKX_Full },
-	{ FW_PHY_ACT_UD_2_10G_KX4_EEE, SUPPORTED_10000baseKX4_Full },
-	{ FW_PHY_ACT_UD_2_10G_KR_EEE, SUPPORTED_10000baseKR_Full},
+	{ FW_PHY_ACT_UD_2_100M_TX_EEE, ETHTOOL_LINK_MODE_100baseT_Full_BIT },
+	{ FW_PHY_ACT_UD_2_1G_T_EEE, ETHTOOL_LINK_MODE_1000baseT_Full_BIT },
+	{ FW_PHY_ACT_UD_2_10G_T_EEE, ETHTOOL_LINK_MODE_10000baseT_Full_BIT },
+	{ FW_PHY_ACT_UD_2_1G_KX_EEE, ETHTOOL_LINK_MODE_1000baseKX_Full_BIT },
+	{ FW_PHY_ACT_UD_2_10G_KX4_EEE, ETHTOOL_LINK_MODE_10000baseKX4_Full_BIT },
+	{ FW_PHY_ACT_UD_2_10G_KR_EEE, ETHTOOL_LINK_MODE_10000baseKR_Full_BIT},
 };
 
 static int
 ixgbe_get_eee_fw(struct ixgbe_adapter *adapter, struct ethtool_keee *edata)
 {
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(common);
 	u32 info[FW_PHY_ACT_DATA_COUNT] = { 0 };
 	struct ixgbe_hw *hw = &adapter->hw;
 	int rc;
@@ -3436,28 +3437,29 @@ ixgbe_get_eee_fw(struct ixgbe_adapter *adapter, struct ethtool_keee *edata)
 	if (rc)
 		return rc;
 
-	edata->lp_advertised_u32 = 0;
 	for (i = 0; i < ARRAY_SIZE(ixgbe_lp_map); ++i) {
 		if (info[0] & ixgbe_lp_map[i].lp_advertised)
-			edata->lp_advertised_u32 |= ixgbe_lp_map[i].mac_speed;
+			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
+					 edata->lp_advertised);
 	}
 
-	edata->supported_u32 = 0;
 	for (i = 0; i < ARRAY_SIZE(ixgbe_ls_map); ++i) {
 		if (hw->phy.eee_speeds_supported & ixgbe_ls_map[i].mac_speed)
-			edata->supported_u32 |= ixgbe_ls_map[i].supported;
+			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
+					 edata->lp_advertised);
 	}
 
-	edata->advertised_u32 = 0;
 	for (i = 0; i < ARRAY_SIZE(ixgbe_ls_map); ++i) {
 		if (hw->phy.eee_speeds_advertised & ixgbe_ls_map[i].mac_speed)
-			edata->advertised_u32 |= ixgbe_ls_map[i].supported;
+			linkmode_set_bit(ixgbe_lp_map[i].link_mode,
+					 edata->advertised);
 	}
 
-	edata->eee_enabled = !!edata->advertised_u32;
+	edata->eee_enabled = !linkmode_empty(edata->advertised);
 	edata->tx_lpi_enabled = edata->eee_enabled;
-	if (edata->advertised_u32 & edata->lp_advertised_u32)
-		edata->eee_active = true;
+
+	linkmode_and(common, edata->advertised, edata->lp_advertised);
+	edata->eee_active = !linkmode_empty(common);
 
 	return 0;
 }
@@ -3504,7 +3506,7 @@ static int ixgbe_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 			return -EINVAL;
 		}
 
-		if (eee_data.advertised_u32 != edata->advertised_u32) {
+		if (!linkmode_equal(eee_data.advertised, edata->advertised)) {
 			e_err(drv,
 			      "Setting EEE advertised speeds is not supported\n");
 			return -EINVAL;

-- 
2.43.0

