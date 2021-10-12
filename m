Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9A8429A7B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Oct 2021 02:41:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD059608FC;
	Tue, 12 Oct 2021 00:41:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z5qi-B5P0_Gs; Tue, 12 Oct 2021 00:41:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A671608FB;
	Tue, 12 Oct 2021 00:41:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19E691BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F0C24019F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dgtADFc_UoD7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Oct 2021 00:41:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 011D94019E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Oct 2021 00:41:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="226961365"
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="226961365"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 17:41:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="524017492"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 17:41:45 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon, 11 Oct 2021 17:41:10 -0700
Message-Id: <20211012004113.1583133-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.31.1.331.gb0c09ab8796f
In-Reply-To: <20211012004113.1583133-1-jacob.e.keller@intel.com>
References: <20211012004113.1583133-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH v2 1/4] ice: devlink: add
 shadow-ram region to snapshot Shadow RAM
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

We have a region for reading the contents of the NVM flash as
a snapshot. This region does not allow reading the Shadow RAM, as it
always passes the FLASH_ONLY bit to the low level firmware interface.

Add a separate shadow-ram region which will allow snapshot of the
current contents of the Shadow RAM. This data is built from the NVM
contents but is distinct as the device builds up the Shadow RAM during
initialization, so being able to snapshot its contents can be useful
when attempting to debug flash related issues.

Fix the comment description of the nvm-flash region which incorrectly
stated that it filled the shadow-ram region, and add a comment
explaining that the nvm-flash region does not actually read the Shadow
RAM.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_devlink.c | 93 ++++++++++++++++++--
 2 files changed, 89 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e31dd474f148..e8a7b9daa40c 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -438,6 +438,7 @@ struct ice_pf {
 	struct pci_dev *pdev;
 
 	struct devlink_region *nvm_region;
+	struct devlink_region *sram_region;
 	struct devlink_region *devcaps_region;
 
 	/* devlink port data */
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 2d91886e1567..5dc3ee03d219 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -703,16 +703,20 @@ void ice_devlink_destroy_vf_port(struct ice_vf *vf)
 }
 
 /**
- * ice_devlink_nvm_snapshot - Capture a snapshot of the Shadow RAM contents
+ * ice_devlink_nvm_snapshot - Capture a snapshot of the NVM flash contents
  * @devlink: the devlink instance
  * @ops: the devlink region being snapshotted
  * @extack: extended ACK response structure
  * @data: on exit points to snapshot data buffer
  *
  * This function is called in response to the DEVLINK_CMD_REGION_TRIGGER for
- * the shadow-ram devlink region. It captures a snapshot of the shadow ram
- * contents. This snapshot can later be viewed via the devlink-region
- * interface.
+ * the nvm-flash devlink region. It captures a snapshot of the full NVM flash
+ * contents, including both banks of flash. This snapshot can later be viewed
+ * via the devlink-region interface.
+ *
+ * It captures the flash using the FLASH_ONLY bit set when reading via
+ * firmware, so it does not read the current Shadow RAM contents. For that,
+ * use the shadow-ram region.
  *
  * @returns zero on success, and updates the data pointer. Returns a non-zero
  * error code on failure.
@@ -759,6 +763,66 @@ static int ice_devlink_nvm_snapshot(struct devlink *devlink,
 	return 0;
 }
 
+/**
+ * ice_devlink_sram_snapshot - Capture a snapshot of the Shadow RAM contents
+ * @devlink: the devlink instance
+ * @ops: the devlink region being snapshotted
+ * @extack: extended ACK response structure
+ * @data: on exit points to snapshot data buffer
+ *
+ * This function is called in response to the DEVLINK_CMD_REGION_TRIGGER for
+ * the shadow-ram devlink region. It captures a snapshot of the shadow ram
+ * contents. This snapshot can later be viewed via the devlink-region
+ * interface.
+ *
+ * @returns zero on success, and updates the data pointer. Returns a non-zero
+ * error code on failure.
+ */
+static int
+ice_devlink_sram_snapshot(struct devlink *devlink,
+			  const struct devlink_region_ops __always_unused *ops,
+			  struct netlink_ext_ack *extack, u8 **data)
+{
+	struct ice_pf *pf = devlink_priv(devlink);
+	struct device *dev = ice_pf_to_dev(pf);
+	struct ice_hw *hw = &pf->hw;
+	u8 *sram_data;
+	u32 sram_size;
+	int err;
+
+	sram_size = hw->flash.sr_words * 2u;
+	sram_data = vzalloc(sram_size);
+	if (!sram_data)
+		return -ENOMEM;
+
+	err = ice_acquire_nvm(hw, ICE_RES_READ);
+	if (err) {
+		dev_dbg(dev, "ice_acquire_nvm failed, err %d aq_err %d\n",
+			err, hw->adminq.sq_last_status);
+		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire NVM semaphore");
+		vfree(sram_data);
+		return err;
+	}
+
+	/* Read from the Shadow RAM, rather than directly from NVM */
+	err = ice_read_flat_nvm(hw, 0, &sram_size, sram_data, true);
+	if (err) {
+		dev_dbg(dev, "ice_read_flat_nvm failed after reading %u bytes, err %d aq_err %d\n",
+			sram_size, err, hw->adminq.sq_last_status);
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Failed to read Shadow RAM contents");
+		ice_release_nvm(hw);
+		vfree(sram_data);
+		return err;
+	}
+
+	ice_release_nvm(hw);
+
+	*data = sram_data;
+
+	return 0;
+}
+
 /**
  * ice_devlink_devcaps_snapshot - Capture snapshot of device capabilities
  * @devlink: the devlink instance
@@ -809,6 +873,12 @@ static const struct devlink_region_ops ice_nvm_region_ops = {
 	.snapshot = ice_devlink_nvm_snapshot,
 };
 
+static const struct devlink_region_ops ice_sram_region_ops = {
+	.name = "shadow-ram",
+	.destructor = vfree,
+	.snapshot = ice_devlink_sram_snapshot,
+};
+
 static const struct devlink_region_ops ice_devcaps_region_ops = {
 	.name = "device-caps",
 	.destructor = vfree,
@@ -826,7 +896,7 @@ void ice_devlink_init_regions(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
 	struct device *dev = ice_pf_to_dev(pf);
-	u64 nvm_size;
+	u64 nvm_size, sram_size;
 
 	nvm_size = pf->hw.flash.flash_size;
 	pf->nvm_region = devlink_region_create(devlink, &ice_nvm_region_ops, 1,
@@ -837,6 +907,15 @@ void ice_devlink_init_regions(struct ice_pf *pf)
 		pf->nvm_region = NULL;
 	}
 
+	sram_size = pf->hw.flash.sr_words * 2u;
+	pf->sram_region = devlink_region_create(devlink, &ice_sram_region_ops,
+						1, sram_size);
+	if (IS_ERR(pf->sram_region)) {
+		dev_err(dev, "failed to create shadow-ram devlink region, err %ld\n",
+			PTR_ERR(pf->sram_region));
+		pf->sram_region = NULL;
+	}
+
 	pf->devcaps_region = devlink_region_create(devlink,
 						   &ice_devcaps_region_ops, 10,
 						   ICE_AQ_MAX_BUF_LEN);
@@ -857,6 +936,10 @@ void ice_devlink_destroy_regions(struct ice_pf *pf)
 {
 	if (pf->nvm_region)
 		devlink_region_destroy(pf->nvm_region);
+
+	if (pf->sram_region)
+		devlink_region_destroy(pf->sram_region);
+
 	if (pf->devcaps_region)
 		devlink_region_destroy(pf->devcaps_region);
 }
-- 
2.31.1.331.gb0c09ab8796f

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
