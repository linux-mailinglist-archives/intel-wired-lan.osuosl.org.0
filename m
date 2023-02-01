Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A03E2686B7F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 17:26:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4063341989;
	Wed,  1 Feb 2023 16:26:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4063341989
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675268769;
	bh=4yR96nxduKdhv9lFw8u7tOdH/3rhGPVlOg45QA8cGKg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tbJYAnjM5W4XY+PL/cY/U2J38VbC/NB96xkyAx/ztF7auvYBsXHoC4o4+P3nOHx2n
	 GUutmyhLsVGRWUVdUQRtvOOmZM+nfGSeSBAqnwbp74R6PDsONouUWZy4bK/y/DzVW4
	 Jz+5Lrvatv2DNWOtAnuF+E2LSdMGXDUxS1meJlqTBE41YHfwW5iI6ZpTk+i2+13PHU
	 JJpLf24x/CYBEUrFVGJS1eWSNUjiVGivJAXEgVfpfCdgtgofTCNNlmyhvGHA76Ro+N
	 xYxfzzkiETgi2MyDMgRb4k5WjyvWDVkFQudHE9qko8xUNKnitBl4sI90bvCKbDir6L
	 awOOHe59LXrfA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vdSxk1ieD-vS; Wed,  1 Feb 2023 16:26:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B985D41924;
	Wed,  1 Feb 2023 16:26:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B985D41924
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B802C1BF388
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 91F8B81E9A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91F8B81E9A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jtXepYmx_-Mc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 15:17:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9E2E81E96
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9E2E81E96
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 15:17:08 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZY-0002rh-0E; Wed, 01 Feb 2023 15:58:52 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZX-001w1d-Fq; Wed, 01 Feb 2023 15:58:50 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1pNEZT-009hX1-Hg; Wed, 01 Feb 2023 15:58:47 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Woojung Huh <woojung.huh@microchip.com>, UNGLinuxDriver@microchip.com,
 Andrew Lunn <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wei Fang <wei.fang@nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Date: Wed,  1 Feb 2023 15:58:39 +0100
Message-Id: <20230201145845.2312060-18-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230201145845.2312060-1-o.rempel@pengutronix.de>
References: <20230201145845.2312060-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Wed, 01 Feb 2023 16:25:41 +0000
Subject: [Intel-wired-lan] [PATCH net-next v4 17/23] e1000e: replace EEE
 ethtool helpers to linkmode variants
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
Cc: Arun.Ramadoss@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleksij Rempel <o.rempel@pengutronix.de>,
 intel-wired-lan@lists.osuosl.org, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Replace EEE ethtool helpers with linkmode variants. This will
reduce similar code snippets and prepare ethtool EEE interface to linkmode
migration.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/ethernet/intel/e1000e/ethtool.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
index 721f86fd5802..7285e93b34ce 100644
--- a/drivers/net/ethernet/intel/e1000e/ethtool.c
+++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
@@ -2188,6 +2188,9 @@ static int e1000_get_rxnfc(struct net_device *netdev,
 static int e1000e_get_eee(struct net_device *netdev, struct ethtool_eee *edata)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(lm_able) = {};
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(lm_adv) = {};
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(lm_lp) = {};
 	struct e1000_hw *hw = &adapter->hw;
 	u16 cap_addr, lpa_addr, pcs_stat_addr, phy_data;
 	u32 ret_val;
@@ -2222,16 +2225,19 @@ static int e1000e_get_eee(struct net_device *netdev, struct ethtool_eee *edata)
 	ret_val = e1000_read_emi_reg_locked(hw, cap_addr, &phy_data);
 	if (ret_val)
 		goto release;
-	edata->supported = mmd_eee_cap_to_ethtool_sup_t(phy_data);
+	mii_eee_100_10000_adv_mod_linkmode_t(lm_able, phy_data);
+	ethtool_convert_link_mode_to_legacy_u32(&edata->supported, lm_able);
 
 	/* EEE Advertised */
-	edata->advertised = mmd_eee_adv_to_ethtool_adv_t(adapter->eee_advert);
+	mii_eee_100_10000_adv_mod_linkmode_t(lm_adv, adapter->eee_advert);
+	ethtool_convert_link_mode_to_legacy_u32(&edata->advertised, lm_adv);
 
 	/* EEE Link Partner Advertised */
 	ret_val = e1000_read_emi_reg_locked(hw, lpa_addr, &phy_data);
 	if (ret_val)
 		goto release;
-	edata->lp_advertised = mmd_eee_adv_to_ethtool_adv_t(phy_data);
+	mii_eee_100_10000_adv_mod_linkmode_t(lm_lp, phy_data);
+	ethtool_convert_link_mode_to_legacy_u32(&edata->lp_advertised, lm_lp);
 
 	/* EEE PCS Status */
 	ret_val = e1000_read_emi_reg_locked(hw, pcs_stat_addr, &phy_data);
@@ -2264,6 +2270,7 @@ static int e1000e_get_eee(struct net_device *netdev, struct ethtool_eee *edata)
 static int e1000e_set_eee(struct net_device *netdev, struct ethtool_eee *edata)
 {
 	struct e1000_adapter *adapter = netdev_priv(netdev);
+	__ETHTOOL_DECLARE_LINK_MODE_MASK(adv) = {};
 	struct e1000_hw *hw = &adapter->hw;
 	struct ethtool_eee eee_curr;
 	s32 ret_val;
@@ -2287,7 +2294,8 @@ static int e1000e_set_eee(struct net_device *netdev, struct ethtool_eee *edata)
 		return -EINVAL;
 	}
 
-	adapter->eee_advert = ethtool_adv_to_mmd_eee_adv_t(edata->advertised);
+	adv[0] = edata->advertised;
+	adapter->eee_advert = linkmode_adv_to_mii_eee_100_10000_adv_t(adv);
 
 	hw->dev_spec.ich8lan.eee_disable = !edata->eee_enabled;
 
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
