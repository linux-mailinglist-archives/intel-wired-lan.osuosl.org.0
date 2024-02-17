Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C3F859188
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Feb 2024 19:09:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CBAD860C0E;
	Sat, 17 Feb 2024 18:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mNh4KCR0TOaI; Sat, 17 Feb 2024 18:09:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1ED4760B1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708193373;
	bh=4VBrx1qM6Gzjf/dZj0JHXBU4KIuERNSMCLhowQQxEkc=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1JXTjoiRI4dHnFqjsk+iePKMuH06y7SkjBwhzEUHr2oNaTYGxtKbVcARH5HHOypFo
	 WxvtA7U9cjr5TYkng+TTEJLZBWcv4/qtaO5T/FWXBzhs/Kdf2I0WC+QQpprg/HQDqv
	 2W5nctjuJeQWMhxzm5gziTLyJ277OGOQNNtEpQDM1/sxPfjqgjGwCYcVTIxBwdjJ9U
	 /UtMkduCWp7xUn6OBhnoRvwrmYiFJDmQC0pWmMeV5/u3cnM14YCueYtvnkuyINi4Sq
	 OovZI6UYS0nxuG2+9ssHCwEGCJ43xhhsNFlwYTo08hmcEb+HVshCL4TLxnRwGldAKu
	 JsoS69SbeAuBg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1ED4760B1B;
	Sat, 17 Feb 2024 18:09:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFE1E1BF299
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D98F80C2D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1m0yPtu-qOlk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 18:09:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C8FB580BE1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8FB580BE1
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C8FB580BE1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 18:09:29 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rbP8A-0084hf-BG; Sat, 17 Feb 2024 19:09:42 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sat, 17 Feb 2024 12:08:28 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240217-keee-u32-cleanup-v3-7-fcf6b62a0c7f@lunn.ch>
References: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
In-Reply-To: <20240217-keee-u32-cleanup-v3-0-fcf6b62a0c7f@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3793; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=JAaXmFLPL7MF52z7W5bakKctdf1rOc6D32Y12paOGJs=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl0PY7PbH9bV4ynmYdotjif8o5ti3hDTv55GCwL
 ySlVhIGWEWJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZdD2OwAKCRDmvw3LpmlM
 hK/fD/9ztCXRyyqY0vnBtz+rgygONJN/FA3Vvz4Kds2LWhg0JsLeVDrJYEi/j9aPoKRd67ANuP+
 a0TAZNT/ZeG3vKikDgJrg9+vnpHvNBrVbFNwB16xfckii6GbYjgIjaOdA1eEyywz4+mMGkDDUod
 JRPkqbMKf3hE9uz3HrhxwxK+FNoaeF9pFDzhadnX9rE7AhfSNAAgU0tWDjoGlcL8RQic8gkPTNs
 A8hwNjBfO3W1z/6fm6wh2v8TBzJPjlMH7KJQnk7t4vzCPg1t+hVsV5PKA9FIPlAy230yDetX/CT
 xdaHGcwodGKufKtQzOsoGBhwLvZpidYdixzMutBkAulhZyc19g+wxWKdY7kF9PxGmoDO9T0D1G4
 mxnSDYMH7uHqQgnfCWDcseUv6Oi3qGYQGfjC7XvtGACIj+QkhvGtauA6nI+Zv3pOR5vS07h4MJc
 5FtgiWUX714Uncwp5fw3LwJIBOU7/y5HoK7cjZJIhiAqQiOn0vg9IgaGp/3CJsw4QfVTM3NZRr+
 hQPckJAi/F2PQ8EOw7WMjItWLXm8afpu0r0wGITYd12vL6pDl4Bg96xcEevL+PQ6i1v6BHt08KF
 B2xu9/xW6HNxW/Ro41Z+MZBQlPvLYbG1sYRmW7Yf0BV1F+1lcYQBel7kzDFlaMZou3FjIpc4xIe
 helrL70LGOBWDtA==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=4VBrx1qM6Gzjf/dZj0JHXBU4KIuERNSMCLhowQQxEkc=; b=WL
 zCMe+jixLCOsxo+Y0NyK+tVSvJ8oEncWSyNjpOuE3bs1s6VaQ7NxGEctJJAhwt19Tfo7/NSK9nMPF
 TqZZ9G3hst3qbl/yQDtH1VzcTM6TIgXP7A+EXYfjK1S3M7q45leW+V8ZNDTn1wAjFZTmJjPL7Jk3B
 y3rMEmwonxzPKcw=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=WLzCMe+j
Subject: [Intel-wired-lan] [PATCH net-next v3 7/8] net: intel: igb: Use
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
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 33 ++++++++++++++++++----------
 1 file changed, 22 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index b87b23d2151c..5da50574a28c 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3038,11 +3038,13 @@ static int igb_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 	    (hw->phy.media_type != e1000_media_type_copper))
 		return -EOPNOTSUPP;
 
-	edata->supported_u32 = (SUPPORTED_1000baseT_Full |
-				SUPPORTED_100baseT_Full);
+	linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+			 edata->supported);
+	linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+			 edata->supported);
 	if (!hw->dev_spec._82575.eee_disable)
-		edata->advertised_u32 =
-			mmd_eee_adv_to_ethtool_adv_t(adapter->eee_advert);
+		mii_eee_cap1_mod_linkmode_t(edata->advertised,
+					    adapter->eee_advert);
 
 	/* The IPCNFG and EEER registers are not supported on I354. */
 	if (hw->mac.type == e1000_i354) {
@@ -3068,7 +3070,7 @@ static int igb_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 		if (ret_val)
 			return -ENODATA;
 
-		edata->lp_advertised_u32 = mmd_eee_adv_to_ethtool_adv_t(phy_data);
+		mii_eee_cap1_mod_linkmode_t(edata->lp_advertised, phy_data);
 		break;
 	case e1000_i354:
 	case e1000_i210:
@@ -3099,7 +3101,7 @@ static int igb_get_eee(struct net_device *netdev, struct ethtool_keee *edata)
 		edata->eee_enabled = false;
 		edata->eee_active = false;
 		edata->tx_lpi_enabled = false;
-		edata->advertised_u32 &= ~edata->advertised_u32;
+		linkmode_zero(edata->advertised);
 	}
 
 	return 0;
@@ -3109,6 +3111,8 @@ static int igb_set_eee(struct net_device *netdev,
 		       struct ethtool_keee *edata)
 {
 	struct igb_adapter *adapter = netdev_priv(netdev);
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported) = {};
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(tmp) = {};
 	struct e1000_hw *hw = &adapter->hw;
 	struct ethtool_keee eee_curr;
 	bool adv1g_eee = true, adv100m_eee = true;
@@ -3138,14 +3142,21 @@ static int igb_set_eee(struct net_device *netdev,
 			return -EINVAL;
 		}
 
-		if (!edata->advertised_u32 || (edata->advertised_u32 &
-		    ~(ADVERTISE_100_FULL | ADVERTISE_1000_FULL))) {
+		linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+				 supported);
+		linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+				 supported);
+		if (linkmode_andnot(tmp, edata->advertised, supported)) {
 			dev_err(&adapter->pdev->dev,
 				"EEE Advertisement supports only 100Tx and/or 100T full duplex\n");
 			return -EINVAL;
 		}
-		adv100m_eee = !!(edata->advertised_u32 & ADVERTISE_100_FULL);
-		adv1g_eee = !!(edata->advertised_u32 & ADVERTISE_1000_FULL);
+		adv100m_eee = linkmode_test_bit(
+			ETHTOOL_LINK_MODE_100baseT_Full_BIT,
+			edata->advertised);
+		adv1g_eee = linkmode_test_bit(
+			ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+			edata->advertised);
 
 	} else if (!edata->eee_enabled) {
 		dev_err(&adapter->pdev->dev,
@@ -3153,7 +3164,7 @@ static int igb_set_eee(struct net_device *netdev,
 		return -EINVAL;
 	}
 
-	adapter->eee_advert = ethtool_adv_to_mmd_eee_adv_t(edata->advertised_u32);
+	adapter->eee_advert = linkmode_to_mii_eee_cap1_t(edata->advertised);
 	if (hw->dev_spec._82575.eee_disable != !edata->eee_enabled) {
 		hw->dev_spec._82575.eee_disable = !edata->eee_enabled;
 		adapter->flags |= IGB_FLAG_EEE;

-- 
2.43.0

