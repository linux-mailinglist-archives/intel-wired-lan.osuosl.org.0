Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 473768597FA
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Feb 2024 18:07:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8A6A821A1;
	Sun, 18 Feb 2024 17:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NfszAasXVyQs; Sun, 18 Feb 2024 17:07:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 06D0B817C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708276069;
	bh=SOMOZ6/FJXknA8+mFiIFxymCAEzF7Pi03pmztEUsl68=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lXoD9F7wn45nFZOFZ4BYOFBiE+oGMBzbrZSeML0RSU/5xaxInV6A2fZa1QLYWGIeZ
	 LJlbl/qb4MQRL9VDNzBhsaTSCsI0OorvRbk5MtV95lmya1E4wYDcq1UBFMYHujuPWw
	 N2QvR1h9aoGcVh75IaZHS71W2nNwcpVHwEqMblwV1CnwEJkVCL+/wcqTkv9ZHRp29z
	 YKQhxpBb9cJicvEWXx7TudCQtQ4wEAomUQMbLOvI3KxNiTzekhhTAjQiFvO78dBSgj
	 yzc8AT6vfZUdWJmzAH28dsjBt//mJBPvoVNQ+AM441Ki+wqYOEau2nC8oQo/4mc2q4
	 hBAvwzt04GpVg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06D0B817C3;
	Sun, 18 Feb 2024 17:07:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 466CD1BF396
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32F314071C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id widH0vgGlEHx for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Feb 2024 17:07:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F80F40718
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F80F40718
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F80F40718
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Feb 2024 17:07:46 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rbkds-0088HX-73; Sun, 18 Feb 2024 18:07:52 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sun, 18 Feb 2024 11:07:03 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240218-keee-u32-cleanup-v4-6-71f13b7c3e60@lunn.ch>
References: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
In-Reply-To: <20240218-keee-u32-cleanup-v4-0-71f13b7c3e60@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2663; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=nLsygJVJCduLk95szsdKOpEa7GzGsR0GfRGWNH5oTU4=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl0jlA91EUO7alTOK9ZzIu3Ku6+PXdyh7P/mv9v
 OlgCS1389yJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZdI5QAAKCRDmvw3LpmlM
 hJvFD/0eOvrHI2+H64ekgmZKRhSn6D1jRFWAc0f5We8soO8bazUkB0XJWS7Mm0DR6UL+o6IT5HC
 eqbssQOQDJ/zpn0uRvqL0VE64wijEyorFqmWAfZR22HIEe86CBtLd4Uh9oLO6gC59ZxTrmXCrHB
 S2j5QShvaGbV4a0zHR6OocJXDZIuflfr5nU5+R7+KNh4U+8T/Ypm9ASeQnbKyFEUPDYjRMp1i1N
 u5uO4z3k3RqcNDNEakFuqKMT8UjsINWNK3wXP16M9j0fxhFq8V6nVbhVeKOB3FylMGZngHOHNfP
 wXo/6QMJxtC+4iWdVu3bnRqbvVOZY7riJ5iAt934v8G4/zhdE/y6Zx04Fo2YKdH8EtYHbJPGBKi
 qv6sAnCG/On8yOBarSZ4/+9h/4l810BGYRn+Kz6N0/A+Fmjo3zhq2isp0KJ//pX1H0/Wbt5QSge
 pOg7QwEQsDYq2KbUSYTJe2bx3CgZJwhBp96EnplyrfDKmqhlz3+c1dZazTRFqX8y4MKqG9gu3Cr
 hkKzfnbvNKfaGBoPtM670Zq/J2wv42pf/Ph1cp1CKBHso3xDGramiY4LVHiX4PkeYVO7q2Tzrs8
 B84dygIfydXG9eKXUf26P3p/p/zdVw8VixEGr6evoe6KWPiBbLghjqZZeHfRwuvkYAJLsYU+6oB
 fTerw2DwSfqPtKg==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=SOMOZ6/FJXknA8+mFiIFxymCAEzF7Pi03pmztEUsl68=; b=0z
 xWT03KHkP9zKDDeKKuB8Ff0OyH7C2sAQ9EDmDYp08qF7ZwVGjtsPUgZOcu/2ZJD1EodMYNq3vPpLL
 y/8mhrwXdBg0yQJNouHaJDZ/lNxjlcc9XGi4U3P43/fQgwDJjSFZg1Ly9N4frWV+NdABuSYw4N/r8
 dShCiZ5zqJ4P5BY=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=0zxWT03K
Subject: [Intel-wired-lan] [PATCH net-next v4 6/9] net: intel: e1000e: Use
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

