Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8AD24A8C9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 23:59:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D18CE87CB9;
	Wed, 19 Aug 2020 21:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uB9Vj3DjUS8C; Wed, 19 Aug 2020 21:59:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C15A387CA2;
	Wed, 19 Aug 2020 21:59:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 670F51BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5A544226A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 11-xiT0u-98G for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Aug 2020 21:58:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 2F955226B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 21:58:55 +0000 (UTC)
IronPort-SDR: VdOyoCk0LvIGgWDcvdyYpPeugXbO2417FB0wn8pp1dvBOuEJ8e4vvPvOd/C4RUakykJ86UrS2o
 uaDHxv6x02pw==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="216734397"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="216734397"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 14:58:53 -0700
IronPort-SDR: SXT2IZtFx3WBVWdzcx8LqoMWpFhsHie1L9LaFYvnidm13qXrhooTOVbjofD9DBackoKlCYsynH
 7Q5xi6ar6f9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="329469950"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.33])
 by fmsmga002.fm.intel.com with ESMTP; 19 Aug 2020 14:58:53 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Wed, 19 Aug 2020 14:58:38 -0700
Message-Id: <20200819215838.3834786-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.28.0.218.ge27853923b9d.dirty
In-Reply-To: <20200819215838.3834786-1-jacob.e.keller@intel.com>
References: <20200819215838.3834786-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 3/3] ice: refactor devlink_port to be
 per-VSI
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

Currently, the devlink_port structure is stored within the ice_pf. This
made sense because we create a single devlink_port for each PF. This
setup does not mesh with the abstractions in the driver very well, and
led to a flow where we accidentally call devlink_port_unregister twice
during error cleanup.

In particular, if devlink_port_register or devlink_port_unregister are
called twice, this leads to a kernel panic. This appears to occur during
some possible flows while cleaning up from a failure during driver
probe.

If register_netdev fails, then we will call devlink_port_unregister in
ice_cfg_netdev as it cleans up. Later, we again call
devlink_port_unregister since we assume that we must cleanup the port
that is associated with the PF structure.

This occurs because we cleanup the devlink_port for the main PF even
though it was not allocated. We allocated the port within a per-VSI
function for managing the main netdev, but did not release the port when
cleaning up that VSI, the allocation and destruction are not aligned.

Instead of attempting to manage the devlink_port as part of the PF
structure, manage it as part of the PF VSI. Doing this has advantages,
as we can match the de-allocation of the devlink_port with the
unregister_netdev associated with the main PF VSI.

Moving the port to the VSI is preferable as it paves the way for
handling devlink ports allocated for other purposes such as SR-IOV VFs.

Since we're changing up how we allocate the devlink_port, also change
the indexing. Originally, we indexed the port using the PF id number.
This came from an old goal of sharing a devlink for each physical
function. Managing devlink instances across multiple function drivers is
not workable. Instead, lets set the port number to the logical port
number returned by firmware and set the index using the VSI index
(sometimes referred to as VSI handle).

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  7 +--
 drivers/net/ethernet/intel/ice/ice_devlink.c | 54 ++++++++++++--------
 drivers/net/ethernet/intel/ice/ice_devlink.h |  4 +-
 drivers/net/ethernet/intel/ice/ice_lib.c     |  5 +-
 drivers/net/ethernet/intel/ice/ice_main.c    |  8 ++-
 5 files changed, 45 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index fe140ff38f74..7505ccd5f2d9 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -284,6 +284,10 @@ struct ice_vsi {
 	spinlock_t arfs_lock;	/* protects aRFS hash table and filter state */
 	atomic_t *arfs_last_fltr_id;
 
+	/* devlink port data */
+	struct devlink_port devlink_port;
+	bool devlink_port_registered;
+
 	u16 max_frame;
 	u16 rx_buf_len;
 
@@ -375,9 +379,6 @@ enum ice_pf_flags {
 struct ice_pf {
 	struct pci_dev *pdev;
 
-	/* devlink port data */
-	struct devlink_port devlink_port;
-
 	struct devlink_region *nvm_region;
 	struct devlink_region *devcaps_region;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index e1ec724c38c3..11b37fcdfd74 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -352,50 +352,60 @@ void ice_devlink_unregister(struct ice_pf *pf)
 }
 
 /**
- * ice_devlink_create_port - Create a devlink port for this PF
- * @pf: the PF to create a port for
+ * ice_devlink_create_port - Create a devlink port for this VSI
+ * @vsi: the VSI to create a port for
  *
- * Create and register a devlink_port for this PF. Note that although each
- * physical function is connected to a separate devlink instance, the port
- * will still be numbered according to the physical function ID.
+ * Create and register a devlink_port for this VSI.
  *
  * Return: zero on success or an error code on failure.
  */
-int ice_devlink_create_port(struct ice_pf *pf)
+int ice_devlink_create_port(struct ice_vsi *vsi)
 {
-	struct devlink *devlink = priv_to_devlink(pf);
-	struct ice_vsi *vsi = ice_get_main_vsi(pf);
-	struct device *dev = ice_pf_to_dev(pf);
 	struct devlink_port_attrs attrs = {};
+	struct ice_port_info *pi;
+	struct devlink *devlink;
+	struct device *dev;
+	struct ice_pf *pf;
 	int err;
 
-	if (!vsi) {
-		dev_err(dev, "%s: unable to find main VSI\n", __func__);
-		return -EIO;
-	}
+	/* Currently we only create devlink_port instances for PF VSIs */
+	if (vsi->type != ICE_VSI_PF)
+		return -EINVAL;
+
+	pf = vsi->back;
+	devlink = priv_to_devlink(pf);
+	dev = ice_pf_to_dev(pf);
+	pi = pf->hw.port_info;
 
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
-	attrs.phys.port_number = pf->hw.pf_id;
-	devlink_port_attrs_set(&pf->devlink_port, &attrs);
-	err = devlink_port_register(devlink, &pf->devlink_port, pf->hw.pf_id);
+	attrs.phys.port_number = pi->lport;
+	devlink_port_attrs_set(&vsi->devlink_port, &attrs);
+	err = devlink_port_register(devlink, &vsi->devlink_port, vsi->idx);
 	if (err) {
 		dev_err(dev, "devlink_port_register failed: %d\n", err);
 		return err;
 	}
 
+	vsi->devlink_port_registered = true;
+
 	return 0;
 }
 
 /**
- * ice_devlink_destroy_port - Destroy the devlink_port for this PF
- * @pf: the PF to cleanup
+ * ice_devlink_destroy_port - Destroy the devlink_port for this VSI
+ * @vsi: the VSI to cleanup
  *
- * Unregisters the devlink_port structure associated with this PF.
+ * Unregisters the devlink_port structure associated with this VSI.
  */
-void ice_devlink_destroy_port(struct ice_pf *pf)
+void ice_devlink_destroy_port(struct ice_vsi *vsi)
 {
-	devlink_port_type_clear(&pf->devlink_port);
-	devlink_port_unregister(&pf->devlink_port);
+	if (!vsi->devlink_port_registered)
+		return;
+
+	devlink_port_type_clear(&vsi->devlink_port);
+	devlink_port_unregister(&vsi->devlink_port);
+
+	vsi->devlink_port_registered = false;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.h b/drivers/net/ethernet/intel/ice/ice_devlink.h
index 6e806a08dc23..e07e74426bde 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.h
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.h
@@ -8,8 +8,8 @@ struct ice_pf *ice_allocate_pf(struct device *dev);
 
 int ice_devlink_register(struct ice_pf *pf);
 void ice_devlink_unregister(struct ice_pf *pf);
-int ice_devlink_create_port(struct ice_pf *pf);
-void ice_devlink_destroy_port(struct ice_pf *pf);
+int ice_devlink_create_port(struct ice_vsi *vsi);
+void ice_devlink_destroy_port(struct ice_vsi *vsi);
 
 void ice_devlink_init_regions(struct ice_pf *pf);
 void ice_devlink_destroy_regions(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index f2682776f8c8..c2da47907c5c 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -7,6 +7,7 @@
 #include "ice_lib.h"
 #include "ice_fltr.h"
 #include "ice_dcb_lib.h"
+#include "ice_devlink.h"
 
 /**
  * ice_vsi_type_str - maps VSI type enum to string equivalents
@@ -2604,8 +2605,10 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	 * PF that is running the work queue items currently. This is done to
 	 * avoid check_flush_dependency() warning on this wq
 	 */
-	if (vsi->netdev && !ice_is_reset_in_progress(pf->state))
+	if (vsi->netdev && !ice_is_reset_in_progress(pf->state)) {
 		unregister_netdev(vsi->netdev);
+		ice_devlink_destroy_port(vsi);
+	}
 
 	if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
 		ice_rss_clean(vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6b6e982e2658..7f50e7dbb1a0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2954,7 +2954,7 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	u8 mac_addr[ETH_ALEN];
 	int err;
 
-	err = ice_devlink_create_port(pf);
+	err = ice_devlink_create_port(vsi);
 	if (err)
 		return err;
 
@@ -2995,7 +2995,7 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	if (err)
 		goto err_free_netdev;
 
-	devlink_port_type_eth_set(&pf->devlink_port, vsi->netdev);
+	devlink_port_type_eth_set(&vsi->devlink_port, vsi->netdev);
 
 	netif_carrier_off(vsi->netdev);
 
@@ -3008,7 +3008,7 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
 	free_netdev(vsi->netdev);
 	vsi->netdev = NULL;
 err_destroy_devlink_port:
-	ice_devlink_destroy_port(pf);
+	ice_devlink_destroy_port(vsi);
 	return err;
 }
 
@@ -4250,7 +4250,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 err_send_version_unroll:
 	ice_vsi_release_all(pf);
 err_alloc_sw_unroll:
-	ice_devlink_destroy_port(pf);
 	set_bit(__ICE_SERVICE_DIS, pf->state);
 	set_bit(__ICE_DOWN, pf->state);
 	devm_kfree(dev, pf->first_sw);
@@ -4365,7 +4364,6 @@ static void ice_remove(struct pci_dev *pdev)
 	if (!ice_is_safe_mode(pf))
 		ice_remove_arfs(pf);
 	ice_setup_mc_magic_wake(pf);
-	ice_devlink_destroy_port(pf);
 	ice_vsi_release_all(pf);
 	ice_set_wake(pf);
 	ice_free_irq_msix_misc(pf);
-- 
2.28.0.218.ge27853923b9d.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
