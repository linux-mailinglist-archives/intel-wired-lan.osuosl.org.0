Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2D27384D4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 15:21:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 30B6041804;
	Wed, 21 Jun 2023 13:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30B6041804
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687353692;
	bh=PqlTAVsQ4Em/9jO0Kd2rPFjlP6tcaGThnjJsggZeppI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zDjon2YEogYNgS+8inHpPZewVdSZJL6d34n66splohVhxrYVsPywzkuwZxj9oNo15
	 ZxJ9epxDGSpUTzmcCQPp0C1lASQC5RdJyHnQNk6cqVCblG/Ni0kfnnEd6qQXjc155r
	 XeSbS8/Us+qTtKHIV/SKBcmRCzQiZwwWyEt+WcLzka5kE7CqukxQZ+23yxq4DqNbiu
	 55XeGVnk4psHc9Y+vaGnpDUM1z6lhVsBe2c4sPQ1ej2fx1lM9He8nNDQDFWeEzCOja
	 ChqxyXFMn3UjC7phFiYkEoEddfzQCTTRRizdutHh/4WGzS2gu5eEEDWI9mAHWf7Ofz
	 8qQPNlQXag+rg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XVVebnfHWzEs; Wed, 21 Jun 2023 13:21:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 272DA40BFC;
	Wed, 21 Jun 2023 13:21:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 272DA40BFC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 636701BF966
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 13:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 37DB98330B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 13:21:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37DB98330B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x8cXBomgX1wP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 13:21:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 29FB4832E7
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29FB4832E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 13:21:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="423831895"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="423831895"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 06:21:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="888651095"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="888651095"
Received: from pgardocx-hp-z6-g4-workstation.igk.intel.com (HELO
 pgardocx-mobl1.igk.intel.com) ([10.237.95.41])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 06:21:13 -0700
From: Piotr Gardocki <piotrx.gardocki@intel.com>
To: netdev@vger.kernel.org
Date: Wed, 21 Jun 2023 15:21:06 +0200
Message-Id: <20230621132106.991342-1-piotrx.gardocki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687353685; x=1718889685;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WH66lIuJlNBisUbKjuxmSU8egBjiug1TIhdPnlf9yiU=;
 b=Rpm/+UxxbAbhYnC2Bbn/lPti9+H/iBjHBtsjYuwjZi6M/4TkCTHlHD+A
 ZvgGACTb1gmzl+S2HZgyX1VdgODgoEOM00P47DQqvHwZGtmrMMp8Q3AO7
 upj9TjxV3xxg02iHzZBogb9oF7snBxu/zO15uCNxkPUmn2a1k9aptiHTS
 Qkb9Qc8XbbzapWOk32xHvwj6bvEI/cm6Fb4d23jkCGUaB4MzaoBCzwzHA
 f2OtredEly76ZVg6wV4TxLdFC+WkY3MVd4tirvoEYLKV22JByeiEW93vD
 svngBTh9m57gg6qZoZ85FblFgGkZW+YoPgXbBrQ6iqJ+OKQbCh7Dj65Ft
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rpm/+Uxx
Subject: [Intel-wired-lan] [PATCH net-next] net: fix net device address
 assign type
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
Cc: pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com, gal@nvidia.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit ad72c4a06acc introduced optimization to return from function
quickly if the MAC address is not changing at all. It was reported
that such change causes dev->addr_assign_type to not change
to NET_ADDR_SET from _PERM or _RANDOM.
Restore the old behavior and skip only call to ndo_set_mac_address.

Fixes: ad72c4a06acc ("net: add check for current MAC address in dev_set_mac_address")
Reported-by: Gal Pressman <gal@nvidia.com>
Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
---
 net/core/dev.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/net/core/dev.c b/net/core/dev.c
index e4ff0adf5523..69a3e544676c 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -8781,14 +8781,14 @@ int dev_set_mac_address(struct net_device *dev, struct sockaddr *sa,
 		return -EINVAL;
 	if (!netif_device_present(dev))
 		return -ENODEV;
-	if (!memcmp(dev->dev_addr, sa->sa_data, dev->addr_len))
-		return 0;
 	err = dev_pre_changeaddr_notify(dev, sa->sa_data, extack);
 	if (err)
 		return err;
-	err = ops->ndo_set_mac_address(dev, sa);
-	if (err)
-		return err;
+	if (memcmp(dev->dev_addr, sa->sa_data, dev->addr_len)) {
+		err = ops->ndo_set_mac_address(dev, sa);
+		if (err)
+			return err;
+	}
 	dev->addr_assign_type = NET_ADDR_SET;
 	call_netdevice_notifiers(NETDEV_CHANGEADDR, dev);
 	add_device_randomness(dev->dev_addr, dev->addr_len);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
