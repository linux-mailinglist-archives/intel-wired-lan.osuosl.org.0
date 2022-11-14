Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EB36280F7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 14:13:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3491660DF4;
	Mon, 14 Nov 2022 13:13:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3491660DF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668431591;
	bh=L4jJM2MVZd3le8jSuIE9gPJMtmrEh9jxkkg6knt1OYI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=grFTE4wlVR9BYZpqOhFFHKjPx5Mm9wjdRLWDpOBVHuV1aP4d6rs96H6Hv4Xo0S2o3
	 1kwJI5dQUEvWONnSZgnIUn9D4Ex0ZGTsEmSEfzxwa+aFzhYr0YTfjon4mIsCCDYVDb
	 yUg8i1uXqeOm+5A09q/r7UuWuWXqVit8fUdSdx73WOMD6AZDC9YYnn7lEE0AZczizB
	 6nOuM6juM/X385WmHYEHOLZPFuQa7YMn5w2PTa3CuXRXd1k4H2qataOLkuyaPAMfwf
	 OCa80q7JBkBuN+HuZb3O0wMOyfeTGnSHKSp0e2OkDOb4X31RY1gd3vPVRzw7l9gqJj
	 DLxhhhO6GQuzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xh356lIAhypY; Mon, 14 Nov 2022 13:13:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D930060DDF;
	Mon, 14 Nov 2022 13:13:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D930060DDF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 404EB1BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:13:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1BC66818D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:13:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BC66818D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MRZPmRXxivDG for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 13:13:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02AFF81886
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02AFF81886
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:13:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="311968103"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="311968103"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 05:13:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="616306114"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="616306114"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2022 05:12:51 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, edumazet@google.com
Date: Mon, 14 Nov 2022 13:57:55 +0100
Message-Id: <20221114125755.13659-14-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668431583; x=1699967583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dMZroapyEHbAR0dzHzMmRn1QLPwonaNJAXsRz1v3Etc=;
 b=TUNr5v5cwvQ4zJN4NPZ+7BES/Tf+LO8LCDsvz97o6JD9Yn90IpDaabPa
 fhGPa4TNzGjlAreEuIrGs2nJ/ql+tq+1ZBSrQIBq57QtYyVG8fOvxdLXf
 QH7sJ1LQ/+CsTQWf7MvJ2crYGlSpsW3xlIs0TDQoKBvjM6Y1Gf1UkAsFC
 t9kGSI9Eruko2eclIzxCI3GCs3G53UiAyDIy9kEWqLiNTwY3WRoi4QGy2
 Wunrc7dkFeGYdWACjkSQfFzYDdZWD0n3DkPuUC55jumf7im3xeAo1PkOB
 yi8LK2yktQTH74HNdHPh4r3NH4FzRUNKf4jU8pStliwOzYLyGNssCZofI
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TUNr5v5c
Subject: [Intel-wired-lan] [PATCH net-next 13/13] devlink,
 ice: add MSIX vectors as devlink resource
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
Cc: mustafa.ismail@intel.com, leszek.kaliszczuk@intel.com,
 Michal Kubiak <michal.kubiak@intel.com>, jiri@nvidia.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Kubiak <michal.kubiak@intel.com>

Implement devlink resource to control how many MSI-X vectors are
used for eth, VF and RDMA. Show misc MSI-X as read only.

This is first approach to control the mix of resources managed
by ice driver. This commit registers number of available MSI-X
as devlink resource and also add specific resources for eth, vf and RDMA.

Also, make those resources generic.

$ devlink resource show pci/0000:31:00.0
  name msix size 1024 occ 172 unit entry dpipe_tables none
    resources:
      name msix_misc size 4 unit entry dpipe_tables none
      name msix_eth size 92 occ 92 unit entry size_min 1 size_max
	128 size_gran 1 dpipe_tables none
      name msix_vf size 128 occ 0 unit entry size_min 0 size_max
	1020 size_gran 1 dpipe_tables none
      name msix_rdma size 76 occ 76 unit entry size_min 0 size_max
	132 size_gran 1 dpipe_tables none

example commands:
$ devlink resource set pci/0000:31:00.0 path msix/msix_eth size 16
$ devlink resource set pci/0000:31:00.0 path msix/msix_vf size 512
$ devlink dev reload pci/0000:31:00.0

Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
Co-developed-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 .../networking/devlink/devlink-resource.rst   |  10 ++
 drivers/net/ethernet/intel/ice/ice_devlink.c  | 160 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_devlink.h  |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |   5 +
 drivers/net/ethernet/intel/ice/ice_sriov.c    |   3 +-
 include/net/devlink.h                         |  14 ++
 6 files changed, 192 insertions(+), 2 deletions(-)

diff --git a/Documentation/networking/devlink/devlink-resource.rst b/Documentation/networking/devlink/devlink-resource.rst
index 3d5ae51e65a2..dcd3d124ebfb 100644
--- a/Documentation/networking/devlink/devlink-resource.rst
+++ b/Documentation/networking/devlink/devlink-resource.rst
@@ -36,6 +36,16 @@ device drivers and their description must be added to the following table:
      - Description
    * - ``physical_ports``
      - A limited capacity of physical ports that the switch ASIC can support
+   * - ``msix``
+     - Amount of MSIX interrupt vectors that the device can support
+   * - ``msix_misc``
+     - Amount of MSIX interrupt vectors that can be used for miscellaneous purposes
+   * - ``msix_eth``
+     - Amount of MSIX interrupt vectors that can be used by ethernet
+   * - ``msix_vf``
+     - Amount of MSIX interrupt vectors that can be used by virtual functions
+   * - ``msix_rdma``
+     - Amount of MSIX interrupt vectors that can be used by RDMA
 
 example usage
 -------------
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 8f73c4008a56..00f01cf84812 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -496,6 +496,27 @@ ice_devlink_reload_empr_finish(struct ice_pf *pf,
 	return 0;
 }
 
+static void ice_devlink_read_resources_size(struct ice_pf *pf)
+{
+	struct devlink *devlink = priv_to_devlink(pf);
+	u64 size_new;
+
+	devl_resource_size_get(devlink,
+			       DEVLINK_RESOURCE_GENERIC_ID_MSIX_ETH,
+			       &size_new);
+	pf->req_msix.eth = size_new;
+
+	devl_resource_size_get(devlink,
+			       DEVLINK_RESOURCE_GENERIC_ID_MSIX_VF,
+			       &size_new);
+	pf->msix.vf = size_new;
+
+	devl_resource_size_get(devlink,
+			       DEVLINK_RESOURCE_GENERIC_ID_MSIX_RDMA,
+			       &size_new);
+	pf->req_msix.rdma = size_new;
+}
+
 /**
  * ice_devlink_port_opt_speed_str - convert speed to a string
  * @speed: speed value
@@ -761,6 +782,7 @@ ice_devlink_reload_up(struct devlink *devlink,
 	switch (action) {
 	case DEVLINK_RELOAD_ACTION_DRIVER_REINIT:
 		*actions_performed = BIT(DEVLINK_RELOAD_ACTION_DRIVER_REINIT);
+		ice_devlink_read_resources_size(pf);
 		return ice_load(pf);
 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
 		*actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
@@ -955,6 +977,144 @@ void ice_devlink_unregister(struct ice_pf *pf)
 	devlink_unregister(priv_to_devlink(pf));
 }
 
+static u64 ice_devlink_res_msix_pf_occ_get(void *priv)
+{
+	struct ice_pf *pf = priv;
+
+	return pf->msix.eth;
+}
+
+static u64 ice_devlink_res_msix_vf_occ_get(void *priv)
+{
+	struct ice_pf *pf = priv;
+
+	return pf->vfs.num_msix_per * ice_get_num_vfs(pf);
+}
+
+static u64 ice_devlink_res_msix_rdma_occ_get(void *priv)
+{
+	struct ice_pf *pf = priv;
+
+	return pf->msix.rdma;
+}
+
+static u64 ice_devlink_res_msix_occ_get(void *priv)
+{
+	struct ice_pf *pf = priv;
+
+	return ice_devlink_res_msix_pf_occ_get(priv) +
+	       ice_devlink_res_msix_vf_occ_get(priv) +
+	       ice_devlink_res_msix_rdma_occ_get(priv) +
+	       pf->msix.misc;
+}
+
+int ice_devlink_register_resources(struct ice_pf *pf)
+{
+	struct devlink *devlink = priv_to_devlink(pf);
+	struct devlink_resource_size_params params;
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_msix *req = &pf->req_msix;
+	int err, max_pf_msix, max_rdma_msix;
+	const char *res_name;
+
+	max_pf_msix = min_t(int, num_online_cpus(), ICE_MAX_LG_RSS_QS);
+	max_rdma_msix = max_pf_msix + ICE_RDMA_NUM_AEQ_MSIX;
+
+	devlink_resource_size_params_init(&params, req->all, req->all, 1,
+					  DEVLINK_RESOURCE_UNIT_ENTRY);
+	res_name = DEVLINK_RESOURCE_GENERIC_NAME_MSIX;
+	err = devlink_resource_register(devlink, res_name, req->all,
+					DEVLINK_RESOURCE_GENERIC_ID_MSIX,
+					DEVLINK_RESOURCE_ID_PARENT_TOP,
+					&params);
+	if (err)
+		goto res_create_err;
+
+	devlink_resource_size_params_init(&params, req->misc, req->misc, 1,
+					  DEVLINK_RESOURCE_UNIT_ENTRY);
+	res_name = DEVLINK_RESOURCE_GENERIC_NAME_MSIX_MISC;
+	err = devlink_resource_register(devlink, res_name, req->misc,
+					DEVLINK_RESOURCE_GENERIC_ID_MSIX_MISC,
+					DEVLINK_RESOURCE_GENERIC_ID_MSIX,
+					&params);
+	if (err)
+		goto res_create_err;
+
+	devlink_resource_size_params_init(&params, ICE_MIN_LAN_TXRX_MSIX,
+					  max_pf_msix, 1,
+					  DEVLINK_RESOURCE_UNIT_ENTRY);
+	res_name = DEVLINK_RESOURCE_GENERIC_NAME_MSIX_ETH;
+	err = devlink_resource_register(devlink, res_name, req->eth,
+					DEVLINK_RESOURCE_GENERIC_ID_MSIX_ETH,
+					DEVLINK_RESOURCE_GENERIC_ID_MSIX,
+					&params);
+	if (err)
+		goto res_create_err;
+
+	devlink_resource_size_params_init(&params, 0, req->all - req->misc, 1,
+					  DEVLINK_RESOURCE_UNIT_ENTRY);
+
+	res_name = DEVLINK_RESOURCE_GENERIC_NAME_MSIX_VF;
+	err = devlink_resource_register(devlink, res_name, req->vf,
+					DEVLINK_RESOURCE_GENERIC_ID_MSIX_VF,
+					DEVLINK_RESOURCE_GENERIC_ID_MSIX,
+					&params);
+	if (err)
+		goto res_create_err;
+
+	devlink_resource_size_params_init(&params, ICE_MIN_RDMA_MSIX,
+					  max_rdma_msix, 1,
+					  DEVLINK_RESOURCE_UNIT_ENTRY);
+
+	res_name = DEVLINK_RESOURCE_GENERIC_NAME_MSIX_RDMA;
+	err = devlink_resource_register(devlink, res_name, req->rdma,
+					DEVLINK_RESOURCE_GENERIC_ID_MSIX_RDMA,
+					DEVLINK_RESOURCE_GENERIC_ID_MSIX,
+					&params);
+	if (err)
+		goto res_create_err;
+
+	devlink_resource_occ_get_register(devlink,
+					  DEVLINK_RESOURCE_GENERIC_ID_MSIX,
+					  ice_devlink_res_msix_occ_get, pf);
+
+	devlink_resource_occ_get_register(devlink,
+					  DEVLINK_RESOURCE_GENERIC_ID_MSIX_ETH,
+					  ice_devlink_res_msix_pf_occ_get, pf);
+
+	devlink_resource_occ_get_register(devlink,
+					  DEVLINK_RESOURCE_GENERIC_ID_MSIX_VF,
+					  ice_devlink_res_msix_vf_occ_get, pf);
+
+	devlink_resource_occ_get_register(devlink,
+					  DEVLINK_RESOURCE_GENERIC_ID_MSIX_RDMA,
+					  ice_devlink_res_msix_rdma_occ_get,
+					  pf);
+	return 0;
+
+res_create_err:
+	dev_err(dev, "Failed to register devlink resource: %s error: %pe\n",
+		res_name, ERR_PTR(err));
+	devlink_resources_unregister(devlink);
+
+	return err;
+}
+
+void ice_devlink_unregister_resources(struct ice_pf *pf)
+{
+	struct devlink *devlink = priv_to_devlink(pf);
+
+	devlink_resource_occ_get_unregister(devlink,
+					    DEVLINK_RESOURCE_GENERIC_ID_MSIX);
+	devlink_resource_occ_get_unregister(devlink,
+					    DEVLINK_RESOURCE_GENERIC_ID_MSIX_ETH);
+	devlink_resource_occ_get_unregister(devlink,
+					    DEVLINK_RESOURCE_GENERIC_ID_MSIX_VF);
+	devlink_resource_occ_get_unregister(devlink,
+					    DEVLINK_RESOURCE_GENERIC_ID_MSIX_RDMA);
+	devlink_resources_unregister(devlink);
+}
+
 /**
  * ice_devlink_set_switch_id - Set unique switch id based on pci dsn
  * @pf: the PF to create a devlink port for
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/ice_devlink.h
index fe006d9946f8..35233ea087fc 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.h
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.h
@@ -10,6 +10,8 @@ void ice_devlink_register(struct ice_pf *pf);
 void ice_devlink_unregister(struct ice_pf *pf);
 int ice_devlink_register_params(struct ice_pf *pf);
 void ice_devlink_unregister_params(struct ice_pf *pf);
+int ice_devlink_register_resources(struct ice_pf *pf);
+void ice_devlink_unregister_resources(struct ice_pf *pf);
 int ice_devlink_create_pf_port(struct ice_pf *pf);
 void ice_devlink_destroy_pf_port(struct ice_pf *pf);
 int ice_devlink_create_vf_port(struct ice_vf *vf);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a4c283bc8da0..ba6f93e7e640 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4970,6 +4970,10 @@ static int ice_init_devlink(struct ice_pf *pf)
 	if (err)
 		return err;
 
+	err = ice_devlink_register_resources(pf);
+	if (err)
+		return err;
+
 	ice_devlink_init_regions(pf);
 	ice_devlink_register(pf);
 
@@ -4980,6 +4984,7 @@ static void ice_deinit_devlink(struct ice_pf *pf)
 {
 	ice_devlink_unregister(pf);
 	ice_devlink_destroy_regions(pf);
+	ice_devlink_unregister_resources(pf);
 	ice_devlink_unregister_params(pf);
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 3ba1408c56a9..d42df5983494 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -518,8 +518,7 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
 		return -ENOSPC;
 
 	/* determine MSI-X resources per VF */
-	msix_avail_for_sriov = pf->hw.func_caps.common_cap.num_msix_vectors -
-		pf->irq_tracker->num_entries;
+	msix_avail_for_sriov = pf->msix.vf;
 	msix_avail_per_vf = msix_avail_for_sriov / num_vfs;
 	if (msix_avail_per_vf >= ICE_NUM_VF_MSIX_MED) {
 		num_msix_per_vf = ICE_NUM_VF_MSIX_MED;
diff --git a/include/net/devlink.h b/include/net/devlink.h
index 611a23a3deb2..a041c50f72c6 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -409,7 +409,21 @@ typedef u64 devlink_resource_occ_get_t(void *priv);
 
 #define DEVLINK_RESOURCE_ID_PARENT_TOP 0
 
+enum devlink_msix_resource_id {
+	/* generic resource for MSIX */
+	DEVLINK_RESOURCE_GENERIC_ID_MSIX = 1,
+	DEVLINK_RESOURCE_GENERIC_ID_MSIX_MISC,
+	DEVLINK_RESOURCE_GENERIC_ID_MSIX_ETH,
+	DEVLINK_RESOURCE_GENERIC_ID_MSIX_VF,
+	DEVLINK_RESOURCE_GENERIC_ID_MSIX_RDMA,
+};
+
 #define DEVLINK_RESOURCE_GENERIC_NAME_PORTS "physical_ports"
+#define DEVLINK_RESOURCE_GENERIC_NAME_MSIX "msix"
+#define DEVLINK_RESOURCE_GENERIC_NAME_MSIX_MISC "msix_misc"
+#define DEVLINK_RESOURCE_GENERIC_NAME_MSIX_ETH "msix_eth"
+#define DEVLINK_RESOURCE_GENERIC_NAME_MSIX_VF "msix_vf"
+#define DEVLINK_RESOURCE_GENERIC_NAME_MSIX_RDMA "msix_rdma"
 
 #define __DEVLINK_PARAM_MAX_STRING_VALUE 32
 enum devlink_param_type {
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
