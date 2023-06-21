Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA99737E1D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 11:12:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3070E4182C;
	Wed, 21 Jun 2023 09:12:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3070E4182C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687338757;
	bh=n9zpdCjg90k9ptNRAFFOPAeGDLTYMiUa8MkTbDiF3rU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QO5+Boga8N17ZkbfVFC4IeV5B+wOPNfXdgnunUbS9rCtwgYSW1XlZFEQDZUAuBkTe
	 UnYsEfWGjoIlOuKYYfbOZYWLsNrGPqqIbizfqH1uY6W4geV4bPRQvdodJBVrvNnjsw
	 diTR8hO2u8cB1eZXPjPV1sgx4uy+D3qfF0HW98PzddSLLQhTVLSMCRyjlIzFOMDcit
	 Hsb6DNiyTMbR0HtgEAg3MjDd5tRpkZPRD8zEWeaQT5WQ/NUEp0NJFrqn2wpMFOPNbR
	 wh8KTKat7pAWoCZLshQGQ/2R4pMHZy1+2ehy+OuyqlZzG3VLlGlxaD+rEqIIBOEz8Z
	 /2sBXuHYNuifQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z9XfwPA_AoRt; Wed, 21 Jun 2023 09:12:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78ED1417FD;
	Wed, 21 Jun 2023 09:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78ED1417FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8680E1BF4E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F8D283280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F8D283280
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G2yVCci5um0R for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 09:12:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FA8183276
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FA8183276
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 09:12:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="357613818"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="357613818"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:12:21 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748571008"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="748571008"
Received: from dpdk-liulingy-2.sh.intel.com ([10.67.119.34])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2023 02:12:18 -0700
From: Lingyu Liu <lingyu.liu@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Jun 2023 09:11:12 +0000
Message-Id: <20230621091112.44945-16-lingyu.liu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621091112.44945-1-lingyu.liu@intel.com>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338742; x=1718874742;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K6lMIox5Mmn9ORm63u/ti9sc6LxjdYtJpuQFBWJ7ZNs=;
 b=dGNLcr6b0wQoL1GuOCysa3le+vyBRD38lNI9cqXiZA5QHY5saWZ0ITVn
 jVhbY8qIfzkY30K2qKWgTmBzZpL7Zli5kHty5Z88nknZPqDGBu2fXBZ47
 5+XSlUmJpojoP7l2DjpdYCD1Mm3LOIlZ4Nkn/EaTBTHal7Z1t2dD/6JO2
 gzp9Uf/kr2wrKr62aWTWYVa8d+i83OLpMir3hEob8M+aiqONU60wuugGf
 CyF9EizODIMIFV1EjJ5E1cAFhSr4xVra/SKljsfTMAovkkkyqDanZQAJH
 7uf0CZQ8vIMzh8IlRx0ok5Waj3fpn9k8I2i5vtgwbaKqNc2JsHi3X3cZr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dGNLcr6b
Subject: [Intel-wired-lan] [PATCH iwl-next V2 15/15] vfio/ice: support
 iommufd vfio compat mode
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Yahui Cao <yahui.cao@intel.com>

In iommufd vfio compat mode, vfio_dma_rw() will return failure, since
vfio_device_has_container() returns false and device->iommufd_access is
NULL.

Currently device->iommufd_access will not be created if vfio device is
backed by pci device. To support IOVA access, manually create
iommufd_access context by iommufd_access_create/attach() and access IOVA
by iommufd_access_rw(). And in order to minimize the iommufd_access's
impact, store the iommufd_access context in driver data, create it only
before loading the device state and destroy it once finishing loading
the device state.

To be compatible with legacy vfio, use vfio_device_has_container() to
check the vfio uAPI. If in legacy vfio mode, call vfio_dma_rw()
directly, otherwise call iommufd_access_rw().

Signed-off-by: Yahui Cao <yahui.cao@intel.com>
Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    |  23 +--
 drivers/vfio/pci/ice/ice_vfio_pci.c           | 171 +++++++++++++++++-
 include/linux/net/intel/ice_migration.h       |   4 +-
 3 files changed, 179 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 0bc897ab0dc2..c5bdfee1e3b0 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -440,7 +440,7 @@ ice_migration_restore_rx_head(struct ice_vf *vf,
 static int
 ice_migration_restore_tx_head(struct ice_vf *vf,
 			      struct ice_migration_dev_state *devstate,
-			      struct vfio_device *vdev)
+			      dma_rw_handler_t handler, void *data)
 {
 	struct ice_tx_desc *tx_desc_dummy, *tx_desc;
 	struct ice_vsi *vsi = ice_get_vf_vsi(vf);
@@ -509,15 +509,15 @@ ice_migration_restore_tx_head(struct ice_vf *vf,
 			ret = -EINVAL;
 			goto err;
 		}
-		ret = vfio_dma_rw(vdev, tx_ring->dma, (void *)tx_desc,
-				  tx_ring->count * sizeof(tx_desc[0]), false);
+		ret = handler(data, tx_ring->dma, (void *)tx_desc,
+			      tx_ring->count * sizeof(tx_desc[0]), false);
 		if (ret) {
 			dev_err(dev, "kvm read guest tx ring error: %d\n",
 				ret);
 			goto err;
 		}
-		ret = vfio_dma_rw(vdev, tx_ring->dma, (void *)tx_desc_dummy,
-				  tx_heads[i] * sizeof(tx_desc_dummy[0]), true);
+		ret = handler(data, tx_ring->dma, (void *)tx_desc_dummy,
+			      tx_heads[i] * sizeof(tx_desc_dummy[0]), true);
 		if (ret) {
 			dev_err(dev, "kvm write guest return error: %d\n",
 				ret);
@@ -546,8 +546,8 @@ ice_migration_restore_tx_head(struct ice_vf *vf,
 				vf->vf_id, i);
 			goto err;
 		}
-		ret = vfio_dma_rw(vdev, tx_ring->dma, (void *)tx_desc,
-				  tx_ring->count * sizeof(tx_desc[0]), true);
+		ret = handler(data, tx_ring->dma, (void *)tx_desc,
+			      tx_ring->count * sizeof(tx_desc[0]), true);
 		if (ret) {
 			dev_err(dev, "kvm write guest tx ring error: %d\n",
 				ret);
@@ -567,7 +567,8 @@ ice_migration_restore_tx_head(struct ice_vf *vf,
  * @opaque: pointer to VF handler in ice vdev
  * @buf: pointer to device state buf in migration buffer
  * @buf_sz: size of migration buffer
- * @vdev: pointer to vfio device
+ * @handler: dma_rw_handler
+ * @data: dma_rw_handler data
  *
  * This function uses the device state saved in migration buffer
  * to restore device state at dst VM
@@ -575,7 +576,7 @@ ice_migration_restore_tx_head(struct ice_vf *vf,
  * Return 0 for success, negative for error
  */
 int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz,
-				   struct vfio_device *vdev)
+				   dma_rw_handler_t handler, void *data)
 {
 	struct ice_migration_virtchnl_msg_slot *msg_slot;
 	struct ice_vf *vf = (struct ice_vf *)opaque;
@@ -587,7 +588,7 @@ int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz,
 	u64 slot_sz;
 	int ret = 0;
 
-	if (!buf || !vdev)
+	if (!buf)
 		return -EINVAL;
 
 	total_sz += sizeof(struct ice_migration_dev_state);
@@ -658,7 +659,7 @@ int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz,
 	 * After virtual channel replay completes, tx rings are enabled.
 	 * Then restore tx head for tx rings by injecting dummy packets.
 	 */
-	ret = ice_migration_restore_tx_head(vf, devstate, vdev);
+	ret = ice_migration_restore_tx_head(vf, devstate, handler, data);
 	if (ret) {
 		dev_err(dev, "failed to restore tx queue head\n");
 		goto err;
diff --git a/drivers/vfio/pci/ice/ice_vfio_pci.c b/drivers/vfio/pci/ice/ice_vfio_pci.c
index 389a2be41896..45b95d8eef5c 100644
--- a/drivers/vfio/pci/ice/ice_vfio_pci.c
+++ b/drivers/vfio/pci/ice/ice_vfio_pci.c
@@ -9,6 +9,9 @@
 #include <linux/net/intel/ice_migration.h>
 #include <linux/vfio_pci_core.h>
 #include <linux/anon_inodes.h>
+#include <linux/iommufd.h>
+
+MODULE_IMPORT_NS(IOMMUFD);
 
 #define DRIVER_DESC     "ICE VFIO PCI - User Level meta-driver for Intel E800 device family"
 
@@ -90,6 +93,10 @@ struct ice_vfio_pci_core_device {
 	u8 __iomem *io_base;
 	void *vf_handle;
 	bool is_dst;
+
+	u32 pt_id;
+	struct iommufd_ctx *ictx;
+	struct iommufd_access *user;
 };
 
 /**
@@ -176,6 +183,112 @@ ice_vfio_pci_load_regs(struct ice_vfio_pci_core_device *ice_vdev,
 		writel(regs->rx_tail[i], io_base + IAVF_QRX_TAIL1(i));
 }
 
+/**
+ * ice_vfio_pci_emulated_unmap - callback to unmap IOVA
+ * @data: function handler data
+ * @iova: I/O virtuall address
+ * @len: IOVA length
+ *
+ * This function is called when application are doing DMA unmap and in some
+ * cases driver needs to explicitly do some unmap ops if this device does not
+ * have backed iommu. Nothing is required here since this is pci baseed vfio
+ * device, which has backed iommu.
+ */
+static void
+ice_vfio_pci_emulated_unmap(void *data, unsigned long iova, unsigned long len)
+{
+}
+
+static const struct iommufd_access_ops ice_vfio_user_ops = {
+	.needs_pin_pages = 1,
+	.unmap = ice_vfio_pci_emulated_unmap,
+};
+
+/**
+ * ice_vfio_dma_rw - read/write function for device IOVA address space
+ * @data: function handler data
+ * @iova: I/O virtuall address
+ * @buf: buffer for read/write access
+ * @len: buffer length
+ * @write: true for write, false for read
+ *
+ * Read/write function for device IOVA access. Since vfio_dma_rw() may fail
+ * at iommufd vfio compatiable mode, we need runtime check what uAPI it is
+ * using and use corresponding access method for IOVA access.
+ *
+ * Return 0 for success, negative value for failure.
+ */
+static int ice_vfio_dma_rw(void *data, dma_addr_t iova,
+			   void *buf, size_t len, bool write)
+{
+	struct ice_vfio_pci_core_device *ice_vdev =
+			(struct ice_vfio_pci_core_device *)data;
+	struct vfio_device *vdev = &ice_vdev->core_device.vdev;
+	unsigned int flags = 0;
+
+	if (vfio_device_has_container(vdev))
+		return vfio_dma_rw(vdev, iova, buf, len, write);
+
+	if (!current->mm)
+		flags |= IOMMUFD_ACCESS_RW_KTHREAD;
+	if (write)
+		flags |= IOMMUFD_ACCESS_RW_WRITE;
+	return iommufd_access_rw(ice_vdev->user, iova, buf, len, flags);
+}
+
+/**
+ * ice_vfio_pci_load_state_init - VFIO device state reloading initialization
+ * @ice_vdev: pointer to ice vfio pci core device structure
+ *
+ * Initialization procedure before loading device state.
+ *
+ * Return 0 for success, negative value for failure.
+ */
+static int
+ice_vfio_pci_load_state_init(struct ice_vfio_pci_core_device *ice_vdev)
+{
+	struct device *dev = &ice_vdev->core_device.pdev->dev;
+	struct iommufd_access *user;
+	int pt_id = 0;
+	int ret;
+
+	if (vfio_device_has_container(&ice_vdev->core_device.vdev))
+		return 0;
+
+	user = iommufd_access_create(ice_vdev->ictx, &ice_vfio_user_ops,
+				     ice_vdev, &pt_id);
+	if (IS_ERR(user)) {
+		ret = PTR_ERR(user);
+		dev_err(dev, "iommufd_access_create() return %d", ret);
+		return ret;
+	}
+
+	ret = iommufd_access_attach(user, ice_vdev->pt_id);
+	if (ret) {
+		dev_err(dev, "iommufd_access_attach() return %d", ret);
+		iommufd_access_destroy(user);
+		return ret;
+	}
+
+	ice_vdev->user = user;
+	return 0;
+}
+
+/**
+ * ice_vfio_pci_load_state_exit - VFIO device state reloading exit
+ * @ice_vdev: pointer to ice vfio pci core device structure
+ *
+ * Exit procedure after loading device state.
+ */
+static void
+ice_vfio_pci_load_state_exit(struct ice_vfio_pci_core_device *ice_vdev)
+{
+	if (vfio_device_has_container(&ice_vdev->core_device.vdev))
+		return;
+
+	iommufd_access_destroy(ice_vdev->user);
+}
+
 /**
  * ice_vfio_pci_load_state - VFIO device state reloading
  * @ice_vdev: pointer to ice vfio pci core device structure
@@ -192,12 +305,19 @@ static int __must_check
 ice_vfio_pci_load_state(struct ice_vfio_pci_core_device *ice_vdev)
 {
 	struct ice_vfio_pci_migration_file *migf = ice_vdev->resuming_migf;
+	int ret;
 
+	ret = ice_vfio_pci_load_state_init(ice_vdev);
+	if (ret)
+		return ret;
 	ice_vfio_pci_load_regs(ice_vdev, &migf->mig_data.regs);
-	return ice_migration_restore_devstate(ice_vdev->vf_handle,
-					      migf->mig_data.dev_state,
-					      SZ_128K,
-					      &ice_vdev->core_device.vdev);
+	ret = ice_migration_restore_devstate(ice_vdev->vf_handle,
+					     migf->mig_data.dev_state,
+					     SZ_128K,
+					     ice_vfio_dma_rw, ice_vdev);
+	ice_vfio_pci_load_state_exit(ice_vdev);
+
+	return ret;
 }
 
 /**
@@ -744,6 +864,43 @@ static int ice_vfio_pci_core_init_dev(struct vfio_device *core_vdev)
 	return vfio_pci_core_init_dev(core_vdev);
 }
 
+static int ice_vfio_pci_attach_ioas(struct vfio_device *core_vdev, u32 *pt_id)
+{
+	struct ice_vfio_pci_core_device *ice_vdev = container_of(core_vdev,
+			struct ice_vfio_pci_core_device, core_device.vdev);
+
+	ice_vdev->pt_id = *pt_id;
+	return vfio_iommufd_physical_attach_ioas(core_vdev, pt_id);
+}
+
+static int ice_vfio_pci_bind(struct vfio_device *core_vdev,
+			     struct iommufd_ctx *ictx, u32 *out_device_id)
+{
+	struct ice_vfio_pci_core_device *ice_vdev = container_of(core_vdev,
+			struct ice_vfio_pci_core_device, core_device.vdev);
+	int ret;
+
+	ice_vdev->ictx = ictx;
+	iommufd_ctx_get(ictx);
+
+	ret = vfio_iommufd_physical_bind(core_vdev, ictx, out_device_id);
+	if (ret)
+		iommufd_ctx_put(ictx);
+
+	return ret;
+}
+
+static void ice_vfio_pci_unbind(struct vfio_device *core_vdev)
+{
+	struct ice_vfio_pci_core_device *ice_vdev = container_of(core_vdev,
+			struct ice_vfio_pci_core_device, core_device.vdev);
+
+	vfio_iommufd_physical_unbind(core_vdev);
+
+	iommufd_ctx_put(ice_vdev->ictx);
+	ice_vdev->ictx = NULL;
+}
+
 static const struct vfio_device_ops ice_vfio_pci_ops = {
 	.name		= "ice-vfio-pci",
 	.init		= ice_vfio_pci_core_init_dev,
@@ -757,9 +914,9 @@ static const struct vfio_device_ops ice_vfio_pci_ops = {
 	.mmap		= vfio_pci_core_mmap,
 	.request	= vfio_pci_core_request,
 	.match		= vfio_pci_core_match,
-	.bind_iommufd	= vfio_iommufd_physical_bind,
-	.unbind_iommufd	= vfio_iommufd_physical_unbind,
-	.attach_ioas	= vfio_iommufd_physical_attach_ioas,
+	.bind_iommufd	= ice_vfio_pci_bind,
+	.unbind_iommufd	= ice_vfio_pci_unbind,
+	.attach_ioas	= ice_vfio_pci_attach_ioas,
 };
 
 /**
diff --git a/include/linux/net/intel/ice_migration.h b/include/linux/net/intel/ice_migration.h
index 45c3469df55d..f97ed6940afd 100644
--- a/include/linux/net/intel/ice_migration.h
+++ b/include/linux/net/intel/ice_migration.h
@@ -7,6 +7,8 @@
 
 #if IS_ENABLED(CONFIG_ICE_VFIO_PCI)
 
+typedef int (*dma_rw_handler_t)(void *data, dma_addr_t iova, void *buf,
+				size_t len, bool write);
 #define IAVF_QRX_TAIL_MAX 256
 #define QTX_HEAD_RESTORE_DELAY_MAX 100
 #define QTX_HEAD_RESTORE_DELAY_SLEEP_US_MIN 10
@@ -19,7 +21,7 @@ void ice_migration_uninit_vf(void *opaque);
 int ice_migration_suspend_vf(void *opaque, bool mig_dst);
 int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz);
 int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz,
-				   struct vfio_device *vdev);
+				   dma_rw_handler_t handler, void *data);
 
 #else
 static inline void *ice_migration_get_vf(struct pci_dev *vf_pdev)
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
