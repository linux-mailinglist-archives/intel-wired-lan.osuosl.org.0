Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E486E43F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 11:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECA12613E3;
	Mon, 17 Apr 2023 09:35:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECA12613E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681724141;
	bh=ZC5T7qr/kZyGoZK1VwpuIkmmuImX0oPf7EMlGjiDSIg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=q+P7Lkr+ZgBIKUIolTQVNjcgImiAgaY9YCA26PJvLi6StIfKIu1Ud+9g3qI8GxiZz
	 2xbgffJKlM6lpQZcmO/CAYUm/jLfoGVaSPKMXZrlz4twLaT3rPC8juIK19bV8YdWLh
	 SWbbJdsVR6+uDg94zv8/BqkgYoUVqTJlkHaf3z1j9yWHyaJWW1Q2PBbnuTYMyXtdu1
	 ipYRSPvYf9OTCcESZ8fMjfu5ezJ3T/Eg9Xxjs++pN51YlbzwSaFaPeSuVrRDOwyrZt
	 XmmGKXyKDDCSTmZOh+Dcd14QrJW4VyUwJtJcQOBleYcAl2qcHQMrgq+wBm8VB3Audo
	 +Pc6Kj6Tx/eTg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SjazAWpx3NV3; Mon, 17 Apr 2023 09:35:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA94E60EA7;
	Mon, 17 Apr 2023 09:35:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA94E60EA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B59F1C4121
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 81A3261130
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81A3261130
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AW-mJPW9602O for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 09:35:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC8F1613AC
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC8F1613AC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 09:35:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="333644089"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="333644089"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 02:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640899259"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="640899259"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga003.jf.intel.com with ESMTP; 17 Apr 2023 02:35:22 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 69B5F37F5C;
 Mon, 17 Apr 2023 10:35:21 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Apr 2023 11:34:07 +0200
Message-Id: <20230417093412.12161-8-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417093412.12161-1-wojciech.drewek@intel.com>
References: <20230417093412.12161-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681724124; x=1713260124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FEKkv6X8oo4VaFcHi/a7z/X9A0ek0drQgfG9UurzswE=;
 b=CMG7QJqOMzGmAy1TUgx50LNWhnwQinVkQTJ3e+M7LbhtEvze28bMsjO3
 AppIFaFMx1/nmipjtNuStAXSTgBxCR1C4ZIsWFunqO92/m2ss6NmkOf9q
 zkABfLdZu+ynCVHUyZa/32iMPtVmeLVhvjTOc7fVEWXSmx2tK0epNv7OY
 Efo50Z9OyB5yZYGZBr0EU4o8jRqlg6oEoeUw5Llzpm6BOQGFNkWDit3s9
 5ovtiJtCXpHTAghRnjoRJ+rRCtnwWJpS2qLUFIZZR3ow/GzJbqluWPMdH
 L4ToD0T7D7CTwCoBh3skY806UpIv0l7zsF9z4oa7n2/p5A17pJkJGq4m5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CMG7QJqO
Subject: [Intel-wired-lan] [PATCH net-next 07/12] ice: Accept LAG netdevs in
 bridge offloads
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
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 40 ++++++++++++++++---
 1 file changed, 35 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 82b5eb2020cd..49381e4bf62a 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -15,8 +15,21 @@ static const struct rhashtable_params ice_fdb_ht_params = {
 
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
+	netdev_for_each_lower_dev(lag_dev, lower, iter)
+		if (netif_is_ice(lower))
+			return lower;
+	return NULL;
 }
 
 static struct ice_esw_br_port *
@@ -26,8 +39,16 @@ ice_eswitch_br_netdev_to_port(struct net_device *dev)
 		struct ice_repr *repr = ice_netdev_to_repr(dev);
 
 		return repr->br_port;
-	} else if (netif_is_ice(dev)) {
-		struct ice_pf *pf = ice_netdev_to_pf(dev);
+	} else if (netif_is_ice(dev) || netif_is_lag_master(dev)) {
+		struct net_device *ice_dev = dev;
+		struct ice_pf *pf;
+
+		if (netif_is_lag_master(dev))
+			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);
+		if (!ice_dev)
+			return NULL;
+
+		pf = ice_netdev_to_pf(ice_dev);
 
 		return pf->br_port;
 	}
@@ -719,7 +740,16 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
 
 		err = ice_eswitch_br_vf_repr_port_init(bridge, repr);
 	} else {
-		struct ice_pf *pf = ice_netdev_to_pf(dev);
+		struct net_device *ice_dev = dev;
+		struct ice_pf *pf;
+
+		if (netif_is_lag_master(dev))
+			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);
+
+		if (!ice_dev)
+			return 0;
+
+		pf = ice_netdev_to_pf(ice_dev);
 
 		err = ice_eswitch_br_uplink_port_init(bridge, pf);
 	}
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
