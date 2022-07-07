Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7C2569F58
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jul 2022 12:17:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB05840B27;
	Thu,  7 Jul 2022 10:17:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB05840B27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657189032;
	bh=8jF4YdhW+ZeLNMmQI4g3ylhoOtLN7l+K9rX8qmBppYw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DtmUMWEXwOFBI+DUgRogpfqEwcxor1oiX/HWDQ7PfdoZThl3jWofBEkWD4o+HN1V/
	 UY9ZJGhfLLQ40IuCgaytIrTo2pvJDA1tIXrtU6poFw87wJoSNbldGhZgXExR3I0ayA
	 JzHHOW7pZTV8WwmJHreHOu/pPd47/lJ6xyhn7dd8AFBfYmtkdHfN8GV7rAQ1PJ6pEf
	 0/Mi2uWwXti1LB1SKZ4M7Sy7RaHzNwqaIotJp+Z2iyhCPhBA+bhxTPWc3z6DBP84ED
	 YRntT56abQkwB47CwEOeQ7zMEwV4mLeZr6lD6UlRMv+duh0yRVcq2Mh8V25n0dtc5w
	 99N+WxZw5aAuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KHQ_ZMcSsBRg; Thu,  7 Jul 2022 10:17:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A4F3F40B07;
	Thu,  7 Jul 2022 10:17:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4F3F40B07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 665651BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:17:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4EAF2401FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:17:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EAF2401FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7fCrpKqAQrcd for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Jul 2022 10:17:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9771E40B20
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9771E40B20
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Jul 2022 10:17:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="284729230"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="284729230"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 03:17:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="651077067"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jul 2022 03:16:59 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 Jul 2022 12:16:51 +0200
Message-Id: <20220707101651.48738-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220707101651.48738-1-maciej.fijalkowski@intel.com>
References: <20220707101651.48738-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657189021; x=1688725021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pOF50CpjhYrgsn46x88QV1wMYEZY7xjQHzvnqDG58ig=;
 b=SmvB+L80MqWhuJl6EzrRi47g65/tA6lypl7iyp6hw2wPmbBgjQE4s+kR
 V+QErekWlQ4lwfyqPTmg5ipkIhKRbgpyFLROKg1Z/nhc9IyLnfWXRSROl
 Yb5FW739GGCU2brJCGMAI7s7vH+b54Sql6ertRfbNAPG7FYJA19sWMJYP
 ZOmE6AQcY4zR6ET8WhaFqNIsAtqe5Z9Fj9lbRqCLZNMxaBDjCAaYtc9LI
 ldhZCjkYofcB4rdo2wzf798sxNKcFMaSsfzqOthpYbZuE7wWLwkoZywbT
 mw1MIejtpm7cr5ySOL0Vto7HUvEdEebhjMTa6Mz2U1/oQKX/PdhRpDuaN
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SmvB+L80
Subject: [Intel-wired-lan] [PATCH intel-next 2/2] ice: allow toggling
 loopback mode via ndo_set_features callback
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
Cc: netdev@vger.kernel.org, john.fastabend@gmail.com,
 anatolii.gerasymenko@intel.com, kuba@kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add support for NETIF_F_LOOPBACK. This feature can be set via:
$ ethtool -K eth0 loopback <on|off>

Feature can be useful for local data path tests.

Acked-by: Jakub Kicinski <kuba@kernel.org>
Acked-by: John Fastabend <john.fastabend@gmail.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 33 ++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 084f0e17187c..4b08990590ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3358,6 +3358,7 @@ static void ice_set_netdev_features(struct net_device *netdev)
 	netdev->features |= netdev->hw_features;
 
 	netdev->hw_features |= NETIF_F_HW_TC;
+	netdev->hw_features |= NETIF_F_LOOPBACK;
 
 	/* encap and VLAN devices inherit default, csumo and tso features */
 	netdev->hw_enc_features |= dflt_features | csumo_features |
@@ -5915,6 +5916,33 @@ ice_set_vlan_features(struct net_device *netdev, netdev_features_t features)
 	return 0;
 }
 
+/**
+ * ice_set_loopback - turn on/off loopback mode on underlying PF
+ * @vsi: ptr to VSI
+ * @ena: flag to indicate the on/off setting
+ */
+static int
+ice_set_loopback(struct ice_vsi *vsi, bool ena)
+{
+	bool if_running = netif_running(vsi->netdev);
+	int ret;
+
+	if (if_running && !test_and_set_bit(ICE_VSI_DOWN, vsi->state)) {
+		ret = ice_down(vsi);
+		if (ret) {
+			netdev_err(vsi->netdev, "Preparing device to toggle loopback failed\n");
+			return ret;
+		}
+	}
+	ret = ice_aq_set_mac_loopback(&vsi->back->hw, ena, NULL);
+	if (ret)
+		netdev_err(vsi->netdev, "Failed to toggle loopback state\n");
+	if (if_running)
+		ret = ice_up(vsi);
+
+	return ret;
+}
+
 /**
  * ice_set_features - set the netdev feature flags
  * @netdev: ptr to the netdev being adjusted
@@ -5973,7 +6001,10 @@ ice_set_features(struct net_device *netdev, netdev_features_t features)
 		      clear_bit(ICE_FLAG_CLS_FLOWER, pf->flags);
 	}
 
-	return 0;
+	if (changed & NETIF_F_LOOPBACK)
+		ret = ice_set_loopback(vsi, !!(features & NETIF_F_LOOPBACK));
+
+	return ret;
 }
 
 /**
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
