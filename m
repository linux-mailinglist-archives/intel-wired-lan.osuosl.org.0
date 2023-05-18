Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F25A707E08
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 12:26:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 377A74288E;
	Thu, 18 May 2023 10:26:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 377A74288E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684405617;
	bh=Vyfcs0IH1tFVx/EkuinAYelocccVHAX4bCA0XqDAv3I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VTsJK4ZnlG/ILp0FcxTMtMMeNbK1e2CWVipiDM3qW9z3lv30FsZm8Dj4lh8XeE+JS
	 mTkBO8ljJPnXTDcXAvzHYv2B5/rFyDWk5rWSCU0poQ9sP6ly1rQl2U4aG7PTLwLsxI
	 5846V9GmLDT3EJvLUmQpYyXg38EklwKsWUly5jl7g5miQJoPMRLyf/doBHXtwi7a5T
	 ya9oeQ7nwpcbvF0k8V8/16NiUihGjiM+YueK8ClJqcNQ6A+0jQLVDRQ8dR9zBm+hkW
	 JIjBejzsDFbs99wfF7gTnFx3UqdNJcnSpyf2WKt6mQMrByKYAfBmGp/1hNivIVOCo/
	 K8dE4DMqEPnUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8OKDQWMiOrP2; Thu, 18 May 2023 10:26:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D53A44282A;
	Thu, 18 May 2023 10:26:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D53A44282A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F8F41BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3CCAD405D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CCAD405D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZFcVOBHP9RAY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 10:26:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8283A4048D
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8283A4048D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 10:26:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="438371434"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="438371434"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 03:26:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="767143743"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="767143743"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga008.fm.intel.com with ESMTP; 18 May 2023 03:26:24 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 37C0A36C11;
 Thu, 18 May 2023 11:26:23 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 May 2023 12:25:05 +0200
Message-Id: <20230518102509.20913-7-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230518102509.20913-1-wojciech.drewek@intel.com>
References: <20230518102509.20913-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684405597; x=1715941597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AlgnQdk73zCrGewRdJQyDhOw9Np8EC2kj0Np8NZ1S34=;
 b=nHD/HAI9qR9Ihts+zIvitl1pHFw3x2BLSNkLK2O503JSXSIOR2w01iXe
 qAnTJpS7cjz5QiI+PLVAo5MEQEADe8xCI68RZPTI6OCMXxecsc/chMoDn
 HtpGor+3QXRf9WZNyrVMOPbqZw44Ef12/jZsSawiOIqWlJQuSOje5X4CR
 hAXKyC87W+2v1hoD3SDF80570SThdj/y7fgrL5sSku7rXUCbpQVkCdasK
 64w8mezrLyhp5hOJ+2E16lIzeGIW9zcHIuM1b2BmH6nwAUd+bvm8P57x7
 f3hvGzqP98BY1ereXHHjN166uyWoqCKw2yyp6/4htFtgK2HUenhpR9Vqy
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nHD/HAI9
Subject: [Intel-wired-lan] [PATCH iwl-next v2 06/10] ice: Accept LAG netdevs
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
