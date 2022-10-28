Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CC4611912
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Oct 2022 19:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD4C041570;
	Fri, 28 Oct 2022 17:16:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD4C041570
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666977395;
	bh=dSvr2ROG5YqaancEGRclwQdYzfwp28tvUBV0+67ltaU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rquETTeYlM2sxlsR7rrNmo2ge6Rtp3UHOON4soXk+UqKqngVhg+4hr5H1e2+Ab0Tw
	 Mrc4naK1oKjicQ+HFJQkdgSldquz1tLecrTudKVO2O6M7sO4ao/5SNsdMUdSP41SXk
	 GLCcTGy03zNRR4hQJzqOJ8EgeyVGe1leD/rbSpYw8D1uSDlhqa/uv/cFtXP8ndaP5P
	 WMYbGgA3GYwupHL3dyrHmWMSQrN3OqIfTgSAAwsWh1CIXUaxVu59Fl1l/8cSD9kPvs
	 NhaWSRYINVLIGIWUW7gxRYrmAkD0mlleFD/lNQoKEdaJTDt/LGbTGpCpVrUfM5B5Ru
	 VU3br5yRDHN6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e1VQtZOghUED; Fri, 28 Oct 2022 17:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7ED4A4155E;
	Fri, 28 Oct 2022 17:16:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7ED4A4155E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1B161BF296
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 17:16:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 899014155E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 17:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 899014155E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kVmEK0ejvTui for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Oct 2022 17:16:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A1E7409E7
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A1E7409E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Oct 2022 17:16:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="288258331"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="288258331"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 10:16:16 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="738183535"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="738183535"
Received: from pmstillw-desk1.amr.corp.intel.com ([10.212.20.92])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 10:16:15 -0700
From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 28 Oct 2022 10:16:09 -0700
Message-Id: <20221028171609.326-1-paul.m.stillwell.jr@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666977388; x=1698513388;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/Nfpe70CY4kfjgkJX6dbHjHCFHhjBloGb9G2g5CKkcI=;
 b=Sz/9lQb0O2kmuhjVNEhowefAq30hgyIUSYDaJNBYDbs0F9tyaapdN/Rt
 P47+ITvP042cKZO3yfP9J0B1wZjYLGYih72C+/VG9i0+vmiXZVeDy4YO2
 4jOvevTXnOrFCTtYXgn9XbS5+1clPdcjN5ifQshJyUjrXzsR+JkYqapWr
 ATmHPEv5uqh6sLZGFm6F66r94v/jw8kCorkeSUAHZWojHsZ77cBl7xOkJ
 3UsfY8lbGs0IzNEYwBUFwmoh53mD+nMFRyuE7qN53c3sZRbM02Uu1glkB
 50dkoJPoXUakysqMXaLjyLn/j5PWNMcDjTMGcGioUJtZ9yg4GDLdUlJ55
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sz/9lQb0
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: move devlink port
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
 drivers/net/ethernet/intel/ice/ice_main.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0f6718719453..910df8438726 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4599,10 +4599,6 @@ static int ice_register_netdev(struct ice_pf *pf)
 	if (!vsi || !vsi->netdev)
 		return -EIO;
 
-	err = ice_devlink_create_pf_port(pf);
-	if (err)
-		goto err_devlink_create;
-
 	err = register_netdev(vsi->netdev);
 	if (err)
 		goto err_register_netdev;
@@ -4615,8 +4611,6 @@ static int ice_register_netdev(struct ice_pf *pf)
 
 	return 0;
 err_register_netdev:
-	ice_devlink_destroy_pf_port(pf);
-err_devlink_create:
 	free_netdev(vsi->netdev);
 	vsi->netdev = NULL;
 	clear_bit(ICE_VSI_NETDEV_ALLOCD, vsi->state);
@@ -4909,6 +4903,10 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	pcie_print_link_status(pf->pdev);
 
 probe_done:
+	err = ice_devlink_create_pf_port(pf);
+	if (err)
+		goto err_create_pf_port;
+
 	err = ice_register_netdev(pf);
 	if (err)
 		goto err_netdev_reg;
@@ -4946,6 +4944,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 err_devlink_reg_param:
 	ice_devlink_unregister_params(pf);
 err_netdev_reg:
+	ice_devlink_destroy_pf_port(pf);
+err_create_pf_port:
 err_send_version_unroll:
 	ice_vsi_release_all(pf);
 err_alloc_sw_unroll:
@@ -5071,6 +5071,7 @@ static void ice_remove(struct pci_dev *pdev)
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
