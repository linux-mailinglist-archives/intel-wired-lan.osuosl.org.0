Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 940367B6080
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 07:48:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CA4741D87;
	Tue,  3 Oct 2023 05:48:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CA4741D87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696312102;
	bh=GPlXAFZSRSjiISvKogz/tBBlCF3jwjB4WpGr2mwCBcM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=E1dZKu6UulTXGyZEqWebMSMRmGfzKwktMrwjKdobQIazc6NuYIuJXQ7TarrO8QFrg
	 lD41SufnOK8NRFe/iPMSNLlCZUttjIQWEUX7I9QuGTboXnOdALElT4/Q43vE4MzaQn
	 h+6HJh/OTQbpImP65Sv2JQcS/QD/0fFJZeasEdGOkOGAH8MUechpsUskUc2oIFzgmU
	 LrYonrVWum2XHfWTiONdo2T16nmsfrlJgLlJsAbKhcRsk0p+o7YnZixfKEZNmfEWmR
	 dq2KJ0gTqScLSzawNo3Udl9b410YYc0C3QkTcBIRxyNEtHPF92oWX1g5/5TMW7gHU8
	 FsFR8ugMa8wlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id srUKIdDn-pdc; Tue,  3 Oct 2023 05:48:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 958DC41D76;
	Tue,  3 Oct 2023 05:48:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 958DC41D76
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E73B1BF584
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 05:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8011E40FCC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 05:48:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8011E40FCC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CqADPEfNcjs5 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 05:48:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89E6740140
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 05:48:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89E6740140
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="367849721"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="367849721"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 22:48:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="727507651"
X-IronPort-AV: E=Sophos;i="6.03,196,1694761200"; d="scan'208";a="727507651"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.129])
 by orsmga006.jf.intel.com with ESMTP; 02 Oct 2023 22:48:11 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	sasha.neftin@intel.com
Date: Tue,  3 Oct 2023 08:48:11 +0300
Message-Id: <20231003054811.3679788-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696312094; x=1727848094;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MQABlIspiGTSTMuwYw6UciqQ0vMYjCLN4o+o3RzWcsE=;
 b=bJ3jNfaj4Z21c/ais9//csuaXkpF9DMZgIzd72i2wXTJ66oIGDL7dRo7
 biM4/Q1z2e0v2ZUvFgNRoizduofGyxeD2Wx/vmPlAjqWg5Y/C0h8CGpkJ
 2dLB5qdw9yWr1KLUgrZnft9Z7ynC8q8vAv2tzVfdk0sCLOfqB/2vAF+Ws
 a14rbukwaXGYEyFRV1fyMFIXiak6nKoawE+qSKxKTBHq4Vsro+VhSOqNG
 mdabGYovMyumT0H3m6zGDeK4c0CdB4UuM9mBKmDQeWZMdQXg5fDYiFEiY
 u0zpuwzEzJ6mtgNJQu5RuyGvzx5KYFynAjXSF8jR0gr6Y5pUt+7P15LTQ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bJ3jNfaj
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] igc: Fix ambiguity in the
 ethtool advertising
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The 'ethtool_convert_link_mode_to_legacy_u32' method does not allow us to
advertise 2500M speed support and TP (twisted pair) properly. Convert to
'ethtool_link_ksettings_test_link_mode' to advertise supported speed and
eliminate ambiguity.

Fixes: 8c5ad0dae93c ("igc: Add ethtool support")
Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Suggested-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 35 ++++++++++++++------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 7ab6dd58e400..dd8a9d27a167 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1817,7 +1817,7 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
 	struct igc_adapter *adapter = netdev_priv(netdev);
 	struct net_device *dev = adapter->netdev;
 	struct igc_hw *hw = &adapter->hw;
-	u32 advertising;
+	u16 advertised = 0;
 
 	/* When adapter in resetting mode, autoneg/speed/duplex
 	 * cannot be changed
@@ -1842,18 +1842,33 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
 	while (test_and_set_bit(__IGC_RESETTING, &adapter->state))
 		usleep_range(1000, 2000);
 
-	ethtool_convert_link_mode_to_legacy_u32(&advertising,
-						cmd->link_modes.advertising);
-	/* Converting to legacy u32 drops ETHTOOL_LINK_MODE_2500baseT_Full_BIT.
-	 * We have to check this and convert it to ADVERTISE_2500_FULL
-	 * (aka ETHTOOL_LINK_MODE_2500baseX_Full_BIT) explicitly.
-	 */
-	if (ethtool_link_ksettings_test_link_mode(cmd, advertising, 2500baseT_Full))
-		advertising |= ADVERTISE_2500_FULL;
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  2500baseT_Full))
+		advertised |= ADVERTISE_2500_FULL;
+
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  1000baseT_Full))
+		advertised |= ADVERTISE_1000_FULL;
+
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  100baseT_Full))
+		advertised |= ADVERTISE_100_FULL;
+
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  100baseT_Half))
+		advertised |= ADVERTISE_100_HALF;
+
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  10baseT_Full))
+		advertised |= ADVERTISE_10_FULL;
+
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising,
+						  10baseT_Half))
+		advertised |= ADVERTISE_10_HALF;
 
 	if (cmd->base.autoneg == AUTONEG_ENABLE) {
 		hw->mac.autoneg = 1;
-		hw->phy.autoneg_advertised = advertising;
+		hw->phy.autoneg_advertised = advertised;
 		if (adapter->fc_autoneg)
 			hw->fc.requested_mode = igc_fc_default;
 	} else {
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
