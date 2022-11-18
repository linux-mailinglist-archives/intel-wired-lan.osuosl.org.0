Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 643E162EA7B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Nov 2022 01:44:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9974680C3E;
	Fri, 18 Nov 2022 00:43:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9974680C3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668732229;
	bh=cmJctxGXeY289I8CaOKqhXWXgOgvZmhBprUDwN5QYdw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UVmOFwRfjIGyg5KyPV4GdUdrk/G89MNWvhNxRkA+XvSRglimKQ0VSwdTTp2/GQ0tM
	 5Ius+F3gleyuua66eCYF+Oi6V7Q+StTvgQr6YN63f+8oWoDGyPMjn6WIvIx8cHtIBR
	 yiILrgwfSLsX7m0szCfgSTCWRu38qc4nlZzh25CwsdwtR1Qe/ohluqJTIYLLdxpOXI
	 Nn/cl6zU9PmJT13ppdMuVWszqEkVwyMa/0P5iy430BC/qqSQ08V8PtYMp9t1AAZYh0
	 1nlEZMsnn0ZsGbGRIDzPGNWY0uLq3CKLMMtY64ss06uYcZRnJ6tBcCCIFwAGzG/Gd2
	 ILAMwN8fu3q5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UkT3qz_6WKe8; Fri, 18 Nov 2022 00:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5417580FA4;
	Fri, 18 Nov 2022 00:43:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5417580FA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D350E1BF95E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 00:43:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ADB9180C8C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 00:43:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADB9180C8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9YbMWvpRn5D1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Nov 2022 00:43:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D246680C3E
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D246680C3E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Nov 2022 00:43:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="377285806"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="377285806"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 16:43:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="634251075"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="634251075"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.93.2])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 16:43:40 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Nov 2022 16:43:28 -0800
Message-Id: <20221118004328.578-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668732221; x=1700268221;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y1ecaqZx145TarMEhfubaRed+Wzhiy0pFdwb1VvVVh4=;
 b=k7Xg/TuOSWYg4twZhI/ZGCC/X50woLwqUDZ34lE6wbfz48EimwlGEVw4
 f/DEGtXQir1kt9aeurztPpnTXXHbu3nGJaF++MZw+uHG8M3u8csPUgIdz
 69pUxJudi1aek3cze1S98nUaYgZAFhhtbGWkGOVkLxh6kjUohDiTK72GX
 enQVE9li2VQlftX/8I76l2qB7tdIv4zPTQZAwsYzjMAp8E4VN/pw6fX1v
 2HQJJ5nGi2wRgWbjd0slUYAqo11lIav54GNmqqYcw5YPTezvf0xyJ9jCf
 aAwq8B/WauqvJWHISRPhMkV1hZoNgVdmsGMtBqHc93fx+Lxh3DbN4k10b
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k7Xg/TuO
Subject: [Intel-wired-lan] [PATCH net-next v3] ice: move devlink port
 creation/deletion
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

Commit a286ba738714 ("ice: reorder PF/representor devlink
port register/unregister flows") moved the code to create
and destroy the devlink PF port. This was fine, but created
a corner case issue in the case of ice_register_netdev()
failing. In that case, the driver would end up calling
ice_devlink_destroy_pf_port() twice.

Additionally, it makes no sense to tie creation of the devlink
PF port to the creation of the netdev so separate out the
code to create/destroy the devlink PF port from the netdev
code. This makes it a cleaner interface.

Note: This will conflict with net-next. Resolution:

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 60bd5ba1632b..9b4888d79972 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4680,7 +4680,6 @@ static int ice_register_netdev(struct ice_pf *pf)
        if (!vsi || !vsi->netdev)
                return -EIO;

-       SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
        err = register_netdev(vsi->netdev);
        if (err)
                goto err_register_netdev;
@@ -4708,6 +4707,7 @@ static int
 ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 {
        struct device *dev = &pdev->dev;
+       struct ice_vsi *vsi;
        struct ice_pf *pf;
        struct ice_hw *hw;
        int i, err;
@@ -5001,6 +5001,12 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
        if (err)
                goto err_create_pf_port;

+       vsi = ice_get_main_vsi(pf);
+       if (!vsi || !vsi->netdev)
+               goto err_netdev_reg;
+
+       SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
+
        err = ice_register_netdev(pf);
        if (err)
                goto err_netdev_reg;

Fixes: a286ba738714 ("ice: reorder PF/representor devlink port register/unregister flows")
Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
v3:
- update patch with resolution on conflict with net-next

v2:
- move Fixes above SOB line
---
 drivers/net/ethernet/intel/ice/ice_lib.c  |  3 ---
 drivers/net/ethernet/intel/ice/ice_main.c | 15 ++++++++-------
 2 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index a2cfa0c614ce..d80a56f9af81 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3070,9 +3070,6 @@ int ice_vsi_release(struct ice_vsi *vsi)
 		}
 	}
 
-	if (vsi->type == ICE_VSI_PF)
-		ice_devlink_destroy_pf_port(pf);
-
 	if (vsi->type == ICE_VSI_VF &&
 	    vsi->agg_node && vsi->agg_node->valid)
 		vsi->agg_node->num_vsis--;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 20a838e427e9..b7a303e91299 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4645,7 +4645,7 @@ static void ice_print_wake_reason(struct ice_pf *pf)
 }
 
 /**
- * ice_register_netdev - register netdev and devlink port
+ * ice_register_netdev - register netdev
  * @pf: pointer to the PF struct
  */
 static int ice_register_netdev(struct ice_pf *pf)
@@ -4657,10 +4657,6 @@ static int ice_register_netdev(struct ice_pf *pf)
 	if (!vsi || !vsi->netdev)
 		return -EIO;
 
-	err = ice_devlink_create_pf_port(pf);
-	if (err)
-		goto err_devlink_create;
-
 	SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
 	err = register_netdev(vsi->netdev);
 	if (err)
@@ -4672,8 +4668,6 @@ static int ice_register_netdev(struct ice_pf *pf)
 
 	return 0;
 err_register_netdev:
-	ice_devlink_destroy_pf_port(pf);
-err_devlink_create:
 	free_netdev(vsi->netdev);
 	vsi->netdev = NULL;
 	clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
@@ -4972,6 +4966,10 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	pcie_print_link_status(pf->pdev);
 
 probe_done:
+	err = ice_devlink_create_pf_port(pf);
+	if (err)
+		goto err_create_pf_port;
+
 	err = ice_register_netdev(pf);
 	if (err)
 		goto err_netdev_reg;
@@ -5009,6 +5007,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 err_devlink_reg_param:
 	ice_devlink_unregister_params(pf);
 err_netdev_reg:
+	ice_devlink_destroy_pf_port(pf);
+err_create_pf_port:
 err_send_version_unroll:
 	ice_vsi_release_all(pf);
 err_alloc_sw_unroll:
@@ -5134,6 +5134,7 @@ static void ice_remove(struct pci_dev *pdev)
 	ice_setup_mc_magic_wake(pf);
 	ice_vsi_release_all(pf);
 	mutex_destroy(&(&pf->hw)->fdir_fltr_lock);
+	ice_devlink_destroy_pf_port(pf);
 	ice_set_wake(pf);
 	ice_free_irq_msix_misc(pf);
 	ice_for_each_vsi(pf, i) {
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
