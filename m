Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AE98491C2
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Feb 2024 00:41:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1C3C40641;
	Sun,  4 Feb 2024 23:40:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1C3C40641
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707090059;
	bh=bgkZPYVA0V4hJb/XgJ4JlLp2dhut1zemAO++lcwUguU=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0LNuWIsuMBtz1pz/u3YD6wkOa/JjpAiZH8Eru1Q2t2jUlNQqsdrmbPX22Y8HkvIVt
	 ch5U5809AlajWZnpWFoi0+HLmkrB4S6OZGYVxY5aAFSGvfAQDzyL6vpwi7ByxkcEja
	 2Re/sAMEbDEteXkz1E35/tqHy6loXHe73YTGKCj2IbD8LnNe1n0D8GfZdKVkX7TfVH
	 prqBrH7b437G3l9vC6qkG2u5AievOoP+WfJa+CyA7KvmEIIHpMkxbzHoRE8VEt/FPS
	 jiWKcqjdcCX8VK7yWHgFomwGW1MhQcL0b450ykVNJcECCjKbcoUwFKetQSKAhf+GI+
	 /mUJ/c+vz6ulA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fBgtS6bSbvG0; Sun,  4 Feb 2024 23:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44565405C6;
	Sun,  4 Feb 2024 23:40:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44565405C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D7B31BF376
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 23:40:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA507415D9
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 23:40:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA507415D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rzCh5dgjhKRn for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Feb 2024 23:40:42 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03D68415D7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Feb 2024 23:40:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03D68415D7
Received: from c-76-156-36-110.hsd1.mn.comcast.net ([76.156.36.110]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rWm6J-006z7T-R0; Mon, 05 Feb 2024 00:40:40 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Sun, 04 Feb 2024 17:40:20 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240204-keee-u32-cleanup-v1-3-fb6e08329d9a@lunn.ch>
References: <20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch>
In-Reply-To: <20240204-keee-u32-cleanup-v1-0-fb6e08329d9a@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4430; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=w1DJYkt9FTZRnNhfN8ZM1D8JVVgGCSqPVVQnR9uVLaE=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBlwCBon+s0cfQymfK1yKJWI3CJgbZEzc2imyu6H
 L7upZDxOPeJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZcAgaAAKCRDmvw3LpmlM
 hJNLEACUectcqUkkbAM2nZU+LrkjMEu+yeWzxiAl/BthabY6sfWCMweyFwHr7e2ZGsXEVEwMAxA
 lst7aQCILYGVrOcttw0xtlMaGYzt7OgMO+wRyKm274hTe0t0FiszcIaWMK7mWgwLe6i8LNnDGXB
 UCRX0dzeZK6fWxlevwii98L4P4bpQKSyc8veZD8rFmzmawXlz1z+bzMZL3BvpLpr7sFI1wBekIB
 nOaeMUU9ApSxYM/NO6+9x6R2O9Z2Jxg55K/GAygI6mqA7qs1IEPQXTTdvBZzeNm0fABB41bFpYQ
 H1haLfnckwjLdBw6zCs+8z94Jguh9giD6aYWGNDjgnUCzWOyyqIqpgEaGIMxjEkmmq9mk448wnM
 cq+czs3mHS28K/056kzZrNAit9/SLNMRwZi63aO2Te6M8X+rahpcANpD0g+PYKXBnSI1/kfax6I
 JhaDbkGmepsMrvL/F6PP2MrJAikviJuX9fyKsLiO7FxWhKx6/l1R1tqlmCkLGBFYL821dF2fAe4
 L12EuB07Fi+EVJeGgCsKw47q915MG/wY6bk8bk9VII9EIDrwPAVMx5ABmr5ZWui8FAKG7xfNxZ5
 ww4cqVE7My8aRWf38hABt/pPK4t5uS0w/XR3jpuGPoHcOjpW8egnmn6+PoZWgfDYmSl76rNSkzV
 myrUpDkn0v4hiAQ==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=bgkZPYVA0V4hJb/XgJ4JlLp2dhut1zemAO++lcwUguU=; b=wj
 7U/D4/09bMUQraEGSAJXfdYZo3Na1YHmFlEhuSIUn6QP88V/QDfr5Hc7TaJP1D1RS5WiDeZL/1XY2
 aSyMXvDh/JlagPNT5GDKF3NFFbV/JPsaniWUz62xD8tbhe5ANvXVzzsbniKLoJA8+CwdHL/FxPHwD
 F207h3tU86t79LQ=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=wj7U/D4/
Subject: [Intel-wired-lan] [PATCH 3/8] net: qlogic: qede: Use linkmode
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

Make use of the existing linkmode helpers for bit manipulation of EEE
advertise, support and link partner support. The aim is to drop the
restricted _u32 variants in the near future.

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

