Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 712AA43B7BC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Oct 2021 19:00:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1365780ECE;
	Tue, 26 Oct 2021 17:00:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uNGhVR-Lwztv; Tue, 26 Oct 2021 17:00:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25D9D80E60;
	Tue, 26 Oct 2021 17:00:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3A251BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 17:00:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1BAE606A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 17:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4sCqTz9P64nN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Oct 2021 17:00:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 88A6E6067F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Oct 2021 17:00:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="230221732"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="230221732"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 08:57:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="572526293"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Oct 2021 08:57:38 -0700
Received: from switcheroo.igk.intel.com (switcheroo.igk.intel.com
 [172.22.229.137])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 19QFvbE0029088; Tue, 26 Oct 2021 16:57:37 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Oct 2021 17:56:24 +0200
Message-Id: <20211026155624.17106-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice: Hide bus-info in ethtool
 for PRs in switchdev mode
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

Disable showing bus-info information for port representors in switchdev
mode. This fixes a bug that caused displaying wrong netdev descriptions in
lshw tool - one port representor displayed PF branding string, and in turn
one PF displayed a "generic" description. The bug occurs when many devices
show the same bus-info in ethtool, which was the case in switchdev mode (PF
and its port representors displayed the same bus-info). The bug occurs only
if a port representor netdev appears before PF netdev in /proc/net/dev.

In the examples below:
ens6fX is PF
ens6fXvY is VF
ethX is port representor
One irrelevant column was removed from output

Before:
$ sudo lshw -c net -businfo
Bus info          Device      Description
=========================================
pci@0000:02:00.0  eth102       Ethernet Controller E810-XXV for SFP
pci@0000:02:00.1  ens6f1       Ethernet Controller E810-XXV for SFP
pci@0000:02:01.0  ens6f0v0     Ethernet Adaptive Virtual Function
pci@0000:02:01.1  ens6f0v1     Ethernet Adaptive Virtual Function
pci@0000:02:01.2  ens6f0v2     Ethernet Adaptive Virtual Function
pci@0000:02:00.0  ens6f0       Ethernet interface

Notice that eth102 and ens6f0 have the same bus-info and their descriptions
are swapped.

After:
$ sudo lshw -c net -businfo
Bus info          Device      Description
=========================================
pci@0000:02:00.0  ens6f0      Ethernet Controller E810-XXV for SFP
pci@0000:02:00.1  ens6f1      Ethernet Controller E810-XXV for SFP
pci@0000:02:01.0  ens6f0v0    Ethernet Adaptive Virtual Function
pci@0000:02:01.1  ens6f0v1    Ethernet Adaptive Virtual Function
pci@0000:02:01.2  ens6f0v2    Ethernet Adaptive Virtual Function

Fixes: 7aae80cef7ba ("ice: add port representor ethtool ops and stats")
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 870d02adcfe8..dfbba64e691c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -189,18 +189,19 @@ __ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo,
 	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
 		 "%x.%02x 0x%x %d.%d.%d", nvm->major, nvm->minor,
 		 nvm->eetrack, orom->major, orom->build, orom->patch);
-
-	strscpy(drvinfo->bus_info, pci_name(pf->pdev),
-		sizeof(drvinfo->bus_info));
 }
 
 static void
 ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = np->vsi->back;
 
 	__ice_get_drvinfo(netdev, drvinfo, np->vsi);
 
+	strscpy(drvinfo->bus_info, pci_name(pf->pdev),
+		sizeof(drvinfo->bus_info));
+
 	drvinfo->n_priv_flags = ICE_PRIV_FLAG_ARRAY_SIZE;
 }
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
