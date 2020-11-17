Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAD72B6F4F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Nov 2020 20:50:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E15985784;
	Tue, 17 Nov 2020 19:50:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 54Q1FQ2BoDVf; Tue, 17 Nov 2020 19:50:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9B7585778;
	Tue, 17 Nov 2020 19:50:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48F3C1BF574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3F330844CD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:50:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZulNA5Xqkx+L for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Nov 2020 19:50:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 47D5F84237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605642645;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=lE+FZheUZpti8mdkEGCCEVmsflsjl1KanhD5yFuSSVg=;
 b=eO8CK3bVrwiNSIVrh/nRG2xjip5RvfeszELc0OacJ70cZNLScwzQwQDMDhs5lFS+9hCgjb
 +O2dAQvZoGFqfcJ79upZeURiXFcQdXd4DDjA6qjtH9GjtZwijwaaRv7+pcK519Sjf/3A1r
 9UiNuJg2+Cl9f7twNYxs5QEDx8PH+QM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-58-iCGLMcoNOuqaT5xaBk_Kwg-1; Tue, 17 Nov 2020 14:50:43 -0500
X-MC-Unique: iCGLMcoNOuqaT5xaBk_Kwg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6BBB864142;
 Tue, 17 Nov 2020 19:50:42 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-114-159.ams2.redhat.com
 [10.36.114.159])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BC106B8E1;
 Tue, 17 Nov 2020 19:50:42 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id ED2E9A80920; Tue, 17 Nov 2020 20:50:40 +0100 (CET)
From: Corinna Vinschen <vinschen@redhat.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Tue, 17 Nov 2020 20:50:40 +0100
Message-Id: <20201117195040.178651-1-vinschen@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-wired-lan] igc: fix link speed advertising
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

Link speed advertising in igc has two problems:

- When setting the advertisement via ethtool, the link speed is converted
  to the legacy 32 bit representation for the intel PHY code.
  This inadvertently drops ETHTOOL_LINK_MODE_2500baseT_Full_BIT (being
  beyond bit 31).  As a result, any call to `ethtool -s ...' drops the
  2500Mbit/s link speed from the PHY settings.  Only reloading the driver
  alleviates that problem.

  Fix this by converting the ETHTOOL_LINK_MODE_2500baseT_Full_BIT to the
  Intel PHY ADVERTISE_2500_FULL bit explicitely.

- Rather than checking the actual PHY setting, the .get_link_ksettings
  function always fills link_modes.advertising with all link speeds
  the device is capable of.

  Fix this by checking the PHY autoneg_advertised settings and report
  only the actually advertised speeds up to ethtool.

Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 24 +++++++++++++++-----
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 61d331ce38cd..75cb4ca36bac 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1675,12 +1675,18 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
 	cmd->base.phy_address = hw->phy.addr;
 
 	/* advertising link modes */
-	ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Half);
-	ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Full);
-	ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Half);
-	ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Full);
-	ethtool_link_ksettings_add_link_mode(cmd, advertising, 1000baseT_Full);
-	ethtool_link_ksettings_add_link_mode(cmd, advertising, 2500baseT_Full);
+	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Half);
+	if (hw->phy.autoneg_advertised & ADVERTISE_10_FULL)
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, 10baseT_Full);
+	if (hw->phy.autoneg_advertised & ADVERTISE_100_HALF)
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Half);
+	if (hw->phy.autoneg_advertised & ADVERTISE_100_FULL)
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, 100baseT_Full);
+	if (hw->phy.autoneg_advertised & ADVERTISE_1000_FULL)
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, 1000baseT_Full);
+	if (hw->phy.autoneg_advertised & ADVERTISE_2500_FULL)
+		ethtool_link_ksettings_add_link_mode(cmd, advertising, 2500baseT_Full);
 
 	/* set autoneg settings */
 	if (hw->mac.autoneg == 1) {
@@ -1792,6 +1798,12 @@ igc_ethtool_set_link_ksettings(struct net_device *netdev,
 
 	ethtool_convert_link_mode_to_legacy_u32(&advertising,
 						cmd->link_modes.advertising);
+	/* Converting to legacy u32 drops ETHTOOL_LINK_MODE_2500baseT_Full_BIT.
+	 * We have to check this and convert it to ADVERTISE_2500_FULL
+	 * (aka ETHTOOL_LINK_MODE_2500baseX_Full_BIT) explicitely.
+	 */
+	if (ethtool_link_ksettings_test_link_mode(cmd, advertising, 2500baseT_Full))
+		advertising |= ADVERTISE_2500_FULL;
 
 	if (cmd->base.autoneg == AUTONEG_ENABLE) {
 		hw->mac.autoneg = 1;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
