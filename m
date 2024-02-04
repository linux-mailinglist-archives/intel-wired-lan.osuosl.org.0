Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB2D8491C9
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Feb 2024 00:41:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 02B4C408BA;
	Sun,  4 Feb 2024 23:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 02B4C408BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707090075;
	bh=SOMOZ6/FJXknA8+mFiIFxymCAEzF7Pi03pmztEUsl68=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=baTH3QQG6Va4S3IWpLcR8pDfC00uMbazNIUPL4+BLSh33mcdzyRutCMRqi3JPv9qA
	 z8ZKUDpREiLIhjePieIPFzo1sCBOrOvCEqJr1kptCwpBdcam5PlkaH8ZV8q8aSyPNk
	 8/qvt9wayCuEyTjTx/SOqU/StKRwSNsLl15d50qJO0in+QZFh3Y6CO2dikwM7Aay2G
	 OEki1SrpTJqQvITiGe2r45NmTW6RtqKXO4mUIf+658K0v2JUv04OO7kRbu5jEzB+7F
	 d3raV5ajzwVEechr09OQmoA20t3Dmg4MCt677sB8jNpCKy7bz51TEOBBlONbs8zsBJ
	 dU+JrZ0o4cgpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4f_s-K8AHVNG; Sun,  4 Feb 2024 23:41:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D5CD40646;
	Sun,  4 Feb 2024 23:41:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D5CD40646
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9AF201BF376
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 23:40:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 73B11607AA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 23:40:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73B11607AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vf-7oRqw7YMq for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Feb 2024 23:40:51 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BDA2F607A1
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 23:40:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDA2F607A1
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rWm6T-006z7T-Lq; Mon, 05 Feb 2024 00:40:49 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sun, 04 Feb 2024 17:40:23 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240204-keee-u32-cleanup-v1-6-fb6e08329d9a@lunn.ch>
References: <20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch>
In-Reply-To: <20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2663; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=nLsygJVJCduLk95szsdKOpEa7GzGsR0GfRGWNH5oTU4=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBlwCBpVzUXNjKxZFogkHO2Vi+0+ncows3pPdO7m
 IgiFrRgNjGJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZcAgaQAKCRDmvw3LpmlM
 hJ5GEAC+Up2GLnNGBrVKddbao8VwxNlTND+5pPoV/Tsh0UGTcxNgfMGyhNDlu4yDEKZUaCTAOVZ
 BOkqbMr0Yg6NF0wmfrUvqdk4/b7UaqnvMI4NVTo4VDdzvyFKR64Kyv6Cf6nStHQMOia+5V5k4By
 +ZAVelTkjyOH+0uUI0+iQOKhFfpXNRVH2I5rsPH9BIzh0WvAsAjTVPvAmTOOlXBE5bd9PCyREBK
 ErUeGpXGTXKtGyAq/cozv7Cv1vLIK96SMf3IBnjVbCya9ithFar8DRpq8ZVZ2E8HQpiX70Ubg9l
 J1+Zs9A1TixSu4SBszHkvbZjrn2y85aTvU3hVVYFWN3M28WTkXOWczm7xWiFjRS9bzz1z/ZvQUi
 aK0yPzLkZqXvfmXIb53E/YwKcp9gl7AylFxm1vns8rjN7QWCvBk3GUjWLkRhGXzhCBps5W/8rNx
 YIqcBiphznQNC1hadEUm/UIZFzNmq6Ho02XFMqWl0ozwz4BAL0QSG+DwGvOionnWxsIVBwyoDri
 0JYgES9vfbVZmjNq95mfCSTpFo4B/6MFwcgoxtfBLayJ1E08Wr0kNrFnqBlJCxJHFhg+DqKDdLC
 Ok0Yshs7CSybELHhfbI9+FkghH0Elw0OVlUEliIxgt2TFmQ1fDuDruITZ0V4FGPx8FZ25/TsLJa
 og612fGbmUSkMvA==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=SOMOZ6/FJXknA8+mFiIFxymCAEzF7Pi03pmztEUsl68=; b=ZM
 cxmBBHlIhSCPAlwVLBoz3Fekp/dYlX6F3SanTzQTRzOR+lxnu6sEtW7uiemGZkSN5AS+iKyP2KiTl
 V4FDxCUDTJFQr+o90HYrb//4tNVP6zw5wRcCU9wfWrcN1Q28REsGFniPRYH9RomDuKrLiCcRp6C8j
 +INF94+EMgeVlwc=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=ZMcxmBBH
Subject: [Intel-wired-lan] [PATCH 6/8] net: intel: e1000e: Use linkmode
 helpers for EEE
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

Make use of the existing linkmode helpers for converting PHY EEE
register values into links modes, now that ethtool_keee uses link
modes, rather than u32 values.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index ff243ae71b78..dc553c51d79a 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -2223,16 +2223,16 @@ static int e1000e_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 	ret_val = e1000_read_emi_reg_locked(hw, cap_addr, &phy_data);
 	if (ret_val)
 		goto release;
-	edata->supported_u32 = mmd_eee_cap_to_ethtool_sup_t(phy_data);
+	mii_eee_cap1_mod_linkmode_t(edata->supported, phy_data);
 
 	/* EEE Advertised */
-	edata->advertised_u32 = mmd_eee_adv_to_ethtool_adv_t(adapter->eee_advert);
+	mii_eee_cap1_mod_linkmode_t(edata->advertised, adapter->eee_advert);
 
 	/* EEE Link Partner Advertised */
 	ret_val = e1000_read_emi_reg_locked(hw, lpa_addr, &phy_data);
 	if (ret_val)
 		goto release;
-	edata->lp_advertised_u32 = mmd_eee_adv_to_ethtool_adv_t(phy_data);
+	mii_eee_cap1_mod_linkmode_t(edata->lp_advertised, phy_data);
 
 	/* EEE PCS Status */
 	ret_val = e1000_read_emi_reg_locked(hw, pcs_stat_addr, &phy_data);
@@ -2265,6 +2265,8 @@ static int e1000e_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 static int e1000e_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported) = {};
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(tmp) = {};
 	struct e1000_hw *hw = &adapter->hw;
 	struct ethtool_keee eee_curr;
 	s32 ret_val;
@@ -2283,12 +2285,17 @@ static int e1000e_set_eee(struct net_device *netdev, struct ethtool_keee *edata)
 		return -EINVAL;
 	}
 
-	if (edata->advertised_u32 & ~(ADVERTISE_100_FULL | ADVERTISE_1000_FULL)) {
+	linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+			 supported);
+	linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+			 supported);
+
+	if (linkmode_andnot(tmp, edata->advertised, supported)) {
 		e_err("EEE advertisement supports only 100TX and/or 1000T full-duplex\n");
 		return -EINVAL;
 	}
 
-	adapter->eee_advert = ethtool_adv_to_mmd_eee_adv_t(edata->advertised_u32);
+	adapter->eee_advert = linkmode_to_mii_eee_cap1_t(edata->advertised);
 
 	hw->dev_spec.ich8lan.eee_disable = !edata->eee_enabled;
 

-- 
2.43.0

