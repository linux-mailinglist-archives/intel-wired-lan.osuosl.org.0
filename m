Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9428556F5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Feb 2024 00:14:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 933C941898;
	Wed, 14 Feb 2024 23:14:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UhpfyjVW2qfy; Wed, 14 Feb 2024 23:14:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABDCA4188B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707952443;
	bh=bgkZPYVA0V4hJb/XgJ4JlLp2dhut1zemAO++lcwUguU=;
	h=From:Date:References:In-Reply-To:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5LGo7fJ63tku+xzob7+zfzjRALWz5oaswxjFQSuU7PfU1Kqd5EWB0QtMNZaEAwHLH
	 BG9FCWD3coLc8CQDKC8vnNChuiJ+/NbkyPLgV95sKyGUsk28bXjexr9HJjkIUsX9jh
	 rJC3/2OclzT0DMWxfkdcZS4uobAAi8rn74gwvxcWcKDxlgXyl9n0DX6zR0lnb7HoGR
	 brWpYasU/2FvGSPPJhXY18Xl4c6EsS3vo39DUz7IXn5DYIIPVkzLFaJQTRIB5gVmeE
	 dhs3x0ULB1OIBkSTWdfbVYlSzoe1gAKp10Ru8mBpc727fC4poYqpmBDMvnYNECkxGz
	 KBrbQYFwnCOqA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABDCA4188B;
	Wed, 14 Feb 2024 23:14:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E05E91BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:13:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD80241821
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:13:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1I3-pzjBaVeE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 23:13:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9AF2941826
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AF2941826
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9AF2941826
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 23:13:58 +0000 (UTC)
Received: from c-76-156-77-114.hsd1.mn.comcast.net ([76.156.77.114]
 helo=thinkpad.home.lunn.ch) by vps0.lunn.ch with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1raOS6-007pqx-Vb; Thu, 15 Feb 2024 00:14:07 +0100
From: Andrew Lunn <andrew@lunn.ch>
Date: Wed, 14 Feb 2024 17:13:20 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240214-keee-u32-cleanup-v2-3-4ac534b83d66@lunn.ch>
References: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
In-Reply-To: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Ariel Elior <aelior@marvell.com>, 
 Manish Chopra <manishc@marvell.com>, 
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4430; i=andrew@lunn.ch;
 h=from:subject:message-id; bh=w1DJYkt9FTZRnNhfN8ZM1D8JVVgGCSqPVVQnR9uVLaE=;
 b=owEBbQKS/ZANAwAKAea/DcumaUyEAcsmYgBlzUkkII+d18nk9TsjScFtFJDnDHC6I2nLalnU0
 zBCp3NJkTuJAjMEAAEKAB0WIQRh+xAly1MmORb54bfmvw3LpmlMhAUCZc1JJAAKCRDmvw3LpmlM
 hGTQD/9padJ5okLCRydr6Wbzfdd810RJWCKYWF+vx0xycV5WdEaNoKa4AHigiBEcpnhS1umpB4z
 CfmZyHOVZVBsYgwiqPqFRFNCtqx3XPXfgt7eifpr7kN6M/kji/gIL3YI04Ju0oyjQ6CkDnQYOlD
 jVdef55dc8kgI9wPxPNEk7a37qKr8r+ZKO5ZpFmE82yYuFrzMbJtKsynd/H0LD7h9COt3n2o30a
 NfoSQRbwMV0/9tJrOapAQprbL2YnI6kzfCumMH1zpG0fLk95JTIt0k5pVTp4bNAdhg/bYqQwIy4
 dNDtEuClGKFfKTCYAr0w8BsbaefFGqvEkq/4Q/fyV1Q17misQdDgzN2Fm+GRVg5oe3S/4icgjOX
 XbbAz6J+W7t19mmLieCTLgkmfO6rjX0cYIeV0d3o150D5EtIGWpVtdw/0Qe2fgQUWWV1WCxO5/e
 JSB5MPGuUySE+h1TyrudJIWM/Aa4FySmQXmDReesi1T1HoYhhNLW13rIOL15o2nctnjO8TcK+nW
 kK/TdzZf+cKUImzxMcSSKvl598E/EByvVC6/2xOHz4ZV6ymtdlerJPplgVrmh0y3ISeCmI7VMWx
 8iiFSRigWoKJe+y+JubyjJfGhzIqPqVTgo/fjB8zUmTZ94AUXas9L1gagTP7vhWySqZN5dY7Zj2
 m9KMHVuknOrgKOA==
X-Developer-Key: i=andrew@lunn.ch; a=openpgp;
 fpr=61FB1025CB53263916F9E1B7E6BF0DCBA6694C84
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=bgkZPYVA0V4hJb/XgJ4JlLp2dhut1zemAO++lcwUguU=; b=dI
 qo28TiVHsgnDlCbxnh68GM9Zatv6Sci78O0cUQy2nNvNRJOu5GGXgTmeiJKd69Fww1IFBXthHNpmz
 fjyLfZZFSh8TxB81ZUS+W3CXRgHnT7FQfuKn5nxjlKu/Ajmv7gKP8cdBUvoBLcSl8KsWovh3sMxtq
 sVaH3tsLT1XzcVs=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=dIqo28Ti
Subject: [Intel-wired-lan] [PATCH net-next v2 3/8] net: qlogic: qede: Use
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

