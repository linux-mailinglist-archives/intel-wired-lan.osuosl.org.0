Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF1788B2CB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 22:30:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDDF681B3E;
	Mon, 25 Mar 2024 21:30:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oJolrj_Iom6J; Mon, 25 Mar 2024 21:30:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8FEFC817A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711402216;
	bh=y3nLlNh+jljU6SWCVbc8liE5U4jOwTwl/l8v/7agXKI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6N0OVPt3eiDmqeBO4ugw6JNDFgZRfeMKN1y+WP9cyg9ufXG2qmisWsS2mIZhF7kRt
	 Qn2Kr6gm6C2tKlN+uDq+SnX7LUM0HljhGzJ279yIzIpIIKNY9a1U7+VdQoWBV/Z6uT
	 ozZBTHuxYN9h+H8DxHQbFvjlcQgqj8BjCz1s0XRJApzVmkJmUmpOGo+db8zUj02kG5
	 0+xSAxHyKjYMbvgIN6TfyatJHqAk1TbvBfstsASS/+IR5WffgG1jfPyhaZy574dtSk
	 ii1i+hvm6dxLEeQ4SCIxeEuhyFYZyaVKFweP8EyZ3jOPVRT0TRxuIoVOTrPK0W5op1
	 wP5Bx/EvBGcgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FEFC817A6;
	Mon, 25 Mar 2024 21:30:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72E111BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 514E9406D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6kCONbreBubj for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 21:30:10 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD8B240745
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD8B240745
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD8B240745
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="17064555"
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="17064555"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 14:30:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="15713512"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 25 Mar 2024 14:30:06 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Mar 2024 22:34:33 +0100
Message-ID: <20240325213433.829161-4-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
References: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711402209; x=1742938209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=svMfBlLUAhgw33LS7DXsoVKFb0fJ5tSWXIWUQCBDyjs=;
 b=CVVDUOn2qb5z29xEGb1hfEuN751f9s4wAjRMNBG489BR6tvfDE8m9gG0
 vgJzKxVzvS4JQOF6DHggBnYSAzgnpQ896+/9nSApU0Bh/paZQ5i8rqK4N
 sm49cxIrFMjM2x0cTa4kPoLE069eGDkK6NUD29Oj9fNhrsIzf+VdHenVf
 cflsfGoSmrFQsWpfRErNzNjgEPRctXiqom2QqngVnFrNR2DPKSJ36ffl4
 HQPpOqRioQqBb21JGvrskf4E+JHI1N2aUglS+Qjofrc+dIBLI5EfImWHm
 /shAmMnYbefsuFro1biscbtARETvJzLvMJfID707mw7Wy/qUUkNEWOys4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CVVDUOn2
Subject: [Intel-wired-lan] [iwl-next v1 3/3] ice: hold devlink lock for
 whole init/cleanup
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Jiri Pirko <jiri@resnulli.us>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Simplify devlink lock code in driver by taking it for whole init/cleanup
path. Instead of calling devlink functions that taking lock call the
lockless versions.

Suggested-by: Jiri Pirko <jiri@resnulli.us>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../net/ethernet/intel/ice/devlink/devlink.c  | 32 +++++++++----------
 drivers/net/ethernet/intel/ice/ice_main.c     |  7 ++--
 2 files changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index 71c2f30984d8..8b57e455160d 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1287,7 +1287,7 @@ void ice_devlink_register(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
 
-	devlink_register(devlink);
+	devl_register(devlink);
 }
 
 /**
@@ -1298,21 +1298,21 @@ void ice_devlink_register(struct ice_pf *pf)
  */
 void ice_devlink_unregister(struct ice_pf *pf)
 {
-	devlink_unregister(priv_to_devlink(pf));
+	devl_unregister(priv_to_devlink(pf));
 }
 
 int ice_devlink_register_params(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
 
-	return devlink_params_register(devlink, ice_devlink_params,
-				       ARRAY_SIZE(ice_devlink_params));
+	return devl_params_register(devlink, ice_devlink_params,
+				    ARRAY_SIZE(ice_devlink_params));
 }
 
 void ice_devlink_unregister_params(struct ice_pf *pf)
 {
-	devlink_params_unregister(priv_to_devlink(pf), ice_devlink_params,
-				  ARRAY_SIZE(ice_devlink_params));
+	devl_params_unregister(priv_to_devlink(pf), ice_devlink_params,
+			       ARRAY_SIZE(ice_devlink_params));
 }
 
 #define ICE_DEVLINK_READ_BLK_SIZE (1024 * 1024)
@@ -1553,8 +1553,8 @@ void ice_devlink_init_regions(struct ice_pf *pf)
 	u64 nvm_size, sram_size;
 
 	nvm_size = pf->hw.flash.flash_size;
-	pf->nvm_region = devlink_region_create(devlink, &ice_nvm_region_ops, 1,
-					       nvm_size);
+	pf->nvm_region = devl_region_create(devlink, &ice_nvm_region_ops, 1,
+					    nvm_size);
 	if (IS_ERR(pf->nvm_region)) {
 		dev_err(dev, "failed to create NVM devlink region, err %ld\n",
 			PTR_ERR(pf->nvm_region));
@@ -1562,17 +1562,17 @@ void ice_devlink_init_regions(struct ice_pf *pf)
 	}
 
 	sram_size = pf->hw.flash.sr_words * 2u;
-	pf->sram_region = devlink_region_create(devlink, &ice_sram_region_ops,
-						1, sram_size);
+	pf->sram_region = devl_region_create(devlink, &ice_sram_region_ops,
+					     1, sram_size);
 	if (IS_ERR(pf->sram_region)) {
 		dev_err(dev, "failed to create shadow-ram devlink region, err %ld\n",
 			PTR_ERR(pf->sram_region));
 		pf->sram_region = NULL;
 	}
 
-	pf->devcaps_region = devlink_region_create(devlink,
-						   &ice_devcaps_region_ops, 10,
-						   ICE_AQ_MAX_BUF_LEN);
+	pf->devcaps_region = devl_region_create(devlink,
+						&ice_devcaps_region_ops, 10,
+						ICE_AQ_MAX_BUF_LEN);
 	if (IS_ERR(pf->devcaps_region)) {
 		dev_err(dev, "failed to create device-caps devlink region, err %ld\n",
 			PTR_ERR(pf->devcaps_region));
@@ -1589,11 +1589,11 @@ void ice_devlink_init_regions(struct ice_pf *pf)
 void ice_devlink_destroy_regions(struct ice_pf *pf)
 {
 	if (pf->nvm_region)
-		devlink_region_destroy(pf->nvm_region);
+		devl_region_destroy(pf->nvm_region);
 
 	if (pf->sram_region)
-		devlink_region_destroy(pf->sram_region);
+		devl_region_destroy(pf->sram_region);
 
 	if (pf->devcaps_region)
-		devlink_region_destroy(pf->devcaps_region);
+		devl_region_destroy(pf->devcaps_region);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b8b7a47c3b8a..31e7c74c289f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5180,21 +5180,20 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	devl_lock(priv_to_devlink(pf));
 	err = ice_load(pf);
-	devl_unlock(priv_to_devlink(pf));
 	if (err)
 		goto err_load;
 
 	err = ice_init_devlink(pf);
 	if (err)
 		goto err_init_devlink;
+	devl_unlock(priv_to_devlink(pf));
 
 	return 0;
 
 err_init_devlink:
-	devl_lock(priv_to_devlink(pf));
 	ice_unload(pf);
-	devl_unlock(priv_to_devlink(pf));
 err_load:
+	devl_unlock(priv_to_devlink(pf));
 	ice_deinit(pf);
 err_init:
 	pci_disable_device(pdev);
@@ -5291,9 +5290,9 @@ static void ice_remove(struct pci_dev *pdev)
 	if (!ice_is_safe_mode(pf))
 		ice_remove_arfs(pf);
 
+	devl_lock(priv_to_devlink(pf));
 	ice_deinit_devlink(pf);
 
-	devl_lock(priv_to_devlink(pf));
 	ice_unload(pf);
 	devl_unlock(priv_to_devlink(pf));
 
-- 
2.42.0

