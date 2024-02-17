Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAB3859186
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 19:09:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 044FA605A3;
	Sat, 17 Feb 2024 18:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IAtfACduJ18j; Sat, 17 Feb 2024 18:09:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A6A160610
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708193370;
	bh=SOMOZ6/FJXknA8+mFiIFxymCAEzF7Pi03pmztEUsl68=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LW2m3LV0bqLiBCXKxZDDp20d0B06Saj/btmtcWT7WZZOR68Y719+TdWIkS1NNhhAA
	 FI/DLx/M488Fl6Jg2Jx7VSyAHnp0M+LIKCrPTYI4HEpIswhVrvA2mkCuV1CsvVYid5
	 Tn2zmRRBH8UY9NB2oedLR7FpuF82slVkTGoewA7nviGTotb+N43BH00aRVzimjBEhG
	 dCGR8AwJ10xrvJ8ar1BAwr7xZMfefS6BpVjhIEwYo1jfbpWdlJWvvHDbfN9Viyeuwn
	 zJ273AML0tPCtR6DrhnZHcyrM8CfcYNQwXGL701IrNjmQZD572PO+Lg6ZSJXuUf5I0
	 UZOdknhKiHgwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A6A160610;
	Sat, 17 Feb 2024 18:09:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 391FE1BF299
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3410F80BDA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UKm2GUeMkI_d for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 18:09:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 79D6980B88
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 79D6980B88
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 79D6980B88
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:26 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rbP87-0084hf-2I; Sat, 17 Feb 2024 19:09:39 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sat, 17 Feb 2024 12:08:27 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240217-keee-u32-cleanup-v3-6-fcf6b62a0c7f@lunn.ch>
References: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
In-Reply-To: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2663; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=nLsygJVJCduLk95szsdKOpEa7GzGsR0GfRGWNH5oTU4=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl0PY7GEK/s8u6Wc0Cu2THTjAxHAyzvWlxPU5JN
 0P439nErQqJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZdD2OwAKCRDmvw3LpmlM
 hDf3D/9Tqgzm33tJDXQ8k+RUMPeKw9daJDllil9l16SUwN72TllnIemNI4grngazAtyT0BFBsLQ
 bDRIf9Hd2fOB4qPTwW6LmGs8zF1F7pii4j/r+8Ul8meJVN5FkfPrwSKu6nnhnuNXSoanKs+OJiS
 3eg+gXOdasnyvQEXIiptt46oYpqXCIxstK9ZiDRLCenxsdVc/HUG2Jl3Ahy2fa+bsFxgeacNA7K
 1cM/+14TT+wvWYrN9wnIWYUW8B3Ihh5OdR/O5zpjjN7Kt5vqgwem/ikWuMYTfevQQizHyKmX/cr
 Li8/WLL1/BEvBUO0GR3C9LjAUMGuSyMX1Ga+VeN3umBA+TXE+rzwNf2DB8X9UuhnM+GaanqoJS/
 K0JPhE53HQAv/mnCNDN0gxSc+C4XtmvxKeZ6zzp52UGWDfLaG2fbzgmAiS/6lRHSOfw01mBLfhp
 SJHMLzqavE9sYW/wq5EwSxIGEjZrPD9ygH9YuitFWZyJOMMlUA6BzG6Gz45tDWT8T4W+ML5X1DB
 lmOBJ5fZd30TddR0nCXycxlx1D3DCHGx9vh8u9lfdEP0cMDYA3najmw0ItBQwadmC5uEQc+4sju
 BA8ubZMHrK9u+Wodl1kmBwA+u06auzSqcUIs1C7Os8So6UNuZCN4iMdwM+IpXoPcgryVcEmw10W
 fpIFNtmkMClfEOA==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=SOMOZ6/FJXknA8+mFiIFxymCAEzF7Pi03pmztEUsl68=; b=lg
 ZxLCzSqzEiN4nvNhIqKb6czIezJYgdiYghZBH0CaAZ4tgZd6O5kWymLV++SU62cQIX3cmuuBh/F81
 q5Sa9JN/82qNEsbO4udyDK7o+gHPWHpK3011idwIhkZv0GAZuJoSMgdyhI5fybJIHBs5BhiY+y/Wm
 qhLHCOE36QswYaM=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=lgZxLCzS
Subject: [Intel-wired-lan] [PATCH net-next v3 6/8] net: intel: e1000e: Use
 linkmode helpers for EEE
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

