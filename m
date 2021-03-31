Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 811AB35091E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:27:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25DC640EE1;
	Wed, 31 Mar 2021 21:27:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wttmFkvZHGZY; Wed, 31 Mar 2021 21:27:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7C8B40E92;
	Wed, 31 Mar 2021 21:27:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 890491BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:27:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF6DF406B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wf25D9DYij9J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:26:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 44DDA40E9A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:55 +0000 (UTC)
IronPort-SDR: aqVw2Ntxrgm5wVMUJl4MPcY9ddbApM134aEVvaDfrglfqddqI6akF34gwlDcY+jw0IVSE0SsGE
 +VyGpGaJn3Lw==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="256078730"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="256078730"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:53 -0700
IronPort-SDR: VQlpn6gXb38FzWoWzpTfpQfs067se6TYOXDb0slAYssBD7iaeHzuNDvaydJ/P9saKyUtupEr+K
 YnFAaPVM632w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="445819649"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2021 14:26:51 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 14:17:08 -0700
Message-Id: <20210331211708.55205-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S58 13/13] ice: reduce scope of variable
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

From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

The scope of this variable can be reduced so do that.

Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index ef2a91fc5472..96a2b319bf21 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -4375,7 +4375,6 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
  */
 void ice_restore_all_vfs_msi_state(struct pci_dev *pdev)
 {
-	struct pci_dev *vfdev;
 	u16 vf_id;
 	int pos;
 
@@ -4384,6 +4383,8 @@ void ice_restore_all_vfs_msi_state(struct pci_dev *pdev)
 
 	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_SRIOV);
 	if (pos) {
+		struct pci_dev *vfdev;
+
 		pci_read_config_word(pdev, pos + PCI_SRIOV_VF_DID,
 				     &vf_id);
 		vfdev = pci_get_device(pdev->vendor, vf_id, NULL);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
