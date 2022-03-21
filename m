Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF124E2B31
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Mar 2022 15:48:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 352A5408BD;
	Mon, 21 Mar 2022 14:48:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lJ744UZKYoZT; Mon, 21 Mar 2022 14:48:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E79BE40521;
	Mon, 21 Mar 2022 14:48:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DB9D1BF324
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 14:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2994F83134
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 14:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qknK70KSx22i for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Mar 2022 14:48:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F81D82470
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Mar 2022 14:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647874086; x=1679410086;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1ZFjgLM0feCQpEB/mO3BUXM3voayYORzVM2Q9fXRZ2A=;
 b=PE2FrWU6P29zgAeoxX/09J+evxC8E3Ntzm9Z1IxrHSpAjt/JquT6/k8L
 q9/LeZcezWU2vAm62QlZ+MZHP42LbK2aNKOxJA2hql79Obo7QUBPqaEhr
 jFN7euaKWj3KEi/+IGo7qVfRlXfLrtw1F/lqt0umReJF324A+n/9kXeVy
 8Agv1HgDd/LTgnUex/+G4snlG2osgIyr9jskW/50aqJ9/1whBslVHmNGA
 f5khjyFrLbE+sEOZlY2ecwroB5HzJRUNwrB0jPRHpX9midie6eOZmnKXV
 GHD7lnzDcxmtus5dNjhVRfArEK6sX8at2twPMDthwdAMQ5c73An1/k74J g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="237511292"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="237511292"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 07:48:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="514957647"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 21 Mar 2022 07:48:04 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22LEm3iD022783; Mon, 21 Mar 2022 14:48:03 GMT
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 21 Mar 2022 15:47:31 +0100
Message-Id: <20220321144731.3935-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] Revert "ice: Hide bus-info in
 ethtool for PRs in switchdev mode"
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

This reverts commit bfaaba99e680bf82bf2cbf69866c3f37434ff766.

Commit bfaaba99e680 ("ice: Hide bus-info in ethtool for PRs in switchdev
mode") was a workaround for lshw tool displaying incorrect
descriptions for port representors and PF in switchdev mode. Now the issue
has been fixed in the lshw tool itself [1].

[1] https://ezix.org/src/pkg/lshw/commit/9bf4e4c9c1

Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 24cda7e1f916..476bd1c83c87 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -190,19 +190,17 @@ __ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo,
 	snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
 		 "%x.%02x 0x%x %d.%d.%d", nvm->major, nvm->minor,
 		 nvm->eetrack, orom->major, orom->build, orom->patch);
+
+	strscpy(drvinfo->bus_info, pci_name(pf->pdev),
+		sizeof(drvinfo->bus_info));
 }
 
 static void
 ice_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
 
 	__ice_get_drvinfo(netdev, drvinfo, np->vsi);
-
-	strscpy(drvinfo->bus_info, pci_name(pf->pdev),
-		sizeof(drvinfo->bus_info));
-
 	drvinfo->n_priv_flags = ICE_PRIV_FLAG_ARRAY_SIZE;
 }
 
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
