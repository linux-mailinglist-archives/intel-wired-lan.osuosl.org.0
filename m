Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2820965F68B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 23:14:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8DB2541BEA;
	Thu,  5 Jan 2023 22:14:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DB2541BEA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672956872;
	bh=NUDnLXStrurayU0lTrb/ZouzpzG9lmTWhpJG4wJG/aQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eSf8mdNcHRp0i8lyG60uauRon1cy9WiFsI2oaBDF0UnS5At3kN3vUzjJIQbe6QI/i
	 UHeOjE0FWDmYXvDeyQe/EanpsLCPbrhwH0qA6VkWbcGjuEOqnc9k2tiCb/sSilekdR
	 6wi0frNRTdnBv3E2XJAX5CfS5vWV2eTJi01oBNxQKOPUdCZEfglGtqg0GX97toxStP
	 yaaljRWz8SiRzPjSgCk9UoNXB+3UCS/+QWW9pf0dAuceT3HLlEBCzzChQXoTHUOlUx
	 5phyl/NDqxFZ2PKLv2cDM2g6vjxZJLQCoisSpQifIvHgQBEAnCgydGTJEAjcEge85A
	 zM3uISQFJCX6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 99HKSzvhimVZ; Thu,  5 Jan 2023 22:14:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19F5441BE3;
	Thu,  5 Jan 2023 22:14:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19F5441BE3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 61B601BF295
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 22:14:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4611E82015
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 22:14:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4611E82015
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l5sg8VxWKxfy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 22:14:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD8F181FEE
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD8F181FEE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 22:14:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="320044006"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="320044006"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 14:14:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="718982724"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="718982724"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.84.239])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 14:14:23 -0800
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  5 Jan 2023 14:14:15 -0800
Message-Id: <20230105221415.15394-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672956864; x=1704492864;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=t3UgUoT4z+gtDsAc1QvN0cKyINQ0tT9uA6sM+s1H5zQ=;
 b=gljvC68Y0ioNWYsCCcbRaTGqMYgosk8gcrZhiJXWNyXPWJcfgCaAnI0Z
 sJv3tZXPlmYoe4vlRuxYqwrwqIGXM6X1+11nEgZd0uC+ALzeF3i87RlIT
 SJM7zed7ZiPGFZxrzX/8fQ6VwAV+PEZUfE3G17mll2eS8+8WFrQUCiKVs
 9xRcqIXXbwRWNxchdc3rVl8ZfKMidfiBkVny9xEYiKUcw2iaV/C0jInoN
 gpojrLO7AhQQBq9/AZkpewXM+kbXXAVbGBBxUp4rEJdY7WJTq3+8IllMe
 118IBipAYYyP6pLD1rXE/jezU6BC+CRwYG0X7CvvyHKa7NrXFiMSHym0S
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gljvC68Y
Subject: [Intel-wired-lan] [PATCH net v4] ice: move devlink port
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

Fixes: a286ba738714 ("ice: reorder PF/representor devlink port register/unregister flows")
Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  |  3 ---
 drivers/net/ethernet/intel/ice/ice_main.c | 25 +++++++++++++++--------
 2 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 22bcb414546a..6e30c176e6f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3235,9 +3235,6 @@ int ice_vsi_release(struct ice_vsi *vsi)
 		}
 	}
 
-	if (vsi->type == ICE_VSI_PF)
-		ice_devlink_destroy_pf_port(pf);
-
 	if (vsi->type == ICE_VSI_VF &&
 	    vsi->agg_node && vsi->agg_node->valid)
 		vsi->agg_node->num_vsis--;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a9a7f8b52140..237ede2cffb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4590,7 +4590,7 @@ static void ice_print_wake_reason(struct ice_pf *pf)
 }
 
 /**
- * ice_register_netdev - register netdev and devlink port
+ * ice_register_netdev - register netdev
  * @pf: pointer to the PF struct
  */
 static int ice_register_netdev(struct ice_pf *pf)
@@ -4602,11 +4602,6 @@ static int ice_register_netdev(struct ice_pf *pf)
 	if (!vsi || !vsi->netdev)
 		return -EIO;
 
-	err = ice_devlink_create_pf_port(pf);
-	if (err)
-		goto err_devlink_create;
-
-	SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
 	err = register_netdev(vsi->netdev);
 	if (err)
 		goto err_register_netdev;
@@ -4617,8 +4612,6 @@ static int ice_register_netdev(struct ice_pf *pf)
 
 	return 0;
 err_register_netdev:
-	ice_devlink_destroy_pf_port(pf);
-err_devlink_create:
 	free_netdev(vsi->netdev);
 	vsi->netdev = NULL;
 	clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
@@ -4636,6 +4629,7 @@ static int
 ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 {
 	struct device *dev = &pdev->dev;
+	struct ice_vsi *vsi;
 	struct ice_pf *pf;
 	struct ice_hw *hw;
 	int i, err;
@@ -4918,6 +4912,18 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	pcie_print_link_status(pf->pdev);
 
 probe_done:
+	err = ice_devlink_create_pf_port(pf);
+	if (err)
+		goto err_create_pf_port;
+
+	vsi = ice_get_main_vsi(pf);
+	if (!vsi || !vsi->netdev) {
+		err = -EINVAL;
+		goto err_netdev_reg;
+	}
+
+	SET_NETDEV_DEVLINK_PORT(vsi->netdev, &pf->devlink_port);
+
 	err = ice_register_netdev(pf);
 	if (err)
 		goto err_netdev_reg;
@@ -4955,6 +4961,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 err_devlink_reg_param:
 	ice_devlink_unregister_params(pf);
 err_netdev_reg:
+	ice_devlink_destroy_pf_port(pf);
+err_create_pf_port:
 err_send_version_unroll:
 	ice_vsi_release_all(pf);
 err_alloc_sw_unroll:
@@ -5083,6 +5091,7 @@ static void ice_remove(struct pci_dev *pdev)
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
