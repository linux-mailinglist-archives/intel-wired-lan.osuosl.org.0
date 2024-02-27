Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF21C8685CE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 02:30:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FB6640848;
	Tue, 27 Feb 2024 01:30:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jDbjwE6jD8PF; Tue, 27 Feb 2024 01:30:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D108540854
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708997400;
	bh=KBe7PSdB/4N4eh9woXxZp2COIAUibBjbd71nXWJwB2E=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=InLdbpyEVdgO/mfFRzkUJrtA2jVOF2OV0IgO5ezUqUjAijbv4+qEDFpFAunNTDGxS
	 Q2wUnVy2rq7weTr2h0psq3hCyyi3UTG4NqAwNUahYE+q3ZTafuqNXHmhP2MCIUceL7
	 D3ejjE94XnihIJ48sm23ok6NUGxN1YpcoCk/ZEfzVyQRFpzBcCDW/0Ox39UnkNDG7G
	 KmF11a0UGt4XSvkmbEKdUtQh7dVR6yjeH58o+F1yTrNbLZqIHi4j2yc/ywfn5SBNe/
	 4TevngXPtr8ns6kom0Q/n+5OAOCR2s6RnI0xquRqp0f2CV1XPsR2LysRTqUi4HeVCG
	 fXaDBL+R3yCfQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D108540854;
	Tue, 27 Feb 2024 01:30:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2CBE41BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:29:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1A4DF80B2F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:29:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RMv9VIZxm6Q4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 01:29:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4439580ADF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4439580ADF
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4439580ADF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:29:57 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1remIM-008mef-0w; Tue, 27 Feb 2024 02:30:10 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Mon, 26 Feb 2024 19:29:12 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-keee-u32-cleanup-v5-6-9e7323c41c38@lunn.ch>
References: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
In-Reply-To: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2709; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=PX0276prl5bF0Zk/hDHop6Y8pnHyHYPG6F7vOSTrfII=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl3Tr399O/qZLa+qtmk1D+wb8mIMB5uVkItxltd
 fQDjV+4iSGJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZd069wAKCRDmvw3LpmlM
 hGz4D/9gkS9mGuVikuYHJ7HYII28YAzZuB6JgiHmuKa7/lJQ1R21GGykTuZVZ27dMSwAamohMK4
 zwKekSM6jCXpPgVQP/Qq0RKrpsD0J63h81tLjpTaOE/CFeY8NGFQQDT8NRUX1Kmbt29iRfTDTNw
 8gu0aCYYmP3ElEu+pouz4+LFbY6qTlK3FS5TXQr4hD/bRi3ukpxe7X3ClwsK7eLFsA1V6xobEiH
 c3iRkpDgZ0pesibjPuD6r+T8G1TZsX0DoOxkfzESwru9AbpF7hyuV4Wv+Z+UgC/Xfdf9Cx9UQYL
 F3WK0/vNhCSnFmF6vs1pI4dO9XRdM7hCoJr4iiKAAE57yBOuM7zUbhk4HP+S4y8D39nA2AfF/gY
 PDBnbRIwdipEqnTQBzdW3lKlm39B/+vXavVXXEEACKCi4pdl9Hm24LacFTJA2upwsO+npis3vgQ
 IL/xVNwOz8Zqj2XTj9jh4Td3cegZ0giL9vnanhO7Ry/d96iH1pMJcqtt54C2U2GHUWP9AtV0V1z
 /jsQ4Hx1gy8EdIHTNwZgYalWVPjSg1VEDI2UyUtLDjF29wy6SNeWR8aqmdLEVSn3Uzmz94wTTSY
 MHEZcdnw9RyAlOkHad2Ci2EyM+hnvgeLApEm0pyTPh9iwEyglt4k/IlSxPRjsbsKresuNEh5gwO
 FXXgDhcSgzoY/NA==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=KBe7PSdB/4N4eh9woXxZp2COIAUibBjbd71nXWJwB2E=; b=Ih
 Ee23WVyNCiH6KwotDzZezOuA0Z6O1lLT7CqwQHrOIjC/6v4g6hr7U+ZA8brURnZ/DXXcsNg9FGHdW
 Ja+5ZXfPkJdbPI0spGyxxKwzPpI091XrT1dJeJ/N4Em1qU/fbr4lfNAYoKqmi9r7DJxeLx96Iul1d
 0KwAu+2C1tnYpww=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=IhEe23WV
Subject: [Intel-wired-lan] [PATCH net-next v5 6/9] net: intel: e1000e: Use
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Make use of the existing linkmode helpers for converting PHY EEE
register values into links modes, now that ethtool_keee uses link
modes, rather than u32 values.

Reviewed-by: Simon Horman <horms@kernel.org>
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

