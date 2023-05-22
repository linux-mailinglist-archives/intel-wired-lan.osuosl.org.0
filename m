Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F0870B87C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 11:07:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C7A5840C2E;
	Mon, 22 May 2023 09:07:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C7A5840C2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684746429;
	bh=Vyfcs0IH1tFVx/EkuinAYelocccVHAX4bCA0XqDAv3I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gn5PxhirNVtKUQ6rMChNCqXCezBEaExIGcditfWnU1GuPnta3cRAJFNbQTDjHndRS
	 ur88ffEvlNsVTps8qukoP6QEfSr6V3zEh8u630wPMOxzO4D13qmiYsq0+CwXLSyGsu
	 Dk6+xUL8JrPUGWMO/ASoqORpMPoXHDixwt2b1K/j8FkOPhAne+FgupJjv3s5BdZ2Ic
	 u+aEkB26QXl1ghuL2NNacX3HxwwSP2Zi5EIABABNhvHyuBPab+57ptfyerb+KlTtSH
	 Cvdnq4Ubfw7gyVgFB7rIqEd1ik45DYhV+UqguemrQHOLT7nywJZ5zzHwlHiMM9u7l3
	 RsvkpZUpgIOAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xrk_MOS9q9xK; Mon, 22 May 2023 09:07:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B54C9405DD;
	Mon, 22 May 2023 09:07:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B54C9405DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4405E1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:06:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB38261356
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:06:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB38261356
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SBm3AnqsPoxE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 09:06:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A47660701
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A47660701
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 09:06:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="337459277"
X-IronPort-AV: E=Sophos;i="6.00,183,1681196400"; d="scan'208";a="337459277"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 02:06:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10717"; a="847765475"
X-IronPort-AV: E=Sophos;i="6.00,183,1681196400"; d="scan'208";a="847765475"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga001.fm.intel.com with ESMTP; 22 May 2023 02:06:53 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5B31B369E9;
 Mon, 22 May 2023 10:06:52 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 May 2023 11:05:38 +0200
Message-Id: <20230522090542.45679-7-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230522090542.45679-1-wojciech.drewek@intel.com>
References: <20230522090542.45679-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684746415; x=1716282415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AlgnQdk73zCrGewRdJQyDhOw9Np8EC2kj0Np8NZ1S34=;
 b=ZoiR9uUsH/3TXciKqCYQ3Z17DkNuUG+37ABEj9YxMFvwD0occrytrFj9
 L/JkBQlcmfsqBJpDjtdcEaG4TxlfAAXGHEV9kTcMNo/A38anw08g30EaG
 mr9WtQ4lkq+DNpRvKV38hARJI4kWAymWjJqIIHoXY9UnnJJRMfdGe5rMe
 j9yq9vRtEoO5wcIh1q0UUaN1FygmaHzwqeexsaSkP2d1q1D346pRDAU1u
 NbaixV8Fc2kjyKeWxeiPwLgT1HHwpejtc8HUvYItZBzqJ/oqmyh3poI1J
 FQRjG7EV71TP7lTmezFHsOENyUxOxAzZdksFQAKvF8g8W9YM3o46uawPe
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZoiR9uUs
Subject: [Intel-wired-lan] [PATCH iwl-next v3 06/10] ice: Accept LAG netdevs
 in bridge offloads
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow LAG interfaces to be used in bridge offload using
netif_is_lag_master. In this case, search for ice netdev in
the list of LAG's lower devices.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: braces added in ice_eswitch_br_get_uplnik_from_lag,
    use else in ice_eswitch_br_netdev_to_port and
    ice_eswitch_br_port_link
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 47 +++++++++++++++++--
 1 file changed, 42 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 9941b0a5aaba..7b7eecec8497 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -15,8 +15,23 @@ static const struct rhashtable_params ice_fdb_ht_params = {
 
 static bool ice_eswitch_br_is_dev_valid(const struct net_device *dev)
 {
-	/* Accept only PF netdev and PRs */
-	return ice_is_port_repr_netdev(dev) || netif_is_ice(dev);
+	/* Accept only PF netdev, PRs and LAG */
+	return ice_is_port_repr_netdev(dev) || netif_is_ice(dev) ||
+		netif_is_lag_master(dev);
+}
+
+static struct net_device *
+ice_eswitch_br_get_uplnik_from_lag(struct net_device *lag_dev)
+{
+	struct net_device *lower;
+	struct list_head *iter;
+
+	netdev_for_each_lower_dev(lag_dev, lower, iter) {
+		if (netif_is_ice(lower))
+			return lower;
+	}
+
+	return NULL;
 }
 
 static struct ice_esw_br_port *
@@ -26,8 +41,19 @@ ice_eswitch_br_netdev_to_port(struct net_device *dev)
 		struct ice_repr *repr = ice_netdev_to_repr(dev);
 
 		return repr->br_port;
-	} else if (netif_is_ice(dev)) {
-		struct ice_pf *pf = ice_netdev_to_pf(dev);
+	} else if (netif_is_ice(dev) || netif_is_lag_master(dev)) {
+		struct net_device *ice_dev;
+		struct ice_pf *pf;
+
+		if (netif_is_lag_master(dev))
+			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);
+		else
+			ice_dev = dev;
+
+		if (!ice_dev)
+			return NULL;
+
+		pf = ice_netdev_to_pf(ice_dev);
 
 		return pf->br_port;
 	}
@@ -716,7 +742,18 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
 
 		err = ice_eswitch_br_vf_repr_port_init(bridge, repr);
 	} else {
-		struct ice_pf *pf = ice_netdev_to_pf(dev);
+		struct net_device *ice_dev;
+		struct ice_pf *pf;
+
+		if (netif_is_lag_master(dev))
+			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);
+		else
+			ice_dev = dev;
+
+		if (!ice_dev)
+			return 0;
+
+		pf = ice_netdev_to_pf(ice_dev);
 
 		err = ice_eswitch_br_uplink_port_init(bridge, pf);
 	}
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
