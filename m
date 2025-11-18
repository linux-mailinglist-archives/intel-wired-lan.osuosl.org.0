Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AFFC67415
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 05:30:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14D5A60EE0;
	Tue, 18 Nov 2025 04:30:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9PrVt4b8H9fx; Tue, 18 Nov 2025 04:30:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77D7F60ED8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763440211;
	bh=jLf49QQES8FKroHWj/JpqGo7Sy1rBQXCZd/EPQTt+eg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uqVYKgzh7Zjhww5haG4osYOrViViTJ827HT/sBIU9pj2tSidO1seLSgs3wI3RwBMI
	 JgxqWxPQhF1iX9acRna2ouwk2s15S5BXQaHGBzfepxTjpiCqw28aSKPz8B1ayPg+ix
	 N4XeWJPJo51fae7DluzIKeiltLHrTS+Y18HKtqleBBB3q6OOnnw1IHhBO/4HmkbibR
	 ltlUTC/qUO/zW+FdIlgz2Hl0hih6Vdjztx4bhMDYCiBWYHfEnonkG7lV1CknpuHwHQ
	 SyeXKoQSF8Cn6bLFC/L3oWeWVXD/spKBFUMoM89oRhx+r+DOU4J5bPTXMs6Q/1vAg7
	 Qh0PyS8BTAjcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77D7F60ED8;
	Tue, 18 Nov 2025 04:30:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C960D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 04:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19E5060EC5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 04:30:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qdllwr6XnBi1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 04:30:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=sreedevi.joshi@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 03C0D60A6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03C0D60A6D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 03C0D60A6D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 04:30:08 +0000 (UTC)
X-CSE-ConnectionGUID: vEG5NTm6SvmkVNSDhAvD5A==
X-CSE-MsgGUID: XcRIdblKTbu134nZD2FHvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="82843589"
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="82843589"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 20:23:02 -0800
X-CSE-ConnectionGUID: E5hzWeKSSMaFzSuyrrQQ+A==
X-CSE-MsgGUID: aBMBEefGTfewHrfumAhlow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,313,1754982000"; d="scan'208";a="191086482"
Received: from aus-labsrv3.an.intel.com ([10.123.116.23])
 by fmviesa009.fm.intel.com with ESMTP; 17 Nov 2025 20:23:01 -0800
From: Sreedevi Joshi <sreedevi.joshi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Sreedevi Joshi <sreedevi.joshi@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>
Date: Mon, 17 Nov 2025 22:22:27 -0600
Message-Id: <20251118042228.381667-3-sreedevi.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251118042228.381667-1-sreedevi.joshi@intel.com>
References: <20251118042228.381667-1-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763440209; x=1794976209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h8D1OMEO/b44JUjXd7SQW2NPCYE1/ueBzo0nde0BOmM=;
 b=VF46PfIMAuvV7ZfEu/bnq8vk7zRBHgUhD2nHveQOUOJWSI/LjH3vBPzx
 BqbvtvmZrYqjFDzfL2DczQLVtaln5Mf65YCoH0JcBtnwq6jepEnXOReR+
 reHqbqgEVkYhbphq3MvEjBVL9L3npbrAZipYWx+4h0CjVb5vNOCaenATB
 GMX7Kx5PSvh/AeK1si13gZE58x+l6W4hAO4/kxIBvC4Naw9gBpPye2D7N
 +2QNs0kb3MMqDSuIJCDdVNAfZQ9oHL2nkUY67VysXz1aE/EReEnLVBOao
 mTDgjCCZ8UqDTKW7q0inRRSzXePkXsgVeejiGJ5Q9OaInFNCFc6325WCi
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VF46PfIM
Subject: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: Fix RSS LUT
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
index 4c6e52253ae4..d9903a21972a 100644
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
+ * Returns 0 on success.
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
+			rxfh->indir[i] = (rxhash_ena) ? rss_data->rss_lut[i] : 0;
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

