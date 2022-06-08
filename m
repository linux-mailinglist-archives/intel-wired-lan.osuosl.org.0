Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8172542AC6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Jun 2022 11:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8AE660761;
	Wed,  8 Jun 2022 09:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uuUQfbQ6IoYx; Wed,  8 Jun 2022 09:08:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF4DA60746;
	Wed,  8 Jun 2022 09:08:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D64CF1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:08:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D084340B0F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ef2kGJRaVFMd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jun 2022 09:08:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F36AD4019C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jun 2022 09:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654679313; x=1686215313;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=shyzRlzoW3qLVqoyoD8B96ASjWuKlGRReGi64qcYm/U=;
 b=G6/tBnqkPleveVgRGE0JIe/jdVbwTyB7M/TuokCjuZ0rVUsgg91AhxZe
 pqmFeQl1aWolLKzsOkDeCJWIUiyOrxF6gd5DAORFfO2hJpJhMMDnlS6F+
 x5lvl6/b3dbJ9CGb+aSeS0sIW8MczalxlOkwo1PYWf1DNqJo3WS9Au+Fr
 3d8BeKfL0YabzVSMxYhMkt2jI77MHm99rqLr3+GZAfxKy+20vQ5sUE9MP
 qhOGGwUFVZ0WJcLW4lmkpLd5/T/XOikpWhTDWkohDHW4azeF61iwE9cBW
 T8yKorkfKxTIMS6tGjFWz6DI/BEwgBZVJrcfuMmA0CnmgZ/7OJYOviy+r Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="257258446"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="257258446"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 02:08:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="648502773"
Received: from s240.igk.intel.com (HELO localhost.localdomain)
 ([10.102.18.202])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jun 2022 02:08:31 -0700
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  8 Jun 2022 11:10:56 +0200
Message-Id: <20220608091056.394208-1-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix VF's MAC Address change
 on VM
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
Cc: Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Norbert Zulinski <norbertx.zulinski@intel.com>

Clear VF MAC from parent PF and remove VF filter from VSI when both
conditions are true:
-VIRTCHNL_VF_OFFLOAD_USO is not used
-VM MAC was not set from PF level

It affects older version of IAVF
and it allow them to change MAC Address on VM,
newer IAVF won't change their behaviour.

Previously it wasn't possible to change VF's MAC Address on VM
because there is flag on IAVF driver that won't allow to
change MAC Address if this address is given from PF driver.

Fixes: 155f0ac2c96b ("iavf: allow permanent MAC address to change")
Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 033ea71763e3..86b0f21287dc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2147,6 +2147,10 @@ static int i40e_vc_get_vf_resources_msg(struct i40e_vf *vf, u8 *msg)
 		/* VFs only use TC 0 */
 		vfres->vsi_res[0].qset_handle
 					  = le16_to_cpu(vsi->info.qs_handle[0]);
+		if (!(vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO) && !vf->pf_set_mac) {
+			i40e_del_mac_filter(vsi, vf->default_lan_addr.addr);
+			eth_zero_addr(vf->default_lan_addr.addr);
+		}
 		ether_addr_copy(vfres->vsi_res[0].default_mac_addr,
 				vf->default_lan_addr.addr);
 	}
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
