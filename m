Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B988529E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 08:31:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A46860B11;
	Tue, 13 Feb 2024 07:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Jk3ub9QuCKj; Tue, 13 Feb 2024 07:31:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEBD060AF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707809479;
	bh=GgXH3ild+7ajsLPNXJ0SKB1/eyB3Gb1V0kT+7aEkUco=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bO398Ouk9t8gC6/NalUoRWG4HnVXxv5wQ9Axw0SVeltWPr2CXW9mtmL74w/fQOUQD
	 dwCUH+5V2wliQvzXTAX24ykfThgd5edeYWXi8zaYG2RghiRX/xVPCtJj3yg1GD2S0M
	 FJhb4mFjVrJnLyq5ov77t7sY/U0e6W/vt1RgKKQ2SEhISFXSTtfdrXIoV9Bqa27SXX
	 1q2JmZX58dN3w4HkiPdMmQRCRCk11utbCZiL9hL6BhtY85WXvkv9F4XhUrmKusAH9i
	 H8UEmjhhdUhh08/TFdTWaUdBDOh9EE3RV8QtAptu/YxoPgrr+R+r/Dr5uSw4k9vN3P
	 fFh/RK/LH36FQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEBD060AF2;
	Tue, 13 Feb 2024 07:31:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7CB01BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B18AB8208B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VOKo2gMVNS2J for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 07:31:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E02E48208E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E02E48208E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E02E48208E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 07:31:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="19219910"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="19219910"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 23:31:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="2797556"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 12 Feb 2024 23:31:08 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Feb 2024 08:35:08 +0100
Message-ID: <20240213073509.77622-7-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
References: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707809473; x=1739345473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B55FnDYJcMX8cNbhPyRe0wM4Q8ZKYaV4fzW56DmFzB0=;
 b=eukhh4ke4j+RIR3eQahQApUwyi6r8TcVZXNQc8GKhhujKcnTSISSrEjF
 MyEGRcX5L9vVhK/42LarhtFTggsvffQpwOE7hoHvdNlUnoYfosjkZCt4l
 TOEC3JJs+jspuXIwfY67yEy2zwuaTYuM5mi3yEcuAFH1pwPci62Y9E9Is
 kp7XlbK4ATxK/0vPI0di66BnhnUK1Bm/SwvXsS9iWWn3pvlV2+jbqZTp0
 u/IZbiHtzzmwCgv5WXKlKViHyGyzRNXL5qQZwuNf6eVhuPN38/XKIeUqK
 mU68CkKfr0hMBCUPZJF9j6zPG352V6hfq0oPsMGn1pIwxdwf8lPnEGChk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eukhh4ke
Subject: [Intel-wired-lan] [iwl-next v1 6/7] ice: enable_rdma devlink param
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>, wojciech.drewek@intel.com,
 marcin.szycik@intel.com, netdev@vger.kernel.org, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement enable_rdma devlink parameter to allow user to turn RDMA
feature on and off.

It is useful when there is no enough interrupts and user doesn't need
RDMA feature.

Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 32 ++++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_lib.c     |  8 ++++-
 drivers/net/ethernet/intel/ice/ice_main.c    | 18 +++++------
 3 files changed, 45 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index b82ff9556a4b..4f048268db72 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -1675,6 +1675,19 @@ ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
 	return 0;
 }
 
+static int ice_devlink_enable_rdma_validate(struct devlink *devlink, u32 id,
+					    union devlink_param_value val,
+					    struct netlink_ext_ack *extack)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	bool new_state = val.vbool;
+
+	if (new_state && !test_bit(ICE_FLAG_RDMA_ENA, pf->flags))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 static const struct devlink_param ice_devlink_params[] = {
 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
 			      ice_devlink_enable_roce_get,
@@ -1700,6 +1713,8 @@ static const struct devlink_param ice_devlink_params[] = {
 			      ice_devlink_msix_min_pf_get,
 			      ice_devlink_msix_min_pf_set,
 			      ice_devlink_msix_min_pf_validate),
+	DEVLINK_PARAM_GENERIC(ENABLE_RDMA, BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
+			      NULL, NULL, ice_devlink_enable_rdma_validate),
 };
 
 static void ice_devlink_free(void *devlink_ptr)
@@ -1776,9 +1791,22 @@ ice_devlink_set_switch_id(struct ice_pf *pf, struct netdev_phys_item_id *ppid)
 int ice_devlink_register_params(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
+	union devlink_param_value value;
+	int err;
+
+	err = devlink_params_register(devlink, ice_devlink_params,
+				      ARRAY_SIZE(ice_devlink_params));
+	if (err)
+		return err;
 
-	return devlink_params_register(devlink, ice_devlink_params,
-				       ARRAY_SIZE(ice_devlink_params));
+	devl_lock(devlink);
+	value.vbool = test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
+	devl_param_driverinit_value_set(devlink,
+					DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
+					value);
+	devl_unlock(devlink);
+
+	return 0;
 }
 
 void ice_devlink_unregister_params(struct ice_pf *pf)
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a30d2d2b51c1..4d5c3d699044 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -829,7 +829,13 @@ bool ice_is_safe_mode(struct ice_pf *pf)
  */
 bool ice_is_rdma_ena(struct ice_pf *pf)
 {
-	return test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
+	union devlink_param_value value;
+	int err;
+
+	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
+					      DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
+					      &value);
+	return err ? false : value.vbool;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 824732f16112..4dd59d888ec7 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5177,23 +5177,21 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	if (err)
 		goto err_init;
 
+	err = ice_init_devlink(pf);
+	if (err)
+		goto err_init_devlink;
+
 	devl_lock(priv_to_devlink(pf));
 	err = ice_load(pf);
 	devl_unlock(priv_to_devlink(pf));
 	if (err)
 		goto err_load;
 
-	err = ice_init_devlink(pf);
-	if (err)
-		goto err_init_devlink;
-
 	return 0;
 
-err_init_devlink:
-	devl_lock(priv_to_devlink(pf));
-	ice_unload(pf);
-	devl_unlock(priv_to_devlink(pf));
 err_load:
+	ice_deinit_devlink(pf);
+err_init_devlink:
 	ice_deinit(pf);
 err_init:
 	pci_disable_device(pdev);
@@ -5290,12 +5288,12 @@ static void ice_remove(struct pci_dev *pdev)
 	if (!ice_is_safe_mode(pf))
 		ice_remove_arfs(pf);
 
-	ice_deinit_devlink(pf);
-
 	devl_lock(priv_to_devlink(pf));
 	ice_unload(pf);
 	devl_unlock(priv_to_devlink(pf));
 
+	ice_deinit_devlink(pf);
+
 	ice_deinit(pf);
 	ice_vsi_release_all(pf);
 
-- 
2.42.0

