Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EF58685CA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 02:29:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C78094085B;
	Tue, 27 Feb 2024 01:29:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DqCfC-cRVGPC; Tue, 27 Feb 2024 01:29:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C38264057F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708997392;
	bh=lERX+b3AT2q0QSGG0BM1XWJZtJMmZ3hJB7DS1cgT0BM=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pbUB/WD8kCRDPvMJ8Umd6lSME1G0aC5iUEjaeE8QiW6qM6VyXz/L1u7peFZ1QRUff
	 J/uQ/Nav42XoYlgopog4p/eQuV/KNj5vl1Rv78oaDGgotTdesVcc/2gntokhfwd/6O
	 QhRid6ql2MxfutEztXIXoUW/Q3c9uNV6AOukj6VxDxldjErUmtoe/huQF1P+vqnIfE
	 JcEMZG+7dlFUhJEOsTLNBXYhQUbQNaJpTU6Dx/bclLeQVNQz3aMEdYfyZS/5Rrz+ev
	 E2UXH5JfOZPD25Mb2SGjIuTvV6MAYYCP7bYzBfv52PQsZh4ZIyHElY3ZBE8GVjnOP7
	 CToSmaBqcZtdg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C38264057F;
	Tue, 27 Feb 2024 01:29:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 333381BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:29:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1CFAD60851
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:29:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p79kp53U8npG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 01:29:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1FF7B60761
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FF7B60761
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1FF7B60761
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 01:29:46 +0000 (UTC)
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1remIB-008mef-PO; Tue, 27 Feb 2024 02:30:00 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Mon, 26 Feb 2024 19:29:09 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-keee-u32-cleanup-v5-3-9e7323c41c38@lunn.ch>
References: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
In-Reply-To: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4476; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=fCtThoZRHD+wc3a7N9uHBRhkO5QdG2fpNE4jqVzG/2k=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBl3Tr216//DHYiTUuP5od8LffVJJ5y12f7LD/iS
 BvbjdRPWM+JAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZd069gAKCRDmvw3LpmlM
 hFzfEACgu81+/Q2ZXeNT0d9cJR1M62hFXup59skkANdbyASDGO9xsipT77rQp2memBMi+p+JXTH
 HeaPoKLnsgb3DWQD3G/OjITaF75+bIJN0/gVscxHvIIEe/0hgvxKMKsFhPE20cphna2rIxnxiQB
 8pNMrUg3aBnGbdbswwh74ZtDNdyb/J9WVnea28K5m/3cJKJZPu7tn32RdgjZwgvYee9jcOmr7Nf
 b2YQKGY1C6jsQ4atcxAcWfxvGrELSifgyVnH2sS1MgvUX4ZA+9iOEWxho7Uwns4MT3Qb71yAlB3
 0QMED9oMX0zSouWpTigti4qxddKcSQCx9AKH4f/V1e2m1HtxLy7P4I2gEPwWFQBQf/WxyGSSN79
 Qzec9iMxP5bvpjtmNOto5GLkoq719pblS7NOMDWk4K4T7c6bW0ahZPG7z3m0XE47mSt8Vigs2xX
 3wLKkI99SGp5HJK9c18i7UHmr/r2sIwDgpqnIRFNxdZFQuS4efFn3Yg19ZEvq7pI25PoDJKzrO2
 PIGrnhex8z3dgjIDUQBB75W7QxxT7BCmyJAfQBgWepUqlwkf1MYyVhmg+AAZwgOmNlws6JMxYOo
 HFHXxAUIJl6BbfAv9Mnf5nxsCk6y+AAB4boVTRgl2MM9Qg5OlRr77fWu6hQRUH70f2qIIYx47AM
 153+eylj40KYh6Q==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=lERX+b3AT2q0QSGG0BM1XWJZtJMmZ3hJB7DS1cgT0BM=; b=qe
 02hNRjFAoIo4TGRPmt2zxd1gF8iywmOrUYRQ0uVT+yiQBw1TGabGtAoPymcO639FYBYVb2+YXm4Ba
 PcRg4IZ8+I66MIIrZxQ6h+SE9pnMc1JIXcLEInM8BNYkXJ1ZEi9n11w7IOlHn+xj09j02B36t3/bR
 NXOKe6lgfKbqsBQ=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=qe02hNRj
Subject: [Intel-wired-lan] [PATCH net-next v5 3/9] net: qlogic: qede: Use
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

Make use of the existing linkmode helpers for bit manipulation of EEE
advertise, support and link partner support. The aim is to drop the
restricted _u32 variants in the near future.

Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/ethernet/qlogic/qede/qede_ethtool.c | 60 ++++++++++++++++---------
 1 file changed, 38 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
index dfa15619fd78..ae3ebf0cf999 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_ethtool.c
@@ -1789,18 +1789,26 @@ static int qede_get_eee(struct net_device *dev, struct ethtool_keee *edata)
 		return -EOPNOTSUPP;
 	}
 
-	if (current_link.eee.adv_caps & QED_EEE_1G_ADV)
-		edata->advertised_u32 = ADVERTISED_1000baseT_Full;
-	if (current_link.eee.adv_caps & QED_EEE_10G_ADV)
-		edata->advertised_u32 |= ADVERTISED_10000baseT_Full;
-	if (current_link.sup_caps & QED_EEE_1G_ADV)
-		edata->supported_u32 = ADVERTISED_1000baseT_Full;
-	if (current_link.sup_caps & QED_EEE_10G_ADV)
-		edata->supported_u32 |= ADVERTISED_10000baseT_Full;
-	if (current_link.eee.lp_adv_caps & QED_EEE_1G_ADV)
-		edata->lp_advertised_u32 = ADVERTISED_1000baseT_Full;
-	if (current_link.eee.lp_adv_caps & QED_EEE_10G_ADV)
-		edata->lp_advertised_u32 |= ADVERTISED_10000baseT_Full;
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+			 edata->advertised,
+			 current_link.eee.adv_caps & QED_EEE_1G_ADV);
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
+			 edata->advertised,
+			 current_link.eee.adv_caps & QED_EEE_10G_ADV);
+
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+			 edata->supported,
+			 current_link.sup_caps & QED_EEE_1G_ADV);
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
+			 edata->supported,
+			 current_link.sup_caps & QED_EEE_10G_ADV);
+
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+			 edata->lp_advertised,
+			 current_link.eee.lp_adv_caps & QED_EEE_1G_ADV);
+	linkmode_mod_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
+			 edata->lp_advertised,
+			 current_link.eee.lp_adv_caps & QED_EEE_10G_ADV);
 
 	edata->tx_lpi_timer = current_link.eee.tx_lpi_timer;
 	edata->eee_enabled = current_link.eee.enable;
@@ -1812,9 +1820,12 @@ static int qede_get_eee(struct net_device *dev, struct ethtool_keee *edata)
 
 static int qede_set_eee(struct net_device *dev, struct ethtool_keee *edata)
 {
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported) = {};
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(tmp) = {};
 	struct qede_dev *edev = netdev_priv(dev);
 	struct qed_link_output current_link;
 	struct qed_link_params params;
+	bool unsupp;
 
 	if (!edev->ops->common->can_link_change(edev->cdev)) {
 		DP_INFO(edev, "Link settings are not allowed to be changed\n");
@@ -1832,21 +1843,26 @@ static int qede_set_eee(struct net_device *dev, struct ethtool_keee *edata)
 	memset(&params, 0, sizeof(params));
 	params.override_flags |= QED_LINK_OVERRIDE_EEE_CONFIG;
 
-	if (!(edata->advertised_u32 & (ADVERTISED_1000baseT_Full |
-				       ADVERTISED_10000baseT_Full)) ||
-	    ((edata->advertised_u32 & (ADVERTISED_1000baseT_Full |
-				       ADVERTISED_10000baseT_Full)) !=
-	     edata->advertised_u32)) {
+	linkmode_set_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
+			 supported);
+	linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+			 supported);
+
+	unsupp = linkmode_andnot(tmp, edata->advertised, supported);
+	if (unsupp) {
 		DP_VERBOSE(edev, QED_MSG_DEBUG,
-			   "Invalid advertised capabilities %d\n",
-			   edata->advertised_u32);
+			   "Invalid advertised capabilities %*pb\n",
+			   __ETHTOOL_LINK_MODE_MASK_NBITS, edata->advertised);
 		return -EINVAL;
 	}
 
-	if (edata->advertised_u32 & ADVERTISED_1000baseT_Full)
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT,
+			      edata->advertised))
 		params.eee.adv_caps = QED_EEE_1G_ADV;
-	if (edata->advertised_u32 & ADVERTISED_10000baseT_Full)
-		params.eee.adv_caps |= QED_EEE_10G_ADV;
+	if (linkmode_test_bit(ETHTOOL_LINK_MODE_10000baseT_Full_BIT,
+			      edata->advertised))
+		params.eee.adv_caps = QED_EEE_10G_ADV;
+
 	params.eee.enable = edata->eee_enabled;
 	params.eee.tx_lpi_enable = edata->tx_lpi_enabled;
 	params.eee.tx_lpi_timer = edata->tx_lpi_timer;

-- 
2.43.0

