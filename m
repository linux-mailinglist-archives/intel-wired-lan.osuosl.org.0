Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EBCC8225A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Nov 2025 19:48:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7D94D60D69;
	Mon, 24 Nov 2025 18:48:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t8UXNmxlBe12; Mon, 24 Nov 2025 18:48:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0281E60A99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764010112;
	bh=JaOkMO3NBvF3PVNTR5WV9qoUn6tOY4xnn9TR0RflyUk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HL6mXQ8MYUKdJY35jTwR9uVl42jRbOFBg1w36V4NfUvpktfwLTmyYiz6atj+1L++J
	 6ZDh/K7nbZuJvLL2S1WF9FgiEb2eIbmI9tpTdHJBTHfJeDi6+shNcHXHFWcgyy2sBe
	 6ILZyDL90pDS9XTZngrcTc188I+j1XqA07okAXSAgi0iTnZXj1mc/KhCHfIbkZDfWa
	 /Do79fAqscxzt4QW+gnYkUPydfHcooCE1Avag0IBfjCUMcc7LszQXfUIvLFQd6BjB3
	 aGb/kzgybWaamqNYNzsDjGq3AgR5qz1QVUCOGtL9eV+TAr5mF2mYWnI5Q9FGE3gELC
	 o7eRNSI/vCF8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0281E60A99;
	Mon, 24 Nov 2025 18:48:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A873934E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A5D8840242
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:48:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GKmkFeDvi-fn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Nov 2025 18:48:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A539640078
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A539640078
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A539640078
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Nov 2025 18:48:28 +0000 (UTC)
X-CSE-ConnectionGUID: IGFZw0BrTSaaXVN7uRuHWA==
X-CSE-MsgGUID: bujOfiTURw+sz213NehtVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76341838"
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="76341838"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 10:48:29 -0800
X-CSE-ConnectionGUID: BsOPzP+BStyKVzACB2JTmA==
X-CSE-MsgGUID: B2cI28YNSXCTBE4hb+wBQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="196575008"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by orviesa003.jf.intel.com with ESMTP; 24 Nov 2025 10:48:28 -0800
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Sreedevi Joshi <sreedevi.joshi@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>
Date: Mon, 24 Nov 2025 12:47:49 -0600
Message-Id: <20251124184750.3625097-3-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251124184750.3625097-1-sreedevi.joshi@intel.com>
References: <20251124184750.3625097-1-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764010110; x=1795546110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5FXsQs1lAU6pJyz8/irRopjoaZ3UazGSsZDK/mLRxKI=;
 b=ZE/RiWMIixJHB+Qh2Gr1LA86nFu35YtP9hxFeDaZa08mD82HY7gDXTQt
 of41nBQEyYdwBLdJg35Y0hiDcj0LMzeaertcx1o1jSMIyqzdGnZh7HoPq
 f9ulStk6fT8lsFV77GrNQTOI/K/hYgGqoOnKqq0TfaUu0Z8lZTm+kvqS9
 0DDJKOe9avvLz5CXyEOkmcdACy6X/cEdfpK/PGp7o8A3SZbhEQN1RVDGl
 fbsLswloYimUlY743k/NrgzhWKFWP4mFD9BZDsoRLa+Iovw2hH1fDMcV6
 aKcuhS/zfef38zuRkJ8WcIQeIZMbLuSx2k7KSUNkk2kQIbFDkII5yvp0l
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZE/RiWMI
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/3] idpf: Fix RSS LUT
 configuration on down interfaces
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RSS LUT provisioning and queries on a down interface currently return
silently without effect. Users should be able to configure RSS settings
even when the interface is down.

Fix by maintaining RSS configuration changes in the driver's soft copy and
deferring HW programming until the interface comes up.

Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
index 4c6e52253ae4..eb807e89d91a 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
@@ -393,7 +393,10 @@ static u32 idpf_get_rxfh_indir_size(struct net_device *netdev)
  * @netdev: network interface device structure
  * @rxfh: pointer to param struct (indir, key, hfunc)
  *
- * Reads the indirection table directly from the hardware. Always returns 0.
+ * RSS LUT and Key information are read from driver's cached
+ * copy. When rxhash is off, rss lut will be displayed as zeros.
+ *
+ * Return: 0 on success, -errno otherwise.
  */
 static int idpf_get_rxfh(struct net_device *netdev,
 			 struct ethtool_rxfh_param *rxfh)
@@ -401,10 +404,13 @@ static int idpf_get_rxfh(struct net_device *netdev,
 	struct idpf_netdev_priv *np = netdev_priv(netdev);
 	struct idpf_rss_data *rss_data;
 	struct idpf_adapter *adapter;
+	struct idpf_vport *vport;
+	bool rxhash_ena;
 	int err = 0;
 	u16 i;
 
 	idpf_vport_ctrl_lock(netdev);
+	vport = idpf_netdev_to_vport(netdev);
 
 	adapter = np->adapter;
 
@@ -414,9 +420,8 @@ static int idpf_get_rxfh(struct net_device *netdev,
 	}
 
 	rss_data = &adapter->vport_config[np->vport_idx]->user_config.rss_data;
-	if (np->state != __IDPF_VPORT_UP)
-		goto unlock_mutex;
 
+	rxhash_ena = idpf_is_feature_ena(vport, NETIF_F_RXHASH);
 	rxfh->hfunc = ETH_RSS_HASH_TOP;
 
 	if (rxfh->key)
@@ -424,7 +429,7 @@ static int idpf_get_rxfh(struct net_device *netdev,
 
 	if (rxfh->indir) {
 		for (i = 0; i < rss_data->rss_lut_size; i++)
-			rxfh->indir[i] = rss_data->rss_lut[i];
+			rxfh->indir[i] = rxhash_ena ? rss_data->rss_lut[i] : 0;
 	}
 
 unlock_mutex:
@@ -464,8 +469,6 @@ static int idpf_set_rxfh(struct net_device *netdev,
 	}
 
 	rss_data = &adapter->vport_config[vport->idx]->user_config.rss_data;
-	if (np->state != __IDPF_VPORT_UP)
-		goto unlock_mutex;
 
 	if (rxfh->hfunc != ETH_RSS_HASH_NO_CHANGE &&
 	    rxfh->hfunc != ETH_RSS_HASH_TOP) {
@@ -481,6 +484,8 @@ static int idpf_set_rxfh(struct net_device *netdev,
 			rss_data->rss_lut[lut] = rxfh->indir[lut];
 	}
 
+	if (np->state != __IDPF_VPORT_UP)
+		goto unlock_mutex;
 	err = idpf_config_rss(vport);
 
 unlock_mutex:
-- 
2.43.0

