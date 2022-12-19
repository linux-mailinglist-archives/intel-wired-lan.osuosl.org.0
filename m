Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFED6511A9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 19:17:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 58ED7405B1;
	Mon, 19 Dec 2022 18:17:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58ED7405B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671473861;
	bh=urVn6MSXKpCT11y6giTdHq8PnXZfs7Yz3v0Quw5bL/g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eriDIhVlcYGAdNw65Rg7FxDsQahxn86A4AuFowBcgyZm711GonajVbN8oSOm9YMiR
	 K8bYtHoqzm09qhkNyYWr9omn0wJaobvxEcAOzZe/eeZsgDU/x3vRNF7/GsZIH6ttNC
	 cyPGmV0Qs72my7rmR9y1Z7sYTFNn1cFuSbmiqNjVnrMefuxo6HkaR/edGb3WGJUw3k
	 Jl/+szyAMsAa85g1Y8pxfATTIGJyt+RCEuf+tJUxu4Dds9VYMKn4nWSdRmPvId9YTV
	 QLf6V9r3iNghTZbfqRj/TmvMqtKqGlSUhfK36juDdSrCqQ6zHh9o+XKOUkpRwzHYLq
	 jW8EMxU1CSpFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pfBTvrbj_hDL; Mon, 19 Dec 2022 18:17:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5EDB6404D5;
	Mon, 19 Dec 2022 18:17:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EDB6404D5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D64901BF263
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 18:17:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B0FB460BCF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 18:17:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0FB460BCF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0FLJ8JuFLvR8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 18:17:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81E1260AB1
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 81E1260AB1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 18:17:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="321317371"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="321317371"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 10:17:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="714114981"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="714114981"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 10:17:32 -0800
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Dec 2022 10:18:03 -0800
Message-Id: <20221219181803.1060129-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671473853; x=1703009853;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7YiNgXKlXbuarlavMqU/60s7o37RS9nC7DbNyK9oJ/E=;
 b=jg3PoVPLquBm1vSG+l19l5pal9ycQLChgEgLoER9vUijh1EOJL2XQqkx
 +jyG3JIO1PVLyC2S9ukRWQmTLYmh1Pma0BoKSGVv+wtcsdwTttz1jaIIl
 juxjDvkgYA5JuYjzf1X3jfs+YHDBysJ7pQCFwVJLiZfpFHlCl1V3AXqWh
 UOGqbSdpEHJ+zEv6HjQtuhvPje6xj79y4RsGysghueSg9nDfazYiDGZD6
 BPQvkf1V8HIESdaEGGIEr4yShm32oZEgXgw0qE3lGFF3mjxBpo7FZ+zMX
 iGVIhPV1R+kNjPD88AKAB9siNDEmG1Hpx1PW5WP/DlB+L/Iz2xHZ+4CRX
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jg3PoVPL
Subject: [Intel-wired-lan] [PATCH net v3] ice: Prevent set_channel from
 changing queues while RDMA active
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

The PF controls the set of queues that the RDMA auxiliary_driver requests
resources from.  The set_channel command will alter that pool and trigger a
reconfiguration of the VSI, which breaks RDMA functionality.

Prevent set_channel from executing when RDMA driver bound to auxiliary
device.

Fixes: 348048e724a0 ("ice: Implement iidc operations")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
Changes since v2:
Added check for NULL pointer

Changes since v1:
Fixed typos and pointer reference
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b7be84bbe72d..431ca2893197 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3473,6 +3473,7 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 	struct ice_pf *pf = vsi->back;
 	int new_rx = 0, new_tx = 0;
 	u32 curr_combined;
+	int ret = 0;
 
 	/* do not support changing channels in Safe Mode */
 	if (ice_is_safe_mode(pf)) {
@@ -3536,15 +3537,26 @@ static int ice_set_channels(struct net_device *dev, struct ethtool_channels *ch)
 		return -EINVAL;
 	}
 
+	mutex_lock(&pf->adev_mutex);
+	if (pf->adev && pf->adev->dev.driver) {
+		netdev_err(dev, "Cannot change channels when RDMA is active\n");
+		ret = -EINVAL;
+		goto adev_unlock;
+	}
+
 	ice_vsi_recfg_qs(vsi, new_rx, new_tx);
 
-	if (!netif_is_rxfh_configured(dev))
-		return ice_vsi_set_dflt_rss_lut(vsi, new_rx);
+	if (!netif_is_rxfh_configured(dev)) {
+		ret = ice_vsi_set_dflt_rss_lut(vsi, new_rx);
+		goto adev_unlock;
+	}
 
 	/* Update rss_size due to change in Rx queues */
 	vsi->rss_size = ice_get_valid_rss_size(&pf->hw, new_rx);
 
-	return 0;
+adev_unlock:
+	mutex_unlock(&pf->adev_mutex);
+	return ret;
 }
 
 /**
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
