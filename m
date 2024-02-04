Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79F98491C5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Feb 2024 00:41:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 54F014013B;
	Sun,  4 Feb 2024 23:41:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54F014013B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707090069;
	bh=VMT+7HT9bLdZtz1arkF5M0mqUpczvKtrktRMX+PXxh0=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HfHKA0r5ALqAOZkyOC2YwuLZbYZTPnoUbjtsJ724yWHseSYCpZyffE6W7iQUjUvXA
	 6uCP1aTaK/UPlWunainCDbfuUNe+kDrc47ToB8xkeC6zlvEepzaLedlrFEuJaXl/3D
	 EkZL6cLOE8tIAV5a5xofggq5xcw+q6dYrQUYczCBhHKlB9pdJDxrc8xxNslbElMLIU
	 MQcKRceurRTWJP+TagJERcob4zYfxxiKOkICHnPeXpBLUnjtG2SQd0ovUO2508oXwL
	 92E4lWJJjz6zzshUgnf7lPHpYlIIrqy9CEMmaSgs+/41e5wzMsxh9f9IQTdXUZrTuB
	 /K03NridrfNzQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MMMqZLXgfkva; Sun,  4 Feb 2024 23:41:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B4CA402F2;
	Sun,  4 Feb 2024 23:41:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B4CA402F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02E271BF909
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 23:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF8FC607AA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 23:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF8FC607AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ASopXj1sgVuC for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Feb 2024 23:40:49 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A3FA607A1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 23:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A3FA607A1
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rWm6Q-006z7T-Ce; Mon, 05 Feb 2024 00:40:46 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sun, 04 Feb 2024 17:40:22 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240204-keee-u32-cleanup-v1-5-fb6e08329d9a@lunn.ch>
References: <20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch>
In-Reply-To: <20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2657; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=7O5kudOyUkfuKOsf1feA2qBdlnbcsxmqX0W2Kbo7rmo=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBlwCBp/zrzpuGGHdcJTLlVsL488w2Uusu4PUh7R
 0nXYrq5o3WJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZcAgaQAKCRDmvw3LpmlM
 hG66D/9NLRCHZoRQp8gY9TB7CsrIoSE+dx0IRf3PPHXhSiPhHeUvgmcgmlsn2cKn1tEL64IoSEF
 +MN373ADjjBxjq/Szuiney1GOIJ3RWuZb9GjiTyY6eRbHqvemufpEhz+8SMWtMUaRzms86gxDDz
 lVbjx1wlV1Tzb1S9O9LMFBSEW49r7f4h4f25EF9fBEvHobfHb5xOVxZ2T+1WChT+CgDaNhLO5mg
 jzcNcje8FUisl2joaGom87r4BpPITUIZ0TiCiWjmpRxvPFptTD/yKxAxWSVBoM7exMllB6mDiKc
 abO7xCAtYct7s2b/8g0b9QC5Ht+TFjCWp8fT1iezR8TCipX082MGh6f0XRSqP/4gP7FOPZY5Jxx
 XCXsa7HXABh7HMFkD1RZN90VS5O76vY/ns6BFAgEATJw9MFWbW081v+SFeBvRGRE/LznCKDV4o8
 tDo/i20mEW7dHBIHhOVX1h3Y8nuOpOiaqd4taFvZ9GCYZcVLypGCuTUDmC2OhJqELjMXESsiveI
 TUHfCDDfRAWVu8PjnfKncHVoH76/C60kCtyUYfw2A4KC9ZUdwWzNx5dv7y9tp8sWdBadUyIyqg8
 W60tUagyzazUSrWiBgGtQ+4N1mD0ekMpLYOxytlDShg0CbhvuhpumuKkBXyRw+Q4l9cO+ctbpNZ
 cn/bKdl7nfyHlNw==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=VMT+7HT9bLdZtz1arkF5M0mqUpczvKtrktRMX+PXxh0=; b=qb
 o2AZkMrrvyZShRoCtkkEWgam5m0HSU6TPa/3uZogeU09NWJajQ2KXaUPxnFR1SY8VCSDYTXe/7gHQ
 L1fAs1aqKNrUOTQT37ez1kQz0LliIutbBePjLLVm7mT9evSbFMot9ZC3g75vKYCbSAtPoJJjsFyVn
 b86XwPYZ1S9e3Pw=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=qbo2AZkM
Subject: [Intel-wired-lan] [PATCH 5/8] net: intel: i40e/igc: Remove setting
 Autoneg in EEE capabilities
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

Energy Efficient Ethernet should always be negotiated with the link
peer. Don't include SUPPORTED_Autoneg in the results of get_eee() for
supported, advertised or lp_advertised, since it is
assumed. Additionally, ethtool(1) ignores the set bit, and no other
driver sets this.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 7 +------
 drivers/net/ethernet/intel/igc/igc_ethtool.c   | 4 ----
 2 files changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 1b5473358e1a..42e7e6cdaa6d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5664,16 +5664,12 @@ static int i40e_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 	if (phy_cfg.eee_capability == 0)
 		return -EOPNOTSUPP;
 
-	edata->supported_u32 = SUPPORTED_Autoneg;
-	edata->lp_advertised_u32 = edata->supported_u32;
-
 	/* Get current configuration */
 	status = i40e_aq_get_phy_capabilities(hw, false, false, &phy_cfg, NULL);
 	if (status)
 		return -EAGAIN;
 
-	edata->advertised_u32 = phy_cfg.eee_capability ? SUPPORTED_Autoneg : 0U;
-	edata->eee_enabled = !!edata->advertised_u32;
+	edata->eee_enabled = !!phy_cfg.eee_capability;
 	edata->tx_lpi_enabled = pf->stats.tx_lpi_status;
 
 	edata->eee_active = pf->stats.tx_lpi_status && pf->stats.rx_lpi_status;
@@ -5691,7 +5687,6 @@ static int i40e_is_eee_param_supported(struct net_device *netdev,
 		u32 value;
 		const char *name;
 	} param[] = {
-		{edata->advertised_u32 & ~SUPPORTED_Autoneg, "advertise"},
 		{edata->tx_lpi_timer, "tx-timer"},
 		{edata->tx_lpi_enabled != pf->stats.tx_lpi_status, "tx-lpi"}
 	};
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 7f844e967421..e9aed4069ebe 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1634,7 +1634,6 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
 			mmd_eee_adv_to_ethtool_adv_t(adapter->eee_advert);
 
 	*edata = adapter->eee;
-	edata->supported_u32 = SUPPORTED_Autoneg;
 
 	eeer = rd32(IGC_EEER);
 
@@ -1647,9 +1646,6 @@ static int igc_ethtool_get_eee(struct net_device *netdev,
 
 	edata->eee_enabled = hw->dev_spec._base.eee_enable;
 
-	edata->advertised_u32 = SUPPORTED_Autoneg;
-	edata->lp_advertised_u32 = SUPPORTED_Autoneg;
-
 	/* Report correct negotiated EEE status for devices that
 	 * wrongly report EEE at half-duplex
 	 */

-- 
2.43.0

