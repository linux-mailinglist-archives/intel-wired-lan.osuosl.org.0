Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0B24E9A41
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Mar 2022 16:59:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7991C81846;
	Mon, 28 Mar 2022 14:59:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kKJj6jCtnnGh; Mon, 28 Mar 2022 14:59:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 73EB581463;
	Mon, 28 Mar 2022 14:59:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5387A1BF393
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 14:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 409A04091D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 14:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Df1k4hCjnLnc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Mar 2022 14:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5D21B4067F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Mar 2022 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648479534; x=1680015534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ni9lHfr2P4H8Ke1eEBykgdIysYHyZMFWUi9my8JMkW4=;
 b=kIowcM9UOOziHMzEI/W99nbxrDpZ5/CDpgd97OSwi7yRP8cdgBher/9C
 jf6pHkAR8ZvSjs/VdZxmi4lgz4bnpijS9MVkMNOLzngf8Va2oqyU/BBf4
 1L/FHyzhMX2zHYcNMUvHILHv6qoNQBtkPwNPo1xSE+pzmGgZRstGZIjDn
 lKcuv9i5LILO+KreYQAA2U0YMCqbFb+1jBQ9VDtVp02S2MlJG+ZCS8/+Y
 /n93aYj0Kn/MIBKWm+7HZ4564MXKJNy7KXbLmNEG9xc8HzxX9BfEXkAgv
 taQn+Ia/EA3DGd2KzRvOhHgzHedjh26GmQ7SKEYWCL5kTB5F/pXRah25T g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="239612174"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="239612174"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 07:58:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="585218780"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 28 Mar 2022 07:58:51 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22SEwnLI015696; Mon, 28 Mar 2022 15:58:50 +0100
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Mar 2022 16:58:28 +0200
Message-Id: <20220328145828.10097-3-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220328145828.10097-1-marcin.szycik@linux.intel.com>
References: <20220328145828.10097-1-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/2] Revert "ice: Hide bus-info
 in ethtool for PRs in switchdev mode"
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

Removing the workaround can be considered a regression, as the user might
be running older, unpatched lshw version. However, another important change
(ice: link representors to PCI device, which improves port representor
netdev naming with SET_NETDEV_DEV) also causes the same "regression" as
removing the workaround, i.e. unpatched lshw is able to access bus-info
information (this time not via ethtool) and the bug can occur. Therefore,
the workaround no longer prevents the bug and can be removed.

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
